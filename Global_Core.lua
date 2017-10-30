include('organizer-lib')
require('Action_Reactions')

--- ===============================
--- 	Data
--- ===============================
require('data')

DW_Jobs = S{'THF','DNC','NIN','RDM','BLU', 'COR'}
TA_Jobs = S{'MNK','PUP','RUN'}
LightDD = S{'THF','DNC','NIN','RDM','BLU','MNK','PUP'}
HeavyDD = S{'WAR','DRK','DRG','SAM','PLD'}
Nuke = S{'BLM','GEO','SCH','BLU','RDM'}
Mage = S{'BLM','GEO','SCH','BLU','RDM','WHM','BRD','SMN'}
Backline_Mage = S{'BLM','GEO','SCH','WHM','BRD','SMN'}
Ranged = S{'RNG','COR','SAM','THF'}
Pet = S{'BST','PUP'}

Buff_Timers = T{}
Buff_Locks = T{}
Gear_Changing_Buffs = S{}
Main_Job = windower.ffxi.get_player().main_job
Sub_Job = windower.ffxi.get_player().sub_job
pet_engaged = false
casting_nuke = false
restrain_ws = false


-- ============================================
-- ==       SET COMPILATION FUNCTIONS        ==
-- ============================================

-- Sets initial sets to empty
-------------------------------------------
function initialize_sets()
  engaged_set = {}
  idle_set = {}
  sets.resting = {}
  sets.Town = {}

  PDT_Ring1 = {}
  PDT_Ring2 = {}
  MDT_Ring1 = {}
  MDT_Ring2 = {}
  Hybrid_DT_Ring1 = {}
  Hybrid_DT_Ring2 = {}

  sets.JA = {}
  sets.During_Buff = {}
  sets.precast = {}
  sets.midcast = {}
  sets.DT = {}
  sets.PDT = {}
  sets.MDT = {}
  sets.Regen = {}
  sets.Refresh = {}

  sets.TP = {}
  sets.TP.Defense = {}
  sets.TP.Accuracy = {}
  sets.TP.Haste = {}
  
  sets.DW = {}

  sets.TP.PDT_Mix = {}
  sets.Some_Acc = {}
  sets.Full_Acc = {}
  
  sets.RA = {}
  sets.RA.Accuracy = {}
  sets.Some_Ranged_Acc = {}
  sets.Full_Ranged_Acc = {}

  sets.WS = {}
  sets.WS_All = {}
  sets.WS.Accuracy = {}
  sets.WS.Restrained = {
    head=empty,
    neck=empty,
    ear1=empty,
    ear2=empty,
    body=empty,
    hands=empty,
    ring1=empty,
    ring2=empty,
    back=empty,
    waist=empty,
    legs=empty,
    feet=empty
  }
  
  sets.Ranged_WS = {}
  sets.Ranged_WS.Accuracy = {}
  sets.Ranged_WS.Restrained = {
    head=empty,
    neck=empty,
    ear1=empty,
    ear2=empty,
    body=empty,
    hands=empty,
    ring1=empty,
    ring2=empty,
    back=empty,
    waist=empty,
    legs=empty,
    feet=empty
  }

  sets.Quick_Magic = {}
  sets.Fast_Cast = {}
  sets.Conserve_MP = {}
  sets.Enhancing_Precast = {}
  sets.Healing_Precast = {}
  sets.MND = {}
  sets.Healing_Skill = {}
  sets.Enhancing_Skill = {}
  sets.Enhancing_Duration = {}
  sets.Enhancing_Bonus = {}
  sets.Cure_Potency = {}
  sets.Cure_Extras = {}
  sets.Magic_Acc = {}
  sets.Some_MAcc = {}
  sets.MAB = {}
  sets.MB = {}
  sets.Dark_Skill = {}
  sets.Enfeeble_Skill = {}
  sets.Divine_Skill = {}
  sets.Drain = {}
  sets.Utsusemi = {}
  sets.Received = {}

  sets.Pet = {}
  sets.Pet.DT = {}
  sets.Pet.TP = {}
  sets.Pet.TP_SomeAcc = {}
  sets.Pet.TP_FullAcc = {}

  sets.Idle = {}
  sets.Idle["Town"] = sets.Idle
  sets.Idle["Field"] = sets.Idle

  Utility_Title = "None"
  Utility_Type = "None"
  Utility_Set_Names = {"Off","On"}
  sets.Utility = {}
  sets.Utility[Utility_Title] = {}
  sets.Utility["None"]["Off"] = {}
  sets.Utility["None"]["On"] = {}
  
  Custom_Timers = {}
  ability_add_duration = 0
  
  if (pet.isvalid) then
    if (pet.status =='Engaged') then
      pet_engaged = true
    end
  end
  
  native_dw = calculate_native_dw()
end

