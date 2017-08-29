require('Global_Core')

function get_base_sets()

--- ===============================
--- 	DT Sets
--- ===============================	

Hybrid_DT_Ring1 = {name="Defending Ring"}
Hybrid_DT_Ring2 = {name="Dark Ring", augments={'Phys. dmg. taken -4%','Magic dmg. taken -6%',}}
PDT_Ring1 = Hybrid_DT_Ring1
PDT_Ring2 = Hybrid_DT_Ring2
MDT_Ring1 = Hybrid_DT_Ring1
MDT_Ring2 = Hybrid_DT_Ring2

--- Full -DT%. For TP/PDT and idle sets.
sets.DT = { --- PDT: 56%, MDT: 44%, BDT: 31%
    -- Note: While full DT set is over PDT cap, movement or Refresh gear will bring us under cap.
    ammo="Staunch Tathlum", -- DT -2%
    head="Iuitl Headgear +1", --- PDT -4%, MDT -4%
    neck="Loricate Torque +1", -- DT -6%
    ear1="Genmei Earring", -- PDT -2%
    ear2="Etiolation Earring", -- MDT -3%
    body="Meg. Cuirie +2", -- PDT -8%
    hands={ name="Herculean Gloves", augments={'Accuracy+20 Attack+20','Damage taken-2%','Accuracy+6','Attack+7',}}, -- PDT -2%, DT - 2%
    ring1= Hybrid_DT_Ring1,
    ring2= Hybrid_DT_Ring2,
    back="Moonbeam Cape", -- DT -5%, HP+250
    waist="Flume Belt", -- PDT -4%
    legs="Mummu Kecks +1", -- DT -4%
    feet={ name="Herculean Boots", augments={'Accuracy+23 Attack+23','Damage taken-2%','DEX+5','Attack+6',}} -- PDT -2%, DT -2%
}

sets.PDT = set_combine(sets.DT, {ring1=PDT_Ring1, ring2=PDT_Ring2})
sets.MDT = set_combine(sets.DT, {ring1=MDT_Ring1, ring2=MDT_Ring2})

--- ===============================
--- 	Job Abilities
--- ===============================

-- Reduces casting/recast time of Utsusemi spells
if (((Main_Job == 'NIN') or (Sub_Job == 'NIN')) and (Main_Job ~= 'BLU')) then
  sets.precast["Utsusemi: Ichi"] = {neck="Magoraga Beads"}
  sets.precast["Utsusemi: Ni"] = {neck="Magoraga Beads"}
  sets.precast["Utsusemi: San"] = {neck="Magoraga Beads"}

  if (Main_Job ~= 'RUN') then
    sets.midcast["Utsusemi: Ichi"] = {back="Mujin Mantle"}
    sets.midcast["Utsusemi: Ni"] = {back="Mujin Mantle"}
    sets.midcast["Utsusemi: San"] = {back="Mujin Mantle"}
  end
end

--- ===============================
--- 	TP Sets
--- ===============================

-- This assumes you need all DW pieces you own. Bigger damage pieces are added later.
sets.TP.Max = {
  ammo="Ginsen",
  head="Adhemar Bonnet",
  neck="Ainia Collar",
  ear1="Dedition Earring",
  ear2="Eabani Earring", -- DW: 4%
  body={name="Herculean Vest", augments={'Attack+21','"Triple Atk."+4','Accuracy+15',}},
  hands="Adhemar Wristbands",
  ring1="Epona's Ring",
  ring2="Hetairoi Ring",
  back="Bleating Mantle",
  waist="Reiki Yotai", -- DW: 7%
  legs="Samnuha Tights",
  feet={name="Herculean Boots", augments={'Accuracy+15 Attack+15','"Triple Atk."+4','DEX+7','Attack+3',}}
}

--[[sets.DW = {  -- Total DW: 35%
  ear1="Suppanomimi", -- DW: 5%
  ear2="Eabani Earring", -- DW: 4%
  body="Adhemar Jacket", -- DW: 5%
  waist="Reiki Yotai", -- DW: 7%
  legs={name="Taeon Tights", augments={'Accuracy+25','"Dual Wield"+5','STR+5 AGI+5',}}, -- DW: 5%
  feet={name="Taeon Boots", augments={'Accuracy+20 Attack+20','"Dual Wield"+5','STR+7 DEX+7',}} -- DW: 9%
}
--]]

if (Main_Job ~= 'RUN') then
  sets.TP.Max = set_combine(sets.TP.Max)
end

-- Adding more damage gear if we have higher magic haste.
-- Unless you utterly despise yourself, do this in each job's individual file.
-- Don't try to do it all here.
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
  
