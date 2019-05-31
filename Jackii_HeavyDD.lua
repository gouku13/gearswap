require('Global_Core')

function get_base_sets()

Hybrid_DT_Ring1 = {name="Defending Ring"}
Hybrid_DT_Ring2 = {name="Dark Ring", augments={'Phys. dmg. taken -4%','Magic dmg. taken -6%',}}
PDT_Ring1 = Hybrid_DT_Ring1
PDT_Ring2 = Hybrid_DT_Ring2
MDT_Ring1 = Hybrid_DT_Ring1
MDT_Ring2 = Hybrid_DT_Ring2

--- Full -DT%. For TP/PDT and idle sets.
sets.DT = {
  ammo="Staunch Tathlum", -- DT 2%
  head="Sulevia's Mask +2", -- DT 6%
  neck="Loricate Torque +1", -- DT 6%
  ear1="Infused Earring", -- Regen
  ear2="Etiolation Earring", -- MDT 3%
  body="Sulevia's Plate. +2", -- DT 9%
  hands="Sulev. Gauntlets +2", -- DT 5%
  ring1=Hybrid_DT_Ring1,
  ring2=Hybrid_DT_Ring2,
  back="Moonbeam Cape", -- DT 5%, HP+250
  waist="Flume Belt +1", -- PDT 4%
  legs="Sulev. Cuisses +2", -- DT 7%
  feet="Sulev. Leggings +2", -- DT 4%
}

sets.TP.Max = { -- DA+42%, TA+5%, QA+3%, STP+40, Haste+24%
  ammo="Ginsen", -- Acc+5, Atk+10, STP+3
  head="Flam. Zucchetto +2", -- Acc+44, TA+5%, STP+6, Haste+4%
  neck="Ainia Collar", -- Acc-10, STP+8
  ear1="Brutal Earring", -- DA+5%, STP+1
  ear2="Cessance Earring", -- Acc+6, DA+3%, STP+3
  body={ name="Valorous Mail", augments={'Attack+25','"Dbl.Atk."+5','VIT+4','Accuracy+11',}}, -- Acc+31, Atk+25, DA+7%, STP+3, Haste+3%
  hands="Sulev. Gauntlets +2", -- Acc+43, Atk+47, DA+6%, Haste+3%
  ring1="Niqmaddu Ring", -- QA+3%
  ring2="Petrov Ring", -- DA+1%, STP+5
  back="Bleating Mantle",
  waist="Ioskeha Belt", -- Acc+12, DA+8%, Haste+7%
  legs={ name="Odyssean Cuisses", augments={'Attack+26','"Dbl.Atk."+4','DEX+9','Accuracy+13',}}, -- Acc+28, Atk+26, DA+6%, STP+5, Haste+5%
  feet="Flam. Gambieras +2", -- Acc+42, DA+6%, STP+6, Haste+2%
}


--- ===============================
--- 	Accuracy Modes
--- ===============================

sets.Some_Acc = {
  neck="Combatant's Torque",
  ring1="Ramuh Ring +1",
  waist="Kentarch Belt +1"
}

sets.Full_Acc = set_combine(sets.Some_Acc,{
  body="Sulevia's Plate. +2",
  ear2="Telos Earring",
  ring2="Cacoethic Ring +1",
})

--- ===============================
--- 	Ranged
--- ===============================

sets.Preshot = {
}

sets.Midshot = { 
  ear1="Enervating Earring", 
  ear2="Telos Earring",
  ring1="Regal Ring",
  ring2="Ilabrat Ring",
  waist="Eschan Stone", 
}

--- ===============================
--- 	Weaponskills
--- ===============================

sets.WS_All = {
  ammo="Seething Bomblet +1",
  head="Sulevia's mask +2",
  neck="Fotia Gorget",
  ear1="Brutal Earring",
  ear2="Moonshade Earring",
  body="Sulevia's Plate. +2",
  --body="Argosy Hauberk",
  hands="Sulev. Gauntlets +2",
  --hands="Argosy Mufflers",
  ring1="Ifrit Ring +1",
  ring2="Shukuyu Ring"
  waist="Fotia Belt",
  legs="Sulevia's Cuisses +2",
  --legs="Argosy Breeches",
  feet="Sulevia's leggings +2",
}