-- Compiles TP sets based off the current Main/Sub Jobs
---------------------------------------------------------
function compile_sets()
  if (Pet[Main_Job]) then
    sets.TP.Base = set_combine(sets.TP.Base, sets.Pet.DT, sets.Pet.TP)
  else
    sets.Pet.TP = nil
  end

  sets.TP.Max = set_combine(sets.TP.Base, sets.TP.Max)

  if (HeavyDD[Main_Job]) then
    sets.TP.Max = set_combine(sets.TP.Max, sets.TP.Heavy)
  else
    sets.TP.Heavy = nil
  end
  
  if (DW_Jobs[Main_Job]) then
    if (not (HeavyDD[Main_Job] and (Main_Job ~= 'BST'))) then
      sets.TP.Max = set_combine(sets.TP.Max, sets.TP.DW)
    else
      sets.TP.DW = nil
    end
  else
    sets.TP.DW = nil
  end
  
  if (TA_Jobs[Main_Job] or (LightDD[Main_Job] and (not (DW_Jobs[Main_Job] or DW_Jobs[Sub_Job])))) then
    sets.TP.Max = set_combine(sets.TP.Max, sets.TP.TA)
  else
    sets.TP.TA = nil
  end
  
end


-- Finalizes our DT, TP, and magic sets after getting our job-specific gear
---------------------------------------------------------
function post_job_sets()
  sets.PDT = set_combine(sets.DT, sets.PDT, {ring1=PDT_Ring1, ring2=PDT_Ring2})
  sets.MDT = set_combine(sets.DT, sets.MDT, {ring1=MDT_Ring1, ring2=MDT_Ring2})
  
  sets.TP.Max = set_combine(sets.TP.Max, sets.weapons)
  
  sets.TP.Defense["Attack"] = set_combine(sets.TP.Max)
  sets.TP.Defense["Standard"] = set_combine(sets.TP.Max, sets.TP.PDT_Mix)
  sets.TP.Defense["PDT"] = set_combine(sets.TP.Max, sets.DT)
  sets.TP.Accuracy["Low"] = sets.TP.Max
  sets.TP.Accuracy["Some"] = set_combine(sets.TP.Accuracy["Low"], sets.Some_Acc)
  sets.TP.Accuracy["Full"] = set_combine(sets.TP.Accuracy["Some"], sets.Full_Acc)
  sets.RA.Accuracy["Low"] = sets.Midshot
  sets.RA.Accuracy["Some"] = set_combine(sets.RA.Accuracy["Low"], sets.Some_Ranged_Acc)
  sets.RA.Accuracy["Full"] = set_combine(sets.RA.Accuracy["Some"], sets.Full_Ranged_Acc)
  sets.WS.Accuracy["Low"] = sets.WS_All
  sets.WS.Accuracy["Some"] = set_combine(sets.WS.Accuracy["Low"], sets.Some_Acc)
  sets.WS.Accuracy["Full"] = set_combine(sets.WS.Accuracy["Some"], sets.Full_Acc)
  sets.Ranged_WS.Accuracy["Low"] = sets.WS.Ranged_All
  sets.Ranged_WS.Accuracy["Some"] = set_combine(sets.Ranged_WS.Accuracy["Low"], sets.Some_Ranged_Acc)
  sets.Ranged_WS.Accuracy["Full"] = set_combine(sets.Ranged_WS.Accuracy["Some"], sets.Full_Ranged_Acc)
  sets.precast["Enhancing"] = set_combine(sets.Fast_Cast, sets.Enhancing_Precast)
  sets.precast["Healing"] = set_combine(sets.Fast_Cast, sets.Healing_Precast)
	sets.midcast["Full_MAB"] = set_combine(sets.Magic_Acc, sets.MAB)
  sets.midcast["Some_MAcc"] = set_combine(sets.MAB, sets.Some_MAcc, sets.Magic_Acc)
  sets.midcast["Full_MAcc"] = sets.Magic_Acc
	sets.midcast["Enfeeble"] = set_combine(sets.MND, sets.Magic_Acc, sets.Enfeeble_Skill)
	sets.midcast["Divine"] = set_combine(sets.MND, sets.Magic_Acc, sets.Divine_Skill)
  sets.midcast["Cure"] = set_combine(sets.MND, sets.Healing_Skill, sets.Enmity, sets.Cure_Potency, sets.Cure_Extras)
	sets.midcast["Curaga"] = set_combine(sets.MND, sets.Enmity, sets.Cure_Potency, sets.Cure_Extras) 
	sets.midcast["Cursna"] = set_combine(sets.Fast_Cast, sets.Cursna)
  
  if (sets.Enhancing_Bonus["Regen"]) then
    sets.Enhancing_Bonus["Regen II"] = sets.Enhancing_Bonus["Regen"]
    sets.Enhancing_Bonus["Regen III"] = sets.Enhancing_Bonus["Regen"]
    sets.Enhancing_Bonus["Regen IV"] = sets.Enhancing_Bonus["Regen"]
    sets.Enhancing_Bonus["Regen V"] = sets.Enhancing_Bonus["Regen"]
  end
  if (sets.Enhancing_Bonus["Refresh"]) then
    sets.Enhancing_Bonus["Refresh II"] = sets.Enhancing_Bonus["Refresh"]
    sets.Enhancing_Bonus["Refresh III"] = sets.Enhancing_Bonus["Refresh"]
  end
