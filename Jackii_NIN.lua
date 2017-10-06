require('Jackii_LightDD')

--- Build Sets
function get_job_sets()
	get_base_sets()

	Macro_Book = 11
	Macro_Set = 2

	sets.weapons = {}
	set.proc_weapons = {}


--- ===============================
--- 	Job Abilities
--- ===============================


--- ===============================
--- 	DT Sets
--- ===============================

  sets.DT = set_combine(sets.DT, sets.weapons, {
  })
  
 --[[ sets.Refresh = {
    body="Mekosu. Harness",
  }--]]
  
  sets.Movement = {
    feet="Danzo Sune-Ate"
  }

--- ===============================
--- 	TP Sets
--- ===============================

  sets.DW[7] = {
    waist="Reiki Yotai", -- DW +7
  }
  
  sets.DW[12] = set_combine(sets.DW[7], {
    body="Adhemar Jacket" -- DW +5
  })

  sets.DW[17] = set_combine(sets.DW[12], {
    ear1="Suppanomimi", -- DW +5
  })
  
  sets.DW[22] = set_combine(sets.DW[17], {
    legs={name="Taeon Tights", augments={'Accuracy+25','"Dual Wield"+5','STR+5 AGI+5',}}, -- DW +5
  })
  
  sets.DW[26] = set_combine(sets.DW[22], {
    ear2="Eabani Earring", -- DW +4
  })
  
  sets.DW[35] = set_combine(sets.DW[26], {
    feet={name="Taeon Boots", augments={'Accuracy+20 Attack+20','"Dual Wield"+5','STR+7 DEX+7',}} -- DW +9
  })

  sets.TP.Max = set_combine(sets.TP.Max,{
    ammo="Seki Shuriken",
    neck="Erudition Necklace",
  })
  
  sets.Some_Acc = set_combine(sets.Some_Acc,{
    neck="Erudition Necklace",
	--ring1="Regal Ring",
  })
  
  sets.Full_Acc = set_combine(sets.Some_Acc,sets.Full_Acc,{
    ammo="Yamarang",
  })

--- ===============================
--- 	Defense Modes
--- ===============================

	--- Sacrifice some tiny DPS for some PDT
  sets.TP.PDT_Mix = set_combine(sets.TP.PDT_Mix,{
  })

--- ===============================
--- 	Ranged Attacks
--- ===============================

sets.Preshot = set_combine(sets.Preshot, {
})

sets.Midshot = set_combine(sets.Midshot, {
})

sets.Some_Ranged_Acc = set_combine(sets.Some_Ranged_Acc, {
})

sets.Full_Ranged_Acc = set_combine(sets.Full_Ranged_Acc, {
  ring1="Regal Ring",
  ring2="Cacoethic Ring +1",
})

--- ===============================
--- 	Magic
--- ===============================

sets.Magic_Acc = set_combine(sets.Magic_Acc, {
  --head="Hachiya Hatsu. +3",
  --back="Andartia's Mantle",  INT  macc   FC? maybe
  --feet="Hachiya Kyahan +3"
})

sets.MAB = set_combine(sets.MAB, {
})

sets.Quick_Magic = set_combine(sets.Quick_Magic, {
})

sets.Fast_Cast = set_combine(sets.Fast_Cast, {
})

--- ===============================
--- 	Weaponskills
--- ===============================
	
sets.WS_All = set_combine(sets.WS_All,{
  --head="Hachiya Hatsu. +3",
  ring1="Ilabrat Ring",
  ring2="Regal Ring",
  --legs="Hiza. Hizayoroi +2",
})

sets.WS_Weak = set_combine(sets.WS_Weak,{
})

sets.WS["Blade: Ten"] = set_combine(sets.WS_All,{
  ammo="Seething Bomblet +1",
  neck="Caro Necklace",
  waist="Grunfeld Rope",
  --back="Andartia's Mantle",    STR or DEX acc/atk  WSD
})

sets.WS["Blade: Metsu"] = set_combine(sets.WS_All,{
  --ammo="Jukukik Feather",
  --back="Andartia's Mantle",    DEX acc/atk  WSD
  --legs="Jokushu Haidate",
})

sets.WS["Blade: Hi"] = set_combine(sets.WS_All,{
  ammo="Yetshila",
  --body="Ken. Samue +1",
  --hands="Ryuo Tekko +1",
  --ring1="Begrudging Ring",
  --back="Andartia's Mantle",  AGI acc/atk  WSD
  waist="Windbuffet Belt +1",
  --legs="Ken. Hakama +1",
  --feet="Ken. Sune-Ate +1"
})

sets.WS["Blade: Shun"] = set_combine(sets.WS_All,{
  --ammo="Jukukik Feather",
  --head="Ken. Jinpachi +1",
  body="Adhemar Jacket",
  --hands="Ken. Tekko +1",
  --back="Andartia's Mantle",   DEX or STR acc/atk  Double attack
  --legs="Jokushu Haidate",
  --feet="Ken. Sune-Ate +1"
})

sets.WS["Blade: Kamu"] = set_combine(sets.WS_All,{
  ammo="Seething Bomblet +1"
  --back="Andartia's Mantle",
})

sets.WS["Blade: Chi"] = set_combine(sets.WS_All, sets.MAB, {
})

sets.WS["Blade: Yu"] = set_combine(sets.WS_All, sets.MAB,{
})
  
--- ===============================
--- 	Utility Modes
--- ===============================
--[[	Utility_Title = "Luzaf"
  Utility_Type = "Special"
  Utility_Set_Names = {"Off","On"}

	sets.Utility = {}
	sets.Utility[Utility_Title] = {}
	
	sets.Utility["Luzaf"]["On"] = {
    ring1="Luzaf's Ring"
	}

end
--]]

--- ===============================
--- 	Status Change Functions
--- ===============================

function job_specific_precast(spell)
    
    --[[if (Utility_Index > 1) then
      roll_set = set_combine(roll_set, sets.Utility[Utility_Title]["On"])
    end--]]
  if (spell.english == 'Aeolian Edge') then
    if ((spell.element == world.day_element) or (spell.element == world.weather_element)) then
      if (sets.Weather) then
        weather = sets.Weather
      elseif (sets.Obis) then
        weather = sets.Obis[spell.element]
      end
      
      if (sets.WS[spell.english]) then
        equip(set_combine(sets.WS[spell.english], weather))
      else
        equip(set_combine(sets.WS.Ranged_All, sets.MAB, weather))
      end
      
      return true
    else
      return false
    end
  else
    return false
	end
end
end