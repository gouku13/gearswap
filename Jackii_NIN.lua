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

  sets.DW['7'] = {
    waist="Reiki Yotai", -- DW +7
  }

  sets.TP.Max = set_combine(sets.TP.Max,{
    ammo="Yamarang",
    neck="Erudition Necklace",
  })

-- Adding more damage gear if we have higher magic haste.
-- Native DWs, assuming 1200 JP: (THF 30%) (NIN & DNC 35%) (COR/DNC 15%) (BLU 25%)
  sets.TP.Haste['150'] = { -- Either Haste I OR Mighty Guard. Need 67% total DW
    -- Each job needs: (THF 37%) (NIN & DNC 32%) (COR/DNC 52%) (BLU 42%)
  }
  sets.TP.Haste['300'] = set_combine(sets.TP.Haste['150'],{ -- Both Haste I AND Mighty Guard. Need 57% total DW
    -- Each job needs: (THF 27%) (NIN & DNC 22%) (COR/DNC 42%) (BLU 32%)
  })
  sets.TP.Haste['307'] = sets.TP.Haste['300']; -- Geo Haste at 900 skill. Only 1 DW difference from 300 MH.
  sets.TP.Haste['320'] = sets.TP.Haste['307'], { -- Both Marches at +5. Only 1 DW difference from 307 MH.
	body={ name="Herculean Vest", augments={'Attack+21','"Triple Atk."+4','Accuracy+15',}},
	feet={ name="Herculean Boots", augments={'Accuracy+15 Attack+15','"Triple Atk."+4','DEX+7','Attack+3',}},
  }
  sets.TP.Haste['448'] = set_combine(sets.TP.Haste['320'],{ -- Capped magic haste. Need 36% total DW.
    -- Each job needs: (THF 6%) (NIN & DNC 1%) (COR/DNC 21%) (BLU 11%)
  })
  
  sets.Some_Acc = set_combine(sets.Some_Acc,{
    --head="Skulker's Bonnet +1",
    neck="Erudition Necklace",
	--body="Pillager's Vest +2"
	--ring1="Regal Ring",
	--legs="Pill. Culottes +3",
  })
  
  sets.Full_Acc = set_combine(sets.Some_Acc,sets.Full_Acc,{
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