end

--- ===============================
--- 	Status Change Functions
--- ===============================

function status_change(new,old)
  if (pet.isvalid and (pet.status =='Engaged')) then
    if (pet_engaged ~= true) then
      pet_engaged = true
      build_idle_set()
    end
  else
    pet_engaged = false
  end
  
	if new == 'Idle' then
		equip(idle_set)
    enable('main')
    enable('sub')
    enable('ranged')
  elseif new == 'Resting' then
    equip(sets.resting)
	elseif new == 'Engaged' then
		equip(engaged_set)
    disable('main')
    disable('sub')
    disable('ranged')
	end
end

function aftercast(spell)
  local processed = false
  if (casting_nuke) then
    casting_nuke = false
  end
  
  if (job_specific_aftercast ~= nil) then
    processed = job_specific_aftercast(spell)
  end
  
  if (processed == false) then
    if player.status=='Engaged' then
      equip(engaged_set)
    else
      equip(idle_set)
    end
  end
  
  if (Custom_Timers[spell.name]) then
    local duration = Custom_Timers[spell.name][1] + ability_add_duration
    send_command('timers create "'.. spell.name ..'" '.. duration)
    windower.send_command('wait '.. duration - 10 ..'; input /echo '.. spell.name ..': Will wear off within 0:10');
    windower.send_command('wait '.. duration - 5 ..'; input /echo '.. spell.name ..': Will wear off within 0:05');
  end
  ability_add_duration = 0
end

--- ===============================
--- 	Support Functions
--- ===============================


--- Puts together the engaged set based on current defense, accuracy, and Utility settings
function build_engaged_set()
  engaged_set = sets.TP.Max
  
  if Accuracy_Index > 1 then
    engaged_set = set_combine(engaged_set, sets.Some_Acc)
    if Accuracy_Index > 2 then
      
      engaged_set = set_combine(engaged_set, sets.Full_Acc)
    end
  else
    engaged_set = sets.TP.Defense[Defense_Name]
    local magic_haste = Magic_Haste
    local haste_set = tostring(magic_haste)
    if (sets.TP.Haste[haste_set] ~= nil) then
      -- If you're hard-defining equipment for specific haste values,
      -- we'll just assume that you know what you're doing.
      engaged_set = set_combine(engaged_set, sets.TP.Haste[haste_set])
    elseif (native_dw > 0) then
      -- Otherwise, let's see if you need some DW.
      local dw_set = get_dw_set(magic_haste)
      if (dw_set) then
        engaged_set = set_combine(engaged_set, dw_set)
      end
    end
  
  end
  
	if Defense_Index < 3 then
		if ((Utility_Index >= 2) and (Utility_Type == "Engaged")) then
			engaged_set = set_combine(engaged_set, sets.Utility[Utility_Title][Utility_Name])
		end
	else
    engaged_set = set_combine(engaged_set, get_DT_set())
	end
  
  if (pet_engaged) then
    engaged_set = set_combine(engaged_set, sets.Pet.DT)
    if (Accuracy_Index > 1) then
      if (Accuracy_Index > 2) then
        engaged_set = set_combine(engaged_set, sets.Pet.TP_FullAcc)
      else
        engaged_set = set_combine(engaged_set, sets.Pet.TP_SomeAcc)
      end
    else
      engaged_set = set_combine(engaged_set, sets.Pet.TP)
    end
  end
  
  if (job_specific_build_engaged ~= nil) then
    engaged_set = job_specific_build_engaged(engaged_set)
  end
  
  if ((Utility_Index < 2) or (Utility_Type ~= "Engaged")) then
    engaged_set = set_combine(engaged_set, sets.weapons)
  end
end

--- Determines which PDT/MDT set we should be wearing
function get_DT_set()
  DT_set = sets.DT
  if (DT_Index == 2) then
    DT_set = sets.MDT
  elseif (DT_Index == 3) then
    DT_set = sets.PDT
  end
  return DT_set
end