--- ===============================
--- 	Defense Modes
--- ===============================

  --- Sacrifice some tiny DPS for some PDT
  sets.TP.PDT_Mix = { -- PDT: 26%, MDT: 12%
    body="Meg. Cuirie +2", -- PDT -8%
    ring1=Hybrid_DT_Ring1, -- DT -10%
    legs="Meg. Chausses +2", -- PDT -6%
    feet={ name="Herculean Boots", augments={'Accuracy+23 Attack+23','Damage taken-2%','DEX+5','Attack+6',}} -- PDT -2%, DT -2%
  }

--- ===============================
--- 	Accuracy Modes
--- ===============================

sets.Some_Acc = {
  neck="Combatant's Torque",
  ring1="Ramuh Ring +1",
  waist="Kentarch Belt +1"
}

sets.Full_Acc = set_combine(sets.Some_Acc, {
  ammo="Falcon Eye",
  head="Dampening Tam",
  ear1="Zennaroi Earring",
  ear2="Digni. Earring",
  ring2="Cacoethic Ring +1",
  waist="Olseni Belt"
})

if (Main_Job ~= 'BLU') then
  sets.Full_Acc = set_combine(sets.Full_Acc, {
    hands="Meg. Gloves +2",
    feet="Meg. Jam. +2",
  })
end

if ((Main_Job == 'COR') or (Main_Job == 'BLU') or (Main_Job == 'RUN') or (Main_Job == 'RNG')) then
  sets.Full_Acc = set_combine(sets.Full_Acc, {
    head="Carmine Mask +1",
    legs="Carmine Cuisses +1"
  })
end

--- ===============================
--- 	Ranged
--- ===============================

sets.Preshot = {
  body="Pursuer's Doublet", -- Snapshot +6
  waist="Impulse Belt", -- Snapshot +3
  legs="Nahtirah Trousers", -- Snapshot +9
  feet="Meg. Jam. +2", -- Snapshot +10
}

sets.Midshot = {
  head="Meghanada Visor +2",
  neck="Iskur Gorget", 
  ear1="Enervating Earring", 
  ear2="Telos Earring",
  body="Meg. Cuirie +2",
  hands="Adhemar Wristbands",
  ring1="Regal Ring",
  ring2="Ilabrat Ring",
  waist="Eschan Stone", 
  legs="Meg. Chausses +2",
  feet="Meg. Jam. +2",
}

sets.Some_Ranged_Acc = {
  hands="Meg. Gloves +2",
}

sets.Full_Ranged_Acc = set_combine(sets.Some_Ranged_Acc,{
})

--- ===============================
--- 	Weaponskills
--- ===============================

sets.WS_All = {
  head={ name="Herculean Helm", augments={'Attack+27','Weapon skill damage +4%','Accuracy+14',}},
  neck="Fotia Gorget",
  ear1="Brutal Earring",
  ear2="Moonshade Earring",
  body={ name="Herculean Vest", augments={'Accuracy+15 Attack+15','Weapon skill damage +4%','STR+4','Accuracy+8',}},
  hands="Meg. Gloves +2",
  ring2="Hetairoi Ring",
  waist="Fotia Belt",
  legs={ name="Herculean Trousers", augments={'Weapon skill damage +2%','DEX+9','Accuracy+12','Attack+10',}},
  feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','Weapon skill damage +3%','STR+5','Accuracy+13',}},
}

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
}

--- ===============================
--- 	  Sword Weaponskills
--- ===============================

sets.WS["Fast Blade"] = set_combine(sets.WS_Weak, {
})
	
sets.WS["Burning Blade"] = set_combine(sets.WS_Weak, {
})
	
sets.WS["Flat Blade"] = set_combine(sets.WS_Weak, {
})

sets.WS["Savage Blade"] = set_combine(sets.WS_All, { -- Delivers a twofold attack. Damage varies with TP. STR:50% MND:50% 
  neck="Caro Necklace",
  ear1="Ishvara Earring",
  ring1="Ifrit Ring +1",
  ring2="Shukuyu Ring",
})

sets.WS["Requiescat"] = set_combine(sets.WS_All, { -- Delivers a fivefold attack of non-elemental damage. Attack strength varies with TP. MND:73% / 76% / 79% / 82% / 85% 
})

--- ===============================
--- 	  Dagger Weaponskills
--- ===============================

sets.WS["Evisceration"] = set_combine(sets.WS.All, { -- Delivers a fivefold attack. Chance of critical hit varies with TP. DEX:50% 
})

sets.WS["Exenterator"] = set_combine(sets.WS.All, { -- Delivers a fourfold attack that lowers enemy's accuracy. Duration of effect varies with TP. AGI:73% / 76% / 79% / 82% / 85%
})

