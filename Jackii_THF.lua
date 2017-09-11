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

sets.JA['Conspirator'] = {body="Raider's Vest +2"}
sets.JA['Accomplice'] = {head="Raid. Bonnet +2"}
sets.JA['Collaborator'] = {head="Raid. Bonnet +2"}
sets.JA['Perfect Dodge'] = {hands="Plun. Armlets +1"}
sets.JA['Steal'] = {hands="Pill. Armlets +1",legs="Pill. Culottes +1",feet="Pill. Poulaines +1",ring2="Gorney Ring"}
sets.JA['Flee'] = {feet="Pill. Poulaines +1"}
sets.JA['Despoil'] = {legs="Raid. Culottes +2",feet="Raid. Poulaines +2"}
sets.JA['Mug'] = {head="Plun. Bonnet +1"}
sets.JA['Hide'] = {body="Pillager's Vest +1"}

--- ===============================
--- 	DT Sets
--- ===============================

  sets.DT = set_combine(sets.DT, sets.weapons, {
  })
  
 --[[ sets.Refresh = {
    body="Mekosu. Harness",
  }--]]
  
  sets.Movement = {
    feet="Jute Boots +1"
  }

--- ===============================
--- 	TP Sets
--- ===============================

  sets.DW['7'] = {
    waist="Reiki Yotai", -- DW +7
  }

  sets.TP.Max = set_combine(sets.TP.Max,{
    ammo="Yamarang",
    neck="Anu Torque",
	ear2="Sherida Earring",
    back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10',}}, -- DW +10
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
  hands="Plun. Armlets +1",
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
  --head="Pillager's Bonnet +2",
  back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
})

sets.WS_Weak = set_combine(sets.WS_Weak,{
  back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10',}},
})

sets.WS["Evisceration"] = set_combine(sets.WS_All,{
  ammo="Yetshila",
  --head="Adhemar Bonnet +1",
  body="Abnoba Kaftan",
  --hands="Adhemar Wristbands +1",
  ring1="Ramuh Ring +1",
  legs="Lustratio Subligar +1",
  feet="Lustratio Leggings +1",
})

sets.WS["Exenterator"] = set_combine(sets.WS_All,{
  ammo="Seething Bomblet +1",
  --head="Adhemar Bonnet +1",
  body={ name="Herculean Vest", augments={'Attack+21','"Triple Atk."+4','Accuracy+15',}},
  --hands="Adhemar Wristbands +1",
  ring1="Epona's Ring",
  legs="Samnuha Tights",
  feet={ name="Herculean Boots", augments={'Accuracy+15 Attack+15','"Triple Atk."+4','DEX+7','Attack+3',}},
})

sets.WS["Dancing Edge"] = set_combine(sets.WS_All,{
})

sets.WS["Shark Bite"] = set_combine(sets.WS_All,{
})

sets.WS["Mandalic Stab"] = set_combine(sets.WS_All,{
  ammo="Yetshila",
  --head="Adhemar Bonnet +1",
  neck="Caro Necklace",
  ear1="Ishvara Earring",
  body="Meg. Cuirie +2",
  --hands="Adhemar Wristbands +1",
  ring1="Ramuh Ring +1",
  waist="Grunfeld Rope",
  legs="Lustratio Subligar +1",
  feet="Lustratio Leggings +1"
})

sets.WS["Rudra's Storm"] = set_combine(sets.WS_All,{
  ammo="Yetshila",
  --head="Adhemar Bonnet +1",
  neck="Caro Necklace",
  ear1="Ishvara Earring",
  body="Meg. Cuirie +2",
  --hands="Adhemar Wristbands +1",
  ring1="Ramuh Ring +1",
  waist="Grunfeld Rope",
  legs="Lustratio Subligar +1",
  feet="Lustratio Leggings +1"
})

sets.WS["Mercy Stroke"] = set_combine(sets.WS_All,{
})
  
sets.WS.Ranged_All = set_combine(sets.WS.Ranged_All,{
  --head="Pillager's Bonnet +2",
  back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
})
	
sets.WS["Last Stand"] = set_combine(sets.WS.Ranged_All, {
  head="Meghanada Visor +2",
  neck="Fotia Gorget",
  ear1="Telos Earring",
  ear2="Moonshade Earring",
  ring1="Regal Ring",
  ring2="Dingir Ring",
  waist="Fotia Belt",
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