--- Puts together our idle set based on current HP and location settings
function build_idle_set()
  if (Mage[Main_Job] or (sets.Refresh ~= {})) then
    if (Defense_Index == 1) then
      idle_set = set_combine(sets.TP.Defense["Attack"], get_DT_set(), sets.Refresh)
    else
      idle_set = set_combine(sets.TP.Defense["Attack"], sets.Refresh, get_DT_set())
    end
  elseif (Pet[Main_Job]) then
    idle_set = set_combine(sets.TP.Defense["Attack"], sets.Pet.TP, sets.Pet.DT, get_DT_set())
  else
    idle_set = set_combine(sets.TP.Defense["Attack"], get_DT_set())
  end

	if Idle_Type == "Town" then
    if (sets.Town) then
      idle_set = set_combine(idle_set, sets.Town)
    end
    if ((world.area == "Western Adoulin") or (world.area == "Eastern Adoulin")) then
      idle_set = set_combine(idle_set, {body="Councilor's Garb"})
    end
	end
	
	if (sets.Movement) then
    if (Defense_Index == 1) then
      idle_set = set_combine(idle_set, sets.Movement)
    else
      idle_set = set_combine(idle_set, sets.Movement, get_DT_set())
    end
    end
	
  if ((Main_Job == "SMN") or (Sub_Job == "SMN")) then
    if (pet.isvalid) then
      if (sets.Perpetuation[pet.name]) then
        idle_set = set_combine(idle_set, sets.Perpetuation[pet.name])
      else
        idle_set = set_combine(idle_set, sets.Perpetuation_Cost)
      end
    end
  end
  
  if (pet_engaged) then
    if (Accuracy_Index > 1) then
      if (Accuracy_Index > 2) then
        idle_set = set_combine(idle_set, sets.Pet.DT, sets.Pet.TP_FullAcc)
      else
        idle_set = set_combine(idle_set, sets.Pet.DT, sets.Pet.TP_SomeAcc)
      end
    else
      idle_set = set_combine(idle_set, sets.Pet.DT, sets.Pet.TP)
    end
  end
  
	if ((Utility_Index >= 2) and (Utility_Type == "Idle")) then
		idle_set = set_combine(idle_set, sets.Utility[Utility_Title][Utility_Name])
	end
  
  if (job_specific_build_idle ~= nil) then
    idle_set = job_specific_build_idle(idle_set)
  end
end

--- Change our idle set depending on what zone we just entered
------------------------------------------------------------------------
function zone_change(new_id, old_id)
	old_idle = Idle_Type
	
  if (Warping_Ring_Equipped) then
    enable('ring1')
    Warping_Ring_Equipped = false
  end
  
	if (City_Areas[world.area]) then
		Idle_Type = "Town"
	else
		Idle_Type = "Field"
	end
	
	if (old_idle ~= Idle_Type) then
		build_idle_set()
  elseif (Idle_Type == "Town") then
    build_idle_set()
	end

  local player_tp = windower.ffxi.get_player().vitals.tp
  if (player_tp >= 1000) then
    idle_set.main = nil
    idle_set.sub = nil
    idle_set.ranged = nil
    idle_set.ammo = nil
  end
	equip(idle_set)
end

--- Change our engaged set depending on what status we have
function buff_change(name, gain)
	if (Buff_Timers[name]) then
		if gain then
			send_command('timers create "'.. buff ..'" '.. Buff_Timers[buff] ..' down')
		else
			send_command('timers delete "'.. buff ..'"')
			add_to_chat(123, buff ..': [OFF]')
    end
	end
  
  if ((name == 'Haste') or (name == 'March')) then
    Magic_Haste = calculate_haste()
    if (Display_Haste) then
      add_to_chat(160, 'Magic Haste: '.. Magic_Haste)
    end
    build_engaged_set()
    if (player.status == 'Engaged') then
      equip(engaged_set)
    end
  end

  if (sets.During_Buff[name]) then
    if (gain == false) then
      enable(Buff_Locks[name])
    end
  end

  if (Gear_Changing_Buffs[name]) then
	build_idle_set()
	build_engaged_set()
  end

	if (player.status == 'Engaged') then
		equip(engaged_set)
	elseif (player.status == 'Idle') then
		equip(idle_set)
	end
end

--- Calculates our current magic haste value
function calculate_haste()
  local magic_haste = 0
  if (buffactive[33]) then
    magic_haste = magic_haste + 150
  end
  if (buffactive['March']) then -- Assumes both marches at +5
    magic_haste = magic_haste + 320
  end
  if (buffactive[580]) then -- Geo Haste, assumes 900 skill, no Dunna
    magic_haste = magic_haste + 307
  end
  if (buffactive[604]) then -- Mighty Guard
    magic_haste = magic_haste + 150
  end
  
  if (magic_haste >= 448) then
    magic_haste = 448
  end
  
  return magic_haste
end

-- Calculates and returns our native dual wield value from our
-- main/sub jobs.
------------------------------------------------------------------------
function calculate_native_dw()
  local main_job_dw_values = {
    ['THF'] = 30, -- Assumes 1200 JP.
    ['BLU'] = 25, -- Assumes DW III from set spells.
    ['DNC'] = 35, -- Assumes 1200 JP.
    ['NIN'] = 35
  }
  local sub_job_dw_values = {
    ['DNC'] = 15,
    ['NIN'] = 25
  }
  local main_native_dw = main_job_dw_values[Main_Job] or 0
  local sub_native_dw = sub_job_dw_values[Sub_Job] or 0
  
  if (main_native_dw > sub_native_dw) then
    return main_native_dw
  else
    return sub_native_dw
  end
end