sets.WS["Aeolian Edge"] = set_combine(sets.WS.All, { -- Delivers an area attack that deals wind elemental damage. Damage varies with TP. DEX:40% INT:40%
})

sets.WS["Rudra's Storm"] = set_combine(sets.WS.All, { -- Deals quintuple damage and weighs target down. Damage varies with TP. DEX:80% 
})

--- ===============================
---      Ranged Weaponskills
--- ===============================

sets.WS.Ranged_All = set_combine(sets.Midshot,{ 
  neck="Fotia Gorget",
  ear2="Moonshade Earring",
  hands="Meg. Gloves +2",
  ring1="Garuda Ring +1",
  ring2="Garuda Ring +1",
  waist="Fotia Belt",
  legs={ name="Herculean Trousers", augments={'Rng.Acc.+23 Rng.Atk.+23','Enmity-3','DEX+4','Rng.Acc.+5','Rng.Atk.+7',}},
  feet={ name="Herculean Boots", augments={'Rng.Acc.+21 Rng.Atk.+21','Enmity-2','STR+1','Rng.Acc.+9','Rng.Atk.+11',}},
})

--- ===============================
--- 	Magic
--- ===============================

sets.Quick_Magic = {
  ammo="Impatiens", -- +2% QM
  ring1="Lebeche Ring" -- 2% QM
}

sets.Fast_Cast = { -- FC: 25%
  neck="Orunmila's Torque", --5% FC
  ear1="Loquac. Earring", --2% FC
  ear2="Enchntr. Earring +1", --2% FC
  body="Dread Jupon", --7% FC
  hands="Leyline Gloves", --8% FC
  ring1="Rahab Ring", --2% FC
  ring2="Kishar Ring" -- 4% FC
}
  
if ((Main_Job == 'COR') or (Main_Job == 'BLU') or (Main_Job == 'RUN') or (Main_Job == 'RNG')) then
  sets.Fast_Cast = set_combine(sets.Fast_Cast, {
    head="Carmine Mask +1", --14% FC
    feet="Carmine Greaves +1" --8% FC
  })
end

sets.Enhancing_Precast = {
  waist="Siegel Sash"
}

sets.Enhancing_Skill = {
  neck="Incanter's torque",
  ear1="Andoaa earring",
  ear2="Augmenting Earring",
  ring1="Stikini Ring +1",
  ring2="Stikini Ring",
  waist="Olympus sash",
  back="Merciful cape",
}

if ((Main_Job == 'COR') or (Main_Job == 'BLU') or (Main_Job == 'RUN') or (Main_Job == 'RNG')) then
  sets.Enhancing_Skill = set_combine(sets.Enhancing_Skill, {
    legs="Carmine Cuisses +1"
  })
end

sets.MAB = {
  ammo="Pemphredo Tathlum",
  head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Enmity-1','INT+8','Mag. Acc.+13','"Mag.Atk.Bns."+7',}},
  neck="Baetyl Pendant",
  ear1="Crematio Earring",
  ear2="Friomisi Earring",  
  body={ name="Samnuha Coat", augments={'Mag. Acc.+10','"Mag.Atk.Bns."+9','"Fast Cast"+2',}},
  hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
  ring1="Shiva Ring +1",
  ring2="Shiva Ring +1",
  back="Toro Cape",
  waist="Eschan Stone",
  legs={ name="Herculean Trousers", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +3%','MND+9','Mag. Acc.+9',}},
  feet={ name="Herculean Boots", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +2%','INT+9','Mag. Acc.+11','"Mag.Atk.Bns."+11',}},
}

if ((Main_Job == 'COR') or (Main_Job == 'BLU') or (Main_Job == 'RUN') or (Main_Job == 'RNG')) then
  sets.MAB = set_combine(sets.MAB, {
    body="Carm. Sc. Mail +1",
    hands="Carmine Fin. Ga. +1",
  })
end

if ((Main_Job == 'THF') or (Main_Job == 'RUN') or (Main_Job == 'NIN')) then
  sets.MAB = set_combine(sets.MAB, {
    ammo="Seething Bomblet +1"
  })
end

sets.Weather = {
  waist="Hachirin-no-Obi"
}

--- ===============================
--- 	Supplies
--- ===============================

-- For Organizer
sets.Other = {}
sets.Other["Warp"] = {ring1="Warp Ring"}
sets.Other["Exp"] = {
  ring1="Echad Ring",
  --ring2="Emperor Band"
}
sets.Other["CP"] = {
  ring1="Trizek Ring",
  ring2="Capacity Ring",
  back="Mecisto. Mantle"
}
sets.Other["Misc"] = {
  back="Nexus Cape"
}

end