sets.WS_Weak = {

}

--- ===============================
---    Great Sword Weaponskills
--- ===============================

sets.WS["Shockwave"] = set_combine(sets.WS_All, {
})

sets.WS["Spinning Slash"] = set_combine(sets.WS_All, {
})

sets.WS["Ground Strike"] = set_combine(sets.WS_All, {
})

sets.WS["Herculean Slash"] = set_combine(sets.WS_All, {
})

sets.WS["Torcleaver"] = set_combine(sets.WS_All, {
})

sets.WS["Resolution"] = set_combine(sets.WS_All, {
})

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
---     Great Axe Weaponskills
--- ===============================

sets.WS["Raging Rush"] = set_combine(sets.WS_All, {
})

sets.WS["Full Break"] = set_combine(sets.WS_All, {
})

sets.WS["Steel Cyclone"] = set_combine(sets.WS_All, {
})

sets.WS["King's Justice"] = set_combine(sets.WS_All, {
})

sets.WS["Fell Cleave"] = set_combine(sets.WS_All, {
})

sets.WS["Ukko's Fury"] = set_combine(sets.WS_All, {
})

sets.WS["Upheaval"] = set_combine(sets.WS_All, {
})

--- ===============================
--- 	  Scythe Weaponskills
--- ===============================

sets.WS["Guillotine"] = set_combine(sets.WS_All, {
})

sets.WS["Cross Reaper"] = set_combine(sets.WS_All, {
})

sets.WS["Spiral Hell"] = set_combine(sets.WS_All, {
})

sets.WS["Insurgency"] = set_combine(sets.WS_All, {
})

sets.WS["Infernal Scythe"] = set_combine(sets.WS_All, {
})

sets.WS["Quietus"] = set_combine(sets.WS_All, {
})

sets.WS["Entropy"] = set_combine(sets.WS_All, {
})

--- ===============================
--- 	 Polearm Weaponskills
--- ===============================

sets.WS["Leg Sweep"] = set_combine(sets.WS_All, {
})

sets.WS["Penta Thrust"] = set_combine(sets.WS_All, {
})

sets.WS["Skewer"] = set_combine(sets.WS_All, {
})

sets.WS["Wheeling Thrust"] = set_combine(sets.WS_All, {
})

sets.WS["Impulse Drive"] = set_combine(sets.WS_All, {
})

sets.WS["Drakesbane"] = set_combine(sets.WS_All, {
})

sets.WS["Sonic Thrust"] = set_combine(sets.WS_All, {
})

sets.WS["Camlann's Torment"] = set_combine(sets.WS_All, {
})

sets.WS["Stardiver"] = set_combine(sets.WS_All, {
})

--- ===============================
---    Great Katana Weaponskills
--- ===============================

sets.WS["Tachi: Jinpu"] = set_combine(sets.WS_All, {
})

sets.WS["Tachi: Koki"] = set_combine(sets.WS_All, {
})

sets.WS["Tachi: Yukikaze"] = set_combine(sets.WS_All, {
})

sets.WS["Tachi: Gekko"] = set_combine(sets.WS_All, {
})

sets.WS["Tachi: Kasha"] = set_combine(sets.WS_All, {
})

sets.WS["Tachi: Rana"] = set_combine(sets.WS_All, {
})

sets.WS["Tachi: Ageha"] = set_combine(sets.WS_All, {
})

sets.WS["Tachi: Fudo"] = set_combine(sets.WS_All, {
})

sets.WS["Tachi: Shoha"] = set_combine(sets.WS_All, {
})

--- ===============================
---      Ranged Weaponskills
--- ===============================

sets.WS.Ranged_All = set_combine(sets.Midshot,{ 
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
  body="Odyssean chestplate", --5% FC
  hands="Leyline Gloves", --8% FC
  ring1="Rahab Ring", --2% FC
  ring2="Kishar Ring" -- 4% FC
}

sets.Magic_Acc = {
  neck="Sanctity Necklace",
  ear1="Gwati Earring",
  ear2="Digni. Earring",
  ring1="Stikini Ring",
  ring2="Stikini Ring +1",
  waist="Eschan Stone",
}

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