-- Calculates how much DW in equipment we need need based off our
-- main/sub job and current haste value.
------------------------------------------------------------------------
function calculate_needed_equipment_dw(magic_haste)
  -- We'll be assuming 25% gear haste. If this assumption is inaccurate,
  -- then you're doing something very weird, and probably wrong.
  local magic_haste = magic_haste or 0
  magic_haste = magic_haste / 1024
  local native_dw = calculate_native_dw()
  local needed_equipment_dw = ((1 - (0.2 / (1 - (magic_haste + .25)))) * 100) - native_dw
  return math.ceil(needed_equipment_dw)
end

-- Returns our DW set which best allows us to hit delay cap,
-- taking our current magic haste in account.
------------------------------------------------------------------------
function get_dw_set(magic_haste)
  local dw_set = nil
  local equipment_dw_values = {1, 6, 11, 21, 26, 31, 32, 35, 37, 39, 40, 41, 42, 44, 45, 46, 49, 52, 55, 57, 59, 64}
  local needed_equipment_dw = calculate_needed_equipment_dw(magic_haste)
  if (needed_equipment_dw > 0) then
    -- See if we have a set for exactly the amount we need
    if (sets.DW[needed_equipment_dw]) then
      dw_set = sets.DW[needed_equipment_dw]
    else
      -- Of course not, because that would have been too easy.
      local remaining_dw_needed = needed_equipment_dw
      local current_dw_checked_for = needed_equipment_dw
      -- We'll try going up to reach our needed DW first.
      while ((remaining_dw_needed >= 1) and (current_dw_checked_for <= 64)) do
        current_dw_checked_for = current_dw_checked_for + 1
        if (sets.DW[needed_equipment_dw]) then
          dw_set = sets.DW[needed_equipment_dw]
          remaining_dw_needed = needed_equipment_dw - current_dw_checked_for
        end
      end
      
      -- Did we fail to find a set which (almost) caps our delay?
      if (not (remaining_dw_needed <= 1)) then
        -- Okay, so we can't hit delay cap. But let's reduce our delay as much as we can.
        -- If we already have a set from our attempts going up, we should use it, otherwise...
        if (dw_set == nil) then
          -- We have to start going down.
          current_dw_checked_for = needed_equipment_dw
          while ((dw_set == nil) and (current_dw_checked_for > 0)) do
            current_dw_checked_for = current_dw_checked_for - 1
            if (sets.DW[current_dw_checked_for]) then
              dw_set = sets.DW[current_dw_checked_for]
            end
          end
        end
      end
    end
  end
  
  return dw_set
end

--- ===============================
--- 	Event Listerner Functions
--- ===============================


--- Change our idle/engaged sets based on current HPP
function hpp_change(new_hpp, old_hpp)
	current_defense_index = Defense_Index

  if (new_hpp > old_hpp) then
    if (new_hpp > 80) then
      Defense_Index = 1
      if (new_hpp == 100) then
        build_idle_set()
      end
    elseif (new_hpp > 60) then
      Defense_Index = 2
    end
  else
    if (new_hpp < 80) then
      Defense_Index = 2
    elseif (new_hpp < 40) then
      Defense_Index = 3
    end
  end

  if (Defense_Index ~= current_defense_index) then
    build_engaged_set()
    build_idle_set()
    if player.status=='Engaged' then
      equip(engaged_set)
    elseif player.status=='Idle' then
      equip(idle_set)
    end
  end
end

