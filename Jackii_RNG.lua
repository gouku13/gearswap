require('Jackii_LightDD')

--- Build Sets
function get_job_sets()
	get_base_sets()

	Macro_Book = 11
	Macro_Set = 2

	sets.weapons = {ammo="Chrono Bullet"}
	set.proc_weapons = {}


--- ===============================
--- 	Job Abilities
--- ===============================

sets.JA["Shadowbind"] = {head="Orion Beret +3",neck="Iskur Gorget",ear1="Enervating Earring",ear2="Telos Earring",body="Orion Jerkin +2",hands="Orion Bracers +3",ring1="Regal Ring",ring2="Cacoethic Ring +1",back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Rng.Acc.+10','"Store TP"+10',}},waist="Yemaya Belt",legs="Adhemar Kecks +1",feet="Meg. Jam. +2"}
sets.JA["Scavenge"] = {feet="Orion Socks +3"}
sets.JA["Camouflage"] = {body="Orion Jerkin +2"}
sets.JA["Sharpshot"] = {legs="Orion Braccae +2"}
sets.JA["Bounty Shot"] = {head={ name="Herculean Helm", augments={'"Store TP"+1','"Dbl.Atk."+2','"Treasure Hunter"+2','Accuracy+10 Attack+10','Mag. Acc.+3 "Mag.Atk.Bns."+3',}},hands="Amini Glove. +1",waist="Chaac Belt"}
sets.JA["Double Shot"] = {head="Amini Gapette +1"}
sets.JA["Eagle Eye Shot"] = {head="Orion Beret +3",neck="Iskur Gorget",ear1="Enervating Earring",ear2="Telos Earring",body="Orion Jerkin +3",hands="Orion Bracers +3",ring1="Ilabrat Ring",ring2="Dingir Ring",back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Rng.Acc.+10','"Store TP"+10',}},waist="Yemaya Belt",legs="Arcadian Braccae +1",feet="Meg. Jam. +2"}
sets.JA["Barrage"] = set_combine(sets.Midshot, 
								{body="Orion Jerkin +2",hands="Orion Bracers +3",neck="Iskur Gorget",legs="Adhemar Kecks +1",feet="Mummu Gamash. +1",ring1="Regal Ring",ring2="Cacoethic Ring +1"})

sets.During_Buff["Double Shot"] = {head="Oshosi Mask",legs="Oshosi Trousers",feet="Oshosi Leggings",lock="head"}


--- ===============================
--- 	DT Sets
--- ===============================

sets.DT = set_combine(sets.DT, sets.weapons, {
})
  
sets.Refresh = {
}
  
sets.Movement = {
  legs="Carmine Cuisses +1",
}

--- ===============================
--- 	TP Sets
--- ===============================

sets.TP.Max = set_combine(sets.TP.Max,{
  neck="Anu Torque",
  ear1="Sherida Earring",
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
  body="Amini Caban +1",
  hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}}, -- Snapshot +8
  --back={ name="Belenus's Cape", augments={'"Snapshot"+10',}},
})

sets.Midshot = set_combine(sets.Midshot, {
  ammo="Chrono Bullet",
  head="Arcadian Beret +1",
  ear1="Dedition Earring",
  --body="Orion Jerkin +3",
  body="Oshosi Vest",
  hands="Amini Glove. +1",
  ring1="Ilabrat Ring",
  ring2="Dingir Ring",
  back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Rng.Acc.+10','"Store TP"+10',}},
  waist="Kwahu Kachina Belt",
  --legs="Adhemar Kecks +1",
  --feet="Adhemar Gamashes" 
})

sets.Some_Ranged_Acc = set_combine(sets.Midshot, {
  ear1="Enervating Earring",
})

sets.Full_Ranged_Acc = set_combine(sets.Midshot, {
  --head="Orion Beret +3",
  ring1="Regal Ring",
  ring2="Cacoethic Ring +1",
})

--- ===============================
--- 	Magic
--- ===============================

sets.MAB = set_combine(sets.MAB, {
  back={ name="Belenus's Cape", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
})

sets.Quick_Magic = set_combine(sets.Quick_Magic, {
  ammo="Chrono Bullet",
})

sets.Fast_Cast = set_combine(sets.Fast_Cast, {
  ammo="Chrono Bullet",
})

--- ===============================
--- 	Weaponskills
--- ===============================
	
sets.WS_All = set_combine(sets.WS_All,{
  head="Orion Beret +2",
  back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
})

sets.WS_Weak = set_combine(sets.WS_Weak,{
  back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Rng.Acc.+10','"Store TP"+10',}},
})
  
sets.WS.Ranged_All = set_combine(sets.WS.Ranged_All,{
  head="Orion Beret +2",
  back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
})
	
sets.WS["Last Stand"] = set_combine(sets.WS.Ranged_All, {
  --body="Herculean Vest with WSD/RATK/RACC",
  ear1="Ishvara Earring",
  ring1="Regal Ring",
  ring2="Dingir Ring",
  --legs="Herculean Trousers with WSD/RATK/RACC",
  --feet="Herculean Boots with WSD/RATK/RACC",
})
  
sets.WS["Trueflight"] = set_combine(sets.WS.Ranged_All, sets.MAB, {
  ammo="Orichalcum Bullet",
  --head="Herculean Helm with WSD/MAB",
  ear1="Moonshade Earring",
  ring1="Arvina Ringlet +1",
  ring2="Dingir Ring",
  back={ name="Belenus's Cape", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
  waist="Svelt. Gouriz +1",
})

sets.WS["Wildfire"] = set_combine(sets.WS.Ranged_All, sets.MAB, {
  ammo="Orichalcum Bullet",
  ring1="Garuda Ring +1",
  ring2="Dingir Ring",
  back={ name="Belenus's Cape", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
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
  if ((spell.english == 'Wildfire') or (spell.english == 'Trueflight')) then
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