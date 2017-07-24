require('Jackii_LightDD')

--- Build Sets
function get_job_sets()
	get_base_sets()

	Macro_Book = 11
	Macro_Set = 2

	sets.weapons = {main="Fettering Blade",sub="Blurred Knife +1",range="Fomalhaut",ammo="Chrono Bullet"}
	set.proc_weapons = {}


--- ===============================
--- 	Job Abilities
--- ===============================

sets.JA['Random Deal'] = {body="Lanun Frac +1"}
sets.JA['Wild Card'] = {feet="Lanun Bottes +1"}
sets.JA['Snake Eye'] = {legs="Lanun Culottes +1"}
sets.JA['Fold'] = {hands="Lanun Gants +1"}

sets.During_Buff["Triple Shot"] = {body="Chasseur's Frac +1",lock="body"}

-- Rolls
sets.Rolls = {}
sets.Rolls.All = {
  head="Lanun Tricorne +1",
  neck="Regal Necklace",
  hands="Chasseur's Gants +1",
  ring1="Roller's Ring",
  back="Camulus's Mantle",
  legs="Desultor Tassets"
}
sets.Rolls["Tactician's Roll"] = set_combine(sets.Rolls.All, {body="Chasseur's Frac +1"})
sets.Rolls["Courser's Roll"] = set_combine(sets.Rolls.All, {feet="Chasseur's Bottes +1"})
sets.Rolls["Blitzer's Roll"] = set_combine(sets.Rolls.All, {head="Chasseur's Tricorne +1"})
sets.Rolls["Caster's Roll"] = set_combine(sets.Rolls.All, {legs="Chasseur's Culottes +1"})
Last_Roll = ''

-- Quick Draw
sets.QDraw = {}
sets.QDraw.All = set_combine(set.MAB,{
  head="Blood Mask",
  ring1="Fenrir Ring +1",
  ring2="Dingir Ring",
})
sets.QDraw["Light Shot"] = set_combine(sets.QDraw.All, {})
sets.QDraw["Dark Shot"] = set_combine(sets.QDraw.All, {})

--- ===============================
--- 	DT Sets
--- ===============================

  sets.DT = set_combine(sets.DT, sets.weapons, {
  })
  
  sets.Refresh = {
    body="Mekosu. Harness",
  }

--- ===============================
--- 	TP Sets
--- ===============================

  sets.TP_All = set_combine(sets.TP_All,{
    neck="Iskur Gorget",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10',}}, -- DW +10
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
--- 	Ranged Attacks
--- ===============================

sets.Preshot = set_combine(sets.Preshot, {
  head="Chass. Tricorne +1",
  body="Oshosi Vest", -- Snapshot +12
  hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}}, -- Snapshot +8
})

sets.Midshot = set_combine(sets.Midshot, {
  ammo="Chrono Bullet",
  body="Oshosi Vest",
  back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
  waist="Kwahu Kachina Belt",
  -- legs="Laksa. Trews +3",
})

--- ===============================
--- 	Magic
--- ===============================

sets.MAB = set_combine(sets.MAB, {
  back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
})

--- ===============================
--- 	Weaponskills
--- ===============================
	
	sets.WS_All = set_combine(sets.WS_All,{
	body="Laksa. Frac +3",
    back={ name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	})
	
	sets.WS_Weak = {
	head={ name="Adhemar Bonnet", augments={'DEX+10','AGI+10','Accuracy+15',}},
    body={ name="Adhemar Jacket", augments={'DEX+10','AGI+10','Accuracy+15',}},
    hands={ name="Adhemar Wristbands", augments={'DEX+10','AGI+10','Accuracy+15',}},
    legs={ name="Taeon Tights", augments={'Accuracy+25','"Dual Wield"+5','STR+5 AGI+5',}},
    feet={ name="Taeon Boots", augments={'Accuracy+20 Attack+20','"Dual Wield"+5','STR+7 DEX+7',}},
    neck="Iskur Gorget",
    waist="Reiki Yotai",
    left_ear="Suppanomimi",
    right_ear="Eabani Earring",
    left_ring="Epona's Ring",
    right_ring="Hetairoi Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10',}},
	}
	
	sets.WS["Fast Blade"] = set_combine(sets.WS_Weak,{
	})
	
	sets.WS["Burning Blade"] = set_combine(sets.WS_Weak,{
	})
	
	sets.WS["Flat Blade"] = set_combine(sets.WS_Weak,{
	})
	
	sets.WS["Savage Blade"] = set_combine(sets.WS_All,{
			neck="Caro Necklace",
			ear1="Ishvara Earring",
			ring1="Ifrit Ring +1",
			ring2="Shukuyu Ring",
			})
  
  sets.WS.Ranged_All = set_combine(sets.WS.Ranged_All,{
    body="Laksa. Frac +3",
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
	})
  
	sets.WS["Leaden Salute"] = set_combine(sets.WS.Ranged_All, sets.MAB, {
    ammo="Chrono Bullet",
    head="Pixie Hairpin +1",
    ear1="Moonshade Earring",
    ring1="Archon Ring",
    ring2="Dingir Ring"
  })

	sets.WS["Wildfire"] = set_combine(sets.WS.Ranged_All, sets.MAB, {
    ammo="Chrono Bullet",
    ear1="Crematio Earring",
    ring1="Gardua Ring +1",
    ring2="Dingir Ring"
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
  else
    return false
	end
end
--[[function job_specific_midcast(spell)
  	if (string.find(spell.english,' Shot')) then
	QDraw_set = {}
	if (spell.english = "Light Shot") then
	  QDraw_set = sets.QDraw["Light Shot"]
	elseif (spell.english = "Dark Shot") then
	  QDraw_set = sets.QDraw["Dark Shot"]
	else
	  QDraw_set = sets.QDraw.All
	end
end	
]]