--- Handles changing accuracy, defense, and utility modes
function self_command(command)
  command_args = command:split(' ')
  command = command_args[1]
  
  if (job_specific_function) then
    command_handled = job_specific_function(command)
  end
  
  if (command_handled ~= true) then
    changed_equipment = false
    if command == 'equipset' then
      if player.status=='Engaged' then
        equip(engaged_set)
      else
        equip(idle_set)
      end
      
    --- Easily handles warping rings, auto-uses when timer is ready
    elseif command == 'ring' then
      local Ring_Name = Ring_Names[command_args[2]]
      if (Warping_Ring_Equipped) then
        send_command("@input /item '".. Ring_Name .."' <me>")
      else
        equip({ring1=Ring_Name})
        disable('ring1')
        Warping_Ring_Equipped = true
        add_to_chat(121, ' --- Initializing '.. Ring_Name ..' ---')
        send_command('@wait 10; gs c ring '.. command_args[2])
      end
    elseif command == 'kill' then
      Utility_Index = 1
      Utility_Name = Utility_Set_Names[Utility_Index]
      add_to_chat(121, '--- '.. Utility_Title ..' Mode: '.. Utility_Name ..' ---')
      changed_equipment = true
    elseif command == 'scprop' then
      local mob_id = command_args[2]
      local sc_prop_time = command_args[3]
      Enemy_SC_Props[mob_id] = false
    --- Our defense, accuracy, or Utility mode has changed.
    --- Rebuild idle/engaged sets and equip as appropriate.
    else
      if command == 'toggledef' then
        if (command_args[2] == 'onoff') then
          Defense_Index = Defense_Index - 2
        else
          Defense_Index = Defense_Index - 1
        end
        if (Defense_Index < 1) then Defense_Index = #Defense_Set_Names end
        Defense_Name = Defense_Set_Names[Defense_Index]
        add_to_chat(121, '--- Defense Mode: '.. Defense_Name ..' ---')
      elseif command == 'toggleacc' then
        Accuracy_Index = Accuracy_Index + 1
        if Accuracy_Index > #Accuracy_Set_Names then Accuracy_Index = 1 end
        Accuracy_Name = Accuracy_Set_Names[Accuracy_Index]
        add_to_chat(121, '--- Accuracy Mode: '.. Accuracy_Name ..' ---')
      elseif command == 'toggleutility' then
        Utility_Index = Utility_Index + 1
        if Utility_Index > #Utility_Set_Names then Utility_Index = 1 end
        Utility_Name = Utility_Set_Names[Utility_Index]
        add_to_chat(121, '--- '.. Utility_Title ..' Mode: '.. Utility_Name ..' ---')
      elseif command == 'toggledisplay' then
        if (Locked_Style) then
          send_command('@input /lockstyle off')
          Locked_Style = false
        else
          send_command('@input /lockstyleset '.. Macro_Book)
          Locked_Style = true
        end
      elseif command == 'lockstyle' then
        send_command('@input /lockstyleset '.. Macro_Book)
        Locked_Style = true
      elseif command == 'equipweps' then
        send_command('input /equip main "'.. sets.weapons.main ..'"; wait 1; input /equip sub "'.. sets.weapons.sub ..'"')
        Locked_Style = true
      elseif command == 'toggledt' then
        DT_Index = DT_Index + 1
        if DT_Index > #DT_Set_Names then DT_Index = 1 end
        DT_Name = DT_Set_Names[DT_Index]
        add_to_chat(121, '--- DT Mode: '.. DT_Name ..' ---')
      elseif command == 'restrainws' then
        if (restrain_ws) then
          restrain_ws = false
          add_to_chat(121, '--- Restrained WS: Off ---')
        else
          restrain_ws = true
          add_to_chat(121, '--- Restrained WS: On ---')
        end
      elseif command == 'displayhaste' then
        Display_Haste = (not Display_Haste)
        add_to_chat(121, '--- Display Haste: '.. tostring(Display_Haste) ..' ---')
      end
      
      changed_equipment = true
    end
    
    if (changed_equipment) then
      build_engaged_set()
      build_idle_set()
      
      if player.status=='Engaged' then
        equip(engaged_set)
      else
        equip(idle_set)
      end
    end
  end
end

-- == PRECASTS AND MIDCASTS
-- ===============================================

-- Actions for precast
--------------------------------------------
function precast(spell)
  local processed = false
  local precast = {}
  if (job_specific_precast) then
    processed = job_specific_precast(spell)
  end
  if (processed == false) then
    if (sets.During_Buff[spell.english]) then
      precast = sets.During_Buff[spell.english]
      local to_lock = sets.During_Buff[spell.english].lock
      Buff_Locks[spell.english] = to_lock
	  equip(precast)
      disable(to_lock)
    end
    
    if sets.JA[spell.english] then
      precast = sets.JA[spell.english]
    elseif (spell.type == "WeaponSkill") then
      if (not restrain_ws) then
        if sets.WS[spell.english] then 
          precast = set_combine(sets.WS_All, sets.WS[spell.english])
        else
          if (Ranged_WSes[spell.english]) then
            precast = sets.Ranged_WS.Accuracy[Accuracy_Name]
          else
            precast = sets.WS.Accuracy[Accuracy_Name]
          end
        end
      else
        if (Ranged_WSes[spell.english]) then
          precast = sets.Ranged_WS.Restrained
        else
          precast = sets.WS.Restrained
        end
      end
    elseif (spell.skill == 'Enhancing Magic') then
      precast = sets.precast["Enhancing"]
    elseif (spell.skill == 'Healing Magic') then
      precast = sets.precast["Healing"]
    elseif (string.find(spell.english,'Waltz') and sets.JA.Waltz) then
      precast = sets.JA.Waltz
    elseif (spell.action_type == "Magic") then
      if (spell.english == "Impact") then
        precast = set_combine(sets.Fast_Cast,{body="Twilight Cloak"})
      else
        precast = set_combine(sets.Fast_Cast, sets.Quick_Magic)
      end
    elseif (spell.action_type == "Ranged Attack") then
      precast = sets.Preshot
    end
    
    if (sets.precast[spell.name]) then
      precast = set_combine(precast, sets.precast[spell.name])
    end
    
    equip(precast)
  end
  if (Custom_Timers[spell.name]) then
    if (Custom_Timers[spell.name][2]) then
      for _,v in pairs(Custom_Timers[spell.name][2]) do
        if (buffactive[v]) then
          if (Duration_Extenders[v][1] == 'S') then
            ability_add_duration = ability_add_duration + Duration_Extenders[v][2]
          elseif (Duration_Extenders[v][1] == 'P') then
            ability_add_duration = ability_add_duration + (Custom_Timers[spell.name][1] * Duration_Extenders[v][2])
          end
        end
      end
    end
  end
