require('Jackii_LightDD')

--- Build Sets
function get_job_sets()
	get_base_sets()

	Macro_Book = 11
	Macro_Set = 2

	sets.weapons = {main="Lionheart",sub="Refined Grip +1"}
	set.proc_weapons = {}


--- ===============================
--- 	Job Abilities
--- ===============================

sets.JA['Lunge'] = set_combine(sets.MAB,{
	left_ring="Fenrir ring +1",
	right_ring="Fenrir ring +1",
    })
sets.JA['Swipe'] = set_combine(sets.JA['Lunge'],{})
sets.JA['Vallation'] = set_combine(sets.Enmity,{body="Runeist Coat +1", back="Ogma's cape"})
sets.JA['Swordplay'] = set_combine(sets.Enmity,{hands="Futhark Mitons +1"})
sets.JA['Pflug'] = set_combine(sets.Enmity,{feet="Runeist Bottes +1"})
sets.JA['Valiance'] = set_combine(sets.Enmity,{body="Runeist Coat +1", back="Ogma's cape"})
sets.JA['Embolden'] = set_combine(sets.Enmity,{legs="Futhark Trousers +1"})
sets.JA['Gambit'] = set_combine(sets.Enmity,{hands="Runeist Mitons +1"})
sets.JA['Liement'] = set_combine(sets.Enmity,{body="Futhark Coat +1"})
sets.JA['One For All'] = set_combine(sets.Enmity)
sets.JA['Battuta'] = set_combine(sets.Enmity,{head="Fu. Bandeau +1"})
sets.JA['Rayke'] = set_combine(sets.Enmity,{feet="Futhark Boots +1"})
sets.JA['Elemental Sforzo'] = set_combine(sets.Enmity,{body="Futhark Coat +1"})
sets.JA['Vivacious Pulse'] = set_combine(sets.Enmity,{head="Erilaz Galea +1"})

sets.JA['Provoke'] = set_combine(sets.Enmity)
sets.JA['Warcry'] = set_combine(sets.Enmity)

--- ===============================
--- 	DT Sets
--- ===============================

  sets.DT = set_combine(sets.DT, sets.weapons, {
  })
  
  sets.Refresh = {
  }

--- ===============================
--- 	Enmity Related Sets
--- ===============================
 
-- Enmity Set -- 
  sets.Enmity = {
	ammo="Sapience Orb",
	head="Rabid visor",
	neck="Unmoving collar +1",
	ear1="Pluto's pearl",
	ear2="Cryptic earring",
	body="Emet harness +1",
	hands="Kurys gloves",
	ring1="Eihwaz ring",
	ring2="Petrov ring",
	back={ name="Ogma's cape", augments={'INT+20','Eva.+20 /Mag. Eva.+20','Enmity+10',}},
	waist="Goading belt",
	legs="Eri. leg Guards +1",
	feet="Erilaz greaves +1"}

-- Spell Interruption - Set --	
  sets.Midcast = set_combeine(sets.Enmity, {
	ammo="Staunch Tathlum", --SIR -10%
	head="Taeon Chapeau", --SIR ~-10%
	neck="Moonbeam Necklace", --SIR -10%
	ear1="Halasz earring", --SIR -5%
	body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%',}}, --SIR ~-10%
	hands="Rawhide gloves", --SIR -15%
	ring2="Evanescence ring", --SIR -5%
	waist="Rumination sash", --SIR -10%
	legs="Carmine cuisses +1", --SIR -20%
	feet={ name="Taeon Boots", augments={'Spell interruption rate down -10%',}} --SIR ~-10%
	})
	
  sets.Midcast['Blue Magic'] = set_combine(sets.Midcast, {
  })
	
-- Flash Set --
  sets.Midcast.Flash = set_combine(sets.Enmity, {
  })
  
--- ===============================
--- 	TP Sets
--- ===============================

  sets.TP_All = set_combine(sets.TP_All,{
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
  sets.TP.Haste['320'] = sets.TP.Haste['307']; -- Both Marches at +5. Only 1 DW difference from 307 MH.
  sets.TP.Haste['448'] = set_combine(sets.TP.Haste['320'],{ -- Capped magic haste. Need 36% total DW.
    -- Each job needs: (THF 6%) (NIN & DNC 1%) (COR/DNC 21%) (BLU 11%)
  })
  
  sets.Some_Acc = set_combine(sets.Some_Acc,{
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
--- 	Magic
--- ===============================

sets.Quick_Magic = set_combine(sets.Quick_Magic, {
})

sets.Fast_Cast = set_combine(sets.Fast_Cast, {
})

sets.Enhancing_Precast = set_combine(sets.Enhacing_Precast, {
  legs="Futhark Trousers +1"
})

sets.Enhancing_Skill = set_combine(sets.Enhancing_Skill, {
  head="Erilaz Galea +1",
  hands="Runeist Mitons +1",
})

sets.Midcast.Phalanx = set_combine(sets.Midcast['Enhancing Magic'],{head="Futhark bandeau +1"})

sets.Midcast.Regen = {head="Rune. Bandeau +1"}

sets.MAB = set_combine(sets.MAB, {
})

--- ===============================
--- 	Weaponskills
--- ===============================
	
sets.WS_All = set_combine(sets.WS_All,{
})

sets.WS_Weak = set_combine(sets.WS_Weak,{
})
  
--- ===============================
--- 	Utility Modes
--- ===============================
	Utility_Title = "Luzaf"
  Utility_Type = "Special"
  Utility_Set_Names = {"Off","On"}

	sets.Utility = {}
	sets.Utility[Utility_Title] = {}
	
	sets.Utility["Luzaf"]["On"] = {
    ring1="Luzaf's Ring"
	}
  
  sets.Movement = {
    legs="Carmine Cuisses +1",
  }

end


--- ===============================
--- 	Status Change Functions
--- ===============================

function job_specific_precast(spell)
	if ((string.find(spell.english,' Roll')) or (spell.english == "Double-Up")) then
    roll_set = {}
    if (spell.english ~= "Double-Up") then
      Last_Roll = spell.english
    end
    if (sets.Rolls[Last_Roll]) then
      roll_set = sets.Rolls[Last_Roll]
    else
      roll_set = sets.Rolls.All
    end
    
    if (Utility_Index > 1) then
      roll_set = set_combine(roll_set, sets.Utility[Utility_Title]["On"])
    end
    
    equip(roll_set)
    return true
 elseif (string.find(spell.english,' Shot')) then
    QDraw_set = {}
    if (spell.english == "Light Shot") then
      QDraw_set = sets.QDraw["Light Shot"]
    elseif (spell.english == "Dark Shot") then
      QDraw_set = sets.QDraw["Dark Shot"]
    else
      QDraw_set = sets.QDraw.All
    end
    
    if ((spell.element == world.day_element) or (spell.element == world.weather_element)) then
      if (sets.Weather) then
        QDraw_set = set_combine(QDraw_set, sets.Weather)
      elseif (sets.Obis) then
        QDraw_set = set_combine(QDraw_set, sets.Obis[spell.element])
      end
    end
    
    equip(QDraw_set)
    return true
  elseif ((spell.english == 'Wildfire') or (spell.english == 'Leaden Salute')) then
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