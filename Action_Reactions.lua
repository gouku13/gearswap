packets = require('packets')
res = require('resources')

Enemy_SC_Props = {}
Receiving_Spell_From = 0 -- Actor ID
Receiving_Spell_Gear = {} -- Gear locked while waiting for actor's midcast

-- Applies a skillchain effect for a mob
---------------------------------------------------------------------
function sc_prop(mob_id, skillchain_id)
  local skillchain = skillchains[skillchain_id]
  time = windower.ffxi.get_info().time
  Enemy_SC_Props[mob_id] = {}
  Enemy_SC_Props[mob_id]['sc_prop'] = skillchain
  Enemy_SC_Props[mob_id]['time'] = time
  coroutine.schedule(function() clear_prop(mob_id, time) end, 9)
  if (casting_nuke) then
    if (casting_nuke[1] == mob_id) then
      can_MB = check_MB_elements(mob_id, casting_nuke[2])
      if (can_MB) then
        --add_to_chat(207, "A MB window has opened. Switching to MB set.")
		local nuke_set = build_nuke_set(casting_nuke[2])
		equip(nuke_set)
      end
    end
  end
end

-- Clears a skillchain effect for a mob, but only if the call is
-- still current. Checks this by checking the time associated with
-- the table entry. If the slept coroutine call has the same time
-- as the entry, then we can clear the call. But if another SC
-- occurred and opened a newer window, the coroutine call will have
-- an older timestamp than the association in the table,
-- and thus, should be ignored. The newer courtine call will proc
-- at a later time to clear this newer window.
---------------------------------------------------------------------
function clear_prop(mob_id, time)
  if (Enemy_SC_Props[mob_id]['time']) then
    if (Enemy_SC_Props[mob_id]['time'] == time) then
      Enemy_SC_Props[mob_id] = {}
    end
  end
end

-- Checks to see if a spell element will MB on a mob_id, returning true or false
---------------------------------------------------------------------
function check_MB_elements(mob_id, element)
  local current_mob_sc_prop = Enemy_SC_Props[mob_id]
  
  if (current_mob_sc_prop) then
    local current_skillchain = Enemy_SC_Props[mob_id]['sc_prop']
    if (current_skillchain) then
      if (skillchain_MBs[current_skillchain][element]) then
        return true
      end
    end
  end
  return false
end

windower.register_event("action", function(action)
  local targets = action['targets']
  local actor_id = action['actor_id']
  local target_id = 0
  
  for index,value in pairs(targets) do
    target_id = value.id
    my_id = windower.ffxi.get_player().id
    
    if (Receiving_Spell_From == 0)then
      if (target_id == my_id) then
        -- Begin spell casting
        if (action.category == 8) then
          for _,actions_v in pairs(value.actions) do
            local spell = res.spells[actions_v.param]
            if (spell) then
              if (sets.Received[spell.english]) then
                -- Equip gear and lock the slots
                equip(sets.Received[spell.english])
                
                -- Disables the used slots
                for k,_ in pairs(sets.Received[spell.english]) do
                  disable(k) 
                end
                
                -- Put in a ticket for who we're waiting for, and what gear we locked
                Receiving_Spell_From = actor_id
                Receiving_Spell_Gear = sets.Received[spell.english]
              end
            end
          end

        end
        -- Fill this out with more stuff later
        -- If being targetted by offensive spell
      end
    elseif (actor_id == Receiving_Spell_From) then

      Receiving_Spell_From = 0
      
      -- Reenables the previously slots
      for k,_ in pairs(Receiving_Spell_Gear) do
        enable(k) 
      end
      
      Receiving_Spell_Gear = {}
      
      if (player.status == 'Idle') then
        equip(idle_set)
      elseif (player.status == 'Engaged') then
        equip(engaged_set)
      end
    end
    
    for _,v1 in pairs(value.actions) do
      local type = v1.message
      local add_effect_message = v1.add_effect_message
      
      if (type == 43) then
        Enemy_SC_Props[target_id] = {}
      end
      
      -- Skillchain: <skillchain>. <target> takes <number> points of damage.
      if ((add_effect_message >= 288) and (add_effect_message <= 301)) then
        sc_prop(target_id, add_effect_message - 287)
	  -- Skillchain: <skillchain>. <target> recovers <number> points of damage.
      elseif ((add_effect_message >= 385) and (add_effect_message <= 398)) then
        sc_prop(target_id, add_effect_message - 384)
	  -- Skillchain: <skillchain>. <target> takes <number> points of damage. (Umbra/Radiance)
      elseif ((add_effect_message == 767) or (add_effect_message == 768)) then
        sc_prop(target_id, add_effect_message - 752)
	  -- Skillchain: <skillchain>. <target> heals <number> points of damage. (Umbra/Radiance)
      elseif ((add_effect_message == 769) or (add_effect_message == 770)) then
        sc_prop(target_id, add_effect_message - 754)
      end
    end
  end
end)