end

-- Actions for midcast
--------------------------------------------
function midcast(spell,action)
  local processed = false
  local can_MB = false
  if (job_specific_midcast) then
    processed = job_specific_midcast(spell)
  end
  if (processed == false) then
    --- Automatically cancel certain buffs
    if ((spell.english == 'Utsusemi: Ichi') and (buffactive['Copy Image'] or buffactive['Copy Image (2)'])) then
      send_command("@wait 2.9; cancel 66; cancel 444")
    elseif (spell.english == 'Spectral Jig') then
      send_command('cancel 71;')
    end
    
    if (sets.midcast[spell.english]) then
      equip(sets.midcast[spell.english])
    elseif (string.find(spell.english,'Indi-')) then
      equip(sets.midcast['Geomancy'], sets.Indi)
    elseif (string.find(spell.english,'Geo-')) then
      equip(sets.midcast['Geomancy'], sets.Geo)
    elseif (spell.skill == 'Healing Magic') then
      if string.find(spell.english,'Cure') then
        equip(sets.midcast['Cure'])
      elseif string.find(spell.english,'Curaga') then
        equip(sets.midcast['Curaga'])
      elseif (Na_Spells[spell.english]) then
        if (spell.english == 'Cursna') then
          equip(sets.Cursna)
        else
          equip(set_combine(sets.Conserve_MP, sets.Fast_Cast))
        end
      elseif (string.find(spell.english,'raise') or (spell.english == 'Arise')) then
        equip(set_combine(sets.Conserve_MP, sets.Fast_Cast))
      end
    elseif spell.skill == 'Enfeebling Magic' then
      equip(sets.midcast['Enfeeble'])
    elseif spell.skill == 'Divine Magic' then
      equip(sets.midcast['Divine'])
    elseif (spell.skill == 'Enhancing Magic') then
      if (spell.english == 'Protectra V') then
        equip(sets.midcast['ProtectraV'])
      elseif (spell.english == 'Shellra V') then
        equip(sets.midcast['ShellraV'])
      elseif (spell.english == 'Erase') then
        equip(set_combine(sets.Conserve_MP, sets.Fast_Cast))
      else
        if (Teleport_Spells[spell.english]) then
          equip(set_combine(sets.Conserve_MP, sets.Fast_Cast))
        elseif (Enhancing_Skill_Spells[spell.english]) then
          if (Barelementals[spell.english]) then
            equip(set_combine(sets.Enhancing_Duration,sets.Enhancing_Skill,sets.midcast['Barele']))
          else
            equip(set_combine(sets.Enhancing_Duration,sets.Enhancing_Skill))
          end
        else
          equip(sets.Enhancing_Duration)
        end
        if (sets.Enhancing_Bonus[spell.english]) then
          equip(sets.Enhancing_Bonus[spell.english])
        end
      end
    elseif (spell.skill == 'Dark Magic') then
      if ((spell.english == "Stun") and (sets.Stun ~= nil)) then
        equip(sets.Stun)
      elseif (spell.english == "Impact") then
        equip(set_combine(sets.midcast['Full_MAcc'],{body="Twilight Cloak"}))
      elseif (string.find(spell.english,'Drain') or string.find(spell.english,'Aspir')) then
        equip(set_combine(sets.midcast['Full_MAcc'],sets.Dark_Skill,sets.Drain))
      elseif (spell.english == "Death") then
        equip(set_combine(sets.midcast['Full_MAB'], sets.Death))
      else
        equip(sets.Dark_Skill)
      end
    elseif ((spell.skill == 'Elemental Magic') or (spell.skill == 'Blue Magic')) then
      if (Elemental_Debuffs[spell]) then
        equip(sets.midcast['Full_MAcc'])
      else
		local nuke_set = build_nuke_set()
        equip(nuke_set)
      end
    elseif (spell.skill == 'Ninjutsu') then
      if ((spell.english == 'Utsusemi: Ichi') or (spell.english == 'Utsusemi: Ni') or (spell.english == 'Utsusemi: San')) then
        equip(sets.Utsusemi)
      elseif (NIN_Nukes[spell.english]) then
		local nuke_set = build_nuke_set()
        equip(nuke_set)
      elseif (NIN_Enfeebles[spell.english]) then
        if (sets.Ninjutsu_Enfeebles) then
          equip(sets.Ninjutsu_Enfeebles)
        else
          equip(sets.Magic_Acc)
        end
      end
    elseif (spell.action_type == 'Ranged Attack') then
      if (Accuracy_Index > 2) then
        equip(ssets.RA.Accuracy["Full"])
      elseif (Accuracy_Index > 1) then
        equip(sets.RA.Accuracy["Some"])
      else
        equip(sets.RA.Accuracy["Low"])
      end
    end
    
    -- Day/Weather Equipment Handling
    if ((spell.element == world.day_element) or (spell.element == world.weather_element)) then
      if ((string.find(spell.english,'Cure')) or (string.find(spell.english,'Curaga')) or
      (((spell.skill == 'Elemental Magic') or (spell.skill == 'Blue Magic')) and (not(Elemental_Debuffs[spell])))) then
        if (sets.Weather) then
          if (can_MB) then
            equip(set_combine(sets.Weather, sets.MB))
          else
            equip(sets.Weather)
          end
        end
        if (sets.Obis) then
          equip(sets.Obis[spell.element])
        end
        if (sets.Klimaform and (spell.element == world.weather_element) and buffactive['Klimaform']) then
          equip(sets.Klimaform)
        end
      end
    end
  end
end

-- Helper function to build and returns a set for nukes, regardless of spell type.
--------------------------------------------
function build_nuke_set()
	local nuke_set
	if (Accuracy_Index > 1) then
		nuke_set = sets.midcast['Some_MAcc']
	elseif (Accuracy_Index > 2) then
		nuke_set = sets.midcast['Full_MAcc']
	else
		nuke_set = sets.midcast['Full_MAB']
	end
        
	local mob = windower.ffxi.get_mob_by_target("<t>")
	if (mob) then
		casting_nuke = {}
		casting_nuke[1] = mob.id
		casting_nuke[2] = spell.element
		can_MB = check_MB_elements(mob.id, spell.element)
		if (can_MB) then
			add_to_chat(207, "Can MB. Putting on MB gear.")
			nuke_set = set_combine(nuke_set, sets.MB)
		end
	end

	if (Utility_Type == "Nuke") then
        nuke_set = set_combine(nuke_set, sets.Utility[Utility_Title][Utility_Name])
    end

	return nuke_set
end

-- ============================
-- PET STATUS CHANGES
-- ============================
function pet_status_change()
  if (pet.isvalid and pet.status =='Engaged') then
    if (pet_engaged ~= true) then
      pet_engaged = true
      build_idle_set()
      build_engaged_set()
    end
  elseif (pet_engaged == true) then
    pet_engaged = false
    build_idle_set()
    build_engaged_set()
  end
  
  if (player.status == 'Idle') then
    equip(idle_set)
  elseif (player.status == 'Engaged') then
    equip(engaged_set)
  end
end

function pet_aftercast()
  if (pet.isvalid and pet_engaged) then
    if (pet.status ~= 'Engaged') then
      pet_engaged = false
      build_idle_set()
      build_engaged_set()

      if (player.status == 'Idle') then
        equip(idle_set)
      elseif (player.status == 'Engaged') then
        equip(engaged_set)
      end
    end
  end
end

--- ===============================
--- 	On Load
--- ===============================

--- Initial gear setups and equips on load
function get_sets()
  if (base_sets) then
    base_sets()
  end
  compile_sets()
  get_job_sets()
  post_job_sets()
  
	if City_Areas[world.area] then
		Idle_Type = "Town"
	else
		Idle_Type = "Field"
	end
	build_engaged_set()
	build_idle_set()

	equip(idle_set)
	send_command('input /macro book '.. Macro_Book ..';wait .1;input /macro set '.. Macro_Set)
end

-- == INITIAL SETUP
-- =============================================================
--- Windower key and event bindings
send_command('unbind ^1')
send_command('unbind ^2')
send_command('unbind ^3')

--- CTRL= ^   ALT= !
send_command('bind !- gs c toggleacc')
send_command('bind != gs c toggledef cycle')
send_command('bind ^- gs c toggleutility')
send_command('bind ^= gs c toggledisplay')
send_command('bind ^d gs c toggledt')
send_command('bind ^w gs c ring Warp')
send_command('bind ^f1 gs c ring Holla')
send_command('bind ^f2 gs c ring Dem')
send_command('bind ^f3 gs c ring Mea')
send_command('bind f7 gs c toggledef onoff')
send_command('bind f9 gs c toggleacc')
send_command('bind f12 gs c restrainws')

windower.register_event('Zone change', zone_change)
---windower.register_event('hpp change', hpp_change)

--- Intial TP/Status Setup
Defense_Set_Names = {"Attack","Standard","DT"}
Accuracy_Set_Names = {"Low","Some","Full"}
DT_Set_Names = {"Hybrid","MDT","PDT"}

Defense_Index = 1
Accuracy_Index = 1
Utility_Index = 1
DT_Index = 1

Defense_Name = Defense_Set_Names[Defense_Index]
Accuracy_Name = Accuracy_Set_Names[Accuracy_Index]
Idle_Type = "Town"

Regen_Capped = false

Warp_Ring_Equipped = false
Locked_Style = false
Display_Haste = false
Magic_Haste = calculate_haste()

initialize_sets()