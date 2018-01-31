require('Global_Core')

function get_base_sets()

if ((Main_Job == 'WHM') or (Main_Job == 'RDM') or (Main_Job == 'BRD') or (Main_Job == 'SCH')) then
	Light_Mage = true
else
  Light_Mage = false
end

if ((Main_Job == 'BLM') or (Main_Job == 'RDM') or (Main_Job == 'SMN') or (Main_Job == 'SCH') or (Main_Job == 'GEO')) then
	Dark_Mage = true
else
  Dark_Mage = false
end

--- ===============================
--- 	DT Sets
--- ===============================	
Hybrid_DT_Ring1 = "Defending Ring"
Hybrid_DT_Ring2= { name="Dark Ring", augments={'Phys. dmg. taken -5%','Magic dmg. taken -5%',}}
PDT_Ring1 = Hybrid_DT_Ring1
PDT_Ring2 = Hybrid_DT_Ring2
MDT_Ring1 = Hybrid_DT_Ring1
MDT_Ring2 = Hybrid_DT_Ring2

--- Full -DT%. For TP/PDT and idle sets.
sets.DT = { --- PDT: 15%, MDT: 13%
  neck="Loricate Torque +1", --- DT: 5%
  ear1="Colossus's Earring",
  ring1=Hybrid_DT_Ring1,
  ring2=Hybrid_DT_Ring2,
  back="Moonbeam Cape"
}

sets.PDT = set_combine(sets.DT, {ring1=PDT_Ring1, ring2=PDT_Ring2})
sets.MDT = set_combine(sets.DT, {ring1=MDT_Ring1, ring2=MDT_Ring2})

sets.Movement = {
	feet="Herald's Gaiters"
}

sets.craft={
      sub="Beveler's Shield",
	  neck="Tanner's Torque",
      body="Tanner's Apron",
      hands="Tanner's Gloves",
      ring1="Orvail Ring",
      ring2="Craftmaster's Ring",
    }

if (Dark_Mage or (Main_Job == 'BLU')) then
  -- Without head/pants: PDT: 29%, MDT: 19%, BDT: 18%
  sets.DT = set_combine(sets.DT, {
	head="Hagondes Hat", --- PDT: 1%
    body="Hagondes Coat", --- PDT: 1%
    hands="Hagondes Cuffs", --- PDT: 4%
    legs="Hagondes Pants", --- PDT: 2%
    feet="Hagondes Sabots" --- PDT: 1%
	})
end

if (Light_Mage) then
	--- Full -DT%. For TP/PDT and idle sets.
  sets.DT = set_combine(sets.DT, {
    head="Gende. Caubeen", --- PDT: 2%
    body="Gende. Bilaut +1", --- PDT: 4%
    hands="Gende. Gages +1", --- PDT: 4%
    feet="Gende. Galosh. +1" --- PDT: 4%
	})
end

--- ===============================
--- 	Regen/Refresh/Resting Sets
--- ===============================	

sets.Refresh = {
  head="Befouled Crown", --- 1 MP/tic
  ear2="Moonshade Earring", --- 
  waist="Fucho-no-Obi", --- 1 MP/tic when < 50% MP
  legs="Assiduity Pants +1", --- 1 MP/tic
}

if (Light_Mage) then
  sets.Refresh = set_combine(sets.Refresh,{
      head={ name="Chironic Hat", augments={'Attack+10','Pet: "Dbl.Atk."+3 Pet: Crit.hit rate +3','"Refresh"+2',}},
      body="Gende. Bilaut +1",
      hands={ name="Chironic Gloves", augments={'Rng.Acc.+21 Rng.Atk.+21','Mag. Acc.+18','"Refresh"+2','Mag. Acc.+7 "Mag.Atk.Bns."+7',}},
      legs={ name="Chironic Hose", augments={'Attack+25','Pet: INT+4','"Refresh"+2','Mag. Acc.+3 "Mag.Atk.Bns."+3',}}
  })
end

if (Dark_Mage) then

end

--- ===============================
--- 	Precasts
--- ===============================

sets.Fast_Cast = { --- Current: FC 48-50% QM 4%
  ammo="Impatiens", --QM 2%
  head={name="Vanya Hood", augments={'MP+50','"Fast Cast"+10','Haste+2%',}}, --- FC 10%
  neck="Orunmila's Torque", -- FC 5%
  ear2="Loquacious Earring", -- FC 2%
  body="Anhur Robe", -- FC 10%
  hands="Telchine Gloves", -- FC 5%
  ring1="Kishar Ring", -- FC 1%
  ring2="Lebeche Ring", -- QM 2%
  back="Swith Cape +1", -- FC 3%
  waist="Witful Belt", -- FC 3% QM 3%
  legs="Orvail Pants", -- FC 5%
  feet="Regal Pumps +1" -- FC 5~7%
}

if ((Main_Job == 'WHM') or (Main_Job == 'BRD') or (Main_Job == 'SMN')) then
  sets.Fast_Cast = set_combine(sets.Fast_Cast,{ -- 45% FC
    body="Inyanga Jubbah +2", -- FC 13%
  })
end

if (Light_Mage) then
  sets.Fast_Cast = set_combine(sets.Fast_Cast,{ -- FC 50-52%
    hands="Gende. Gages +1" -- 7%
  })
end

if (Dark_Mage) then
  sets.Fast_Cast = set_combine(sets.Fast_Cast,{ -- FC 
	head={ name="Merlinic Hood", augments={'"Fast Cast"+7','MND+6','Mag. Acc.+9',}}, -- FC 15%
	body={ name="Merlinic Jubbah", augments={'Accuracy+19','"Fast Cast"+6','"Mag.Atk.Bns."+15',}}, -- FC 12%
	hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+13','"Fast Cast"+7','MND+7',}}, -- FC 7%
    legs="Psycloth lappas",	-- FC 7%
	feet={ name="Merlinic Crackows", augments={'Mag. Acc.+16 "Mag.Atk.Bns."+16','"Fast Cast"+5','CHR+6','"Mag.Atk.Bns."+6',}} -- FC 11%
  })
end

--- ===============================
--- 	Healing Magic
--- ===============================

sets.MND = {
  ear1="Lifestorm Earring", --- MND: 4, Enmity -1
  ring1="Sirona's Ring", --- MND: 3, Healing +10
}

sets.Healing_Skill = {
  neck="Incanter's Torque", -- Healing +10
  ring1="Sirona's Ring", --- MND: 3, Healing +10
  ring2="Haoma's Ring", --- Healing +7, Enhances Cursna
}

sets.Cure_Potency = {
  head="Vanya hood", -- 16%
  body="Vrikodara Jupon", -- 13%
  hands="Telchine Gloves", -- 15%
  legs="Vanya Slops",
  ring2="Lebeche Ring", -- 3%
  feet={ name="Vanya Clogs", augments={'MP+50','"Cure" potency +7%','Enmity-6',}} -- 10%
}

if (Main_Job ~= "BLU") then
  sets.Cure_Potency = set_combine(sets.Cure_Potency,{ --- Caps at 50%, currently 36%
    head={name="Vanya Hood", augments={'MP+50','"Fast Cast"+10','Haste+2%',}}, --- 10%, Haste +2%, -- Potency +10%, Conserve MP +6
    hands={name="Vanya Cuffs", augments={'MP+50','"Cure" potency +7%','Enmity-6',}}, -- Potency +7%, Enmity -6
    back="Solemnity Cape", -- For now. Potency +7%
    legs={name="Vanya Slops", augments={'MP+50','"Cure" potency +7%','Enmity-6',}}, -- Potency +7%, Enmity -6, Conserve MP +6
    feet={name="Vanya Clogs", augments={'MP+50','"Cure" potency +7%','Enmity-6',}} -- Potency +12%, Enmity -6, Healing Skill+20, Cursna +5
  })
end

if (Light_Mage) then
  sets.Cure_Potency = set_combine(sets.Cure_Potency,{ --46%
    hands="Kaykaus Cuffs +1", -- Cure Potency +10%, Enmity-5, M.Acc+38, Enfeebling+15
  })
end

sets.Enmity = {
  ammo="Esper Stone +1", -- Enmity -5
  ear1="Novia Earring", -- Enmity -7
  -- ring2="Kuchekula Ring", -- Enmity -7
}

sets.Cure_Extras = {}

sets.Cursna = {
  neck="Debilis Medallion", -- +10
  ring1="Haoma's Ring", -- +10
  ring2="Haoma's Ring" -- +10
}

if (Light_Mage) then
  sets.Cursna = set_combine(sets.Cursna,{
    feet="Gende. Galosh. +1" -- +10
  })
end

--- ===============================
--- 	Enhancing
--- ===============================

sets.Enhancing_Precast = {
  waist="Siegel Sash"
}

sets.Enhancing_Duration = {
  head="Telchine Cap", -- Enhancing Duration +10
  body="Telchine Chas.",  -- Enhancing Duration +10
  hands="Telchine Gloves", -- Enhancing Duration +10
  legs="Telchine Braconi", -- Enhancing Duration +10
  feet="Telchine Pigaches" -- Enhancing Duration +10
  
}

sets.Enhancing_Skill = { --- Total: +86
  head="Befouled Crown", -- Enhancing +16
  neck="Incanter's Torque", -- Enhancing +10
  ear1="Augmenting Earring", -- Enhancing +3
  ear2="Andoaa Earring", -- Enhancing +5
  body="Telchine Chas.", -- Enhancing +12
  hands="Chironic Gloves", -- Enhancing +15
  --ring1="Stikini Ring", -- Enhancing +5
  ring2="Stikini Ring", -- Enhancing +5
  back="Fi Follet Cape", --- Enhancing +8, Unity: MND+1~5
  waist="Olympus Sash", --- Enhancing +5
}

--- ===============================
---  Healing Magic
--- ===============================
sets.precast["Healing"] = set_combine(sets.Fast_Cast,{
  --body="Shango Robe"
})

--- ===============================
--- 	Offensive Magic
--- ===============================

sets.Magic_Acc = {
  ammo="Pemphredo Tathlum",
  neck="Erra Pendant", -- M.Acc: 17
  ear2="Dignitary's Earring",
  ring2="Stikini Ring",
  back="Ogapepo Cape", -- M.Acc +10
  waist="Luminary Sash",
}

if ((Main_Job == 'WHM') or (Main_Job == 'BRD')) then
  sets.Magic_Acc = set_combine(sets.Magic_Acc,{ -- 45% FC
    hands="Inyanga dastanas +1", -- FC 13%
  })
end

if (Light_Mage) then
  sets.Magic_Acc = set_combine(sets.Magic_Acc,{
    hands="Kaykaus Cuffs +1", -- M.Acc+38, Enfeebling+15
  })
end

sets.Some_MAcc = {
}

sets.MAB = {
  ammo="Pemphredo tathlum",
  head={ name="Merlinic Hood", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','Enmity-4','Mag. Acc.+6','"Mag.Atk.Bns."+15',}},
  neck="Sanctity Necklace", --- MAB: 10
  ear1="Regal Earring", -- MAB: 10
  ear2="Barkarole Earring", -- MAB: 8
  body="Amalric Doublet",
  hands="Amalric Gages",
  back="Toro Cape", --- MAB: 10 
  legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','"Drain" and "Aspir" potency +6','"Mag.Atk.Bns."+13',}},
  feet={ name="Merlinic Crackows", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','"Occult Acumen"+4','STR+6','Mag. Acc.+12','"Mag.Atk.Bns."+11',}}
}

sets.MB = {
  ammo="Pemphredo tathlum",
  head={ name="Merlinic Hood", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','Magic burst dmg.+9%','MND+5','Mag. Acc.+5','"Mag.Atk.Bns."+12',}}, -- 9%
  neck="Mizu. Kubikazari", -- +10%
  body="Amalric Doublet",
  ear1="Regal Earring",
  ear2="Barkarole Earring",
  hands="Amalric Gages", -- (+5%)
  back="Seshaw Cape",
  ring1="Mujin Band", -- (+5%)
  ring2="Locus Ring", -- +5%
  legs={ name="Merlinic Shalwar", augments={'"Mag.Atk.Bns."+24','Magic burst dmg.+10%','CHR+2','Mag. Acc.+1',}}, --10%
  feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+21','Magic burst dmg.+10%','Mag. Acc.+4',}}, --10%
}

sets.Weather = {
waist="Hachirin-no-Obi"
}

sets.Enfeeble_Skill = {
  neck="Incanter's Torque", -- Enfeebling +10
  body="Vanya Robe" -- M.Acc +21, Enfeebling +20
  --feet="Skaoi Boots", --M.Acc +37, Enfeebling +17
}

sets.Divine_Skill = {
}

sets.Dark_Skill = {
}

sets.Drain = {
  ammo="Pemphredo Tathlum",
  head="Pixie Hairpin +1",
  --body="Shango Robe",
  neck="Erra Pendant",
  --ring1="Evanescence Ring",
  ring1="Excelsis Ring",
  ring2="Archon Ring",
  waist="Fucho-no-obi",
}

sets.midcast["WarpII"] = set_combine(sets.Fast_Cast,{
})

--- ===============================
--- 	Melee Sets
--- ===============================

sets.TP.Max = set_combine(sets.TP.Max,{
  head="Telchine Cap",
  neck="Sanctity Necklace",
  ring1="Rajas Ring",
  back="Atheling Mantle"
})

--- ===============================
--- 	Supplies
--- ===============================

sets.Other = {}
sets.Other["Warp"] = {ring1="Warp Ring"}
sets.Other["Exp"] = {
  ring1="Echad Ring",
  ring2="Emperor Band"
}
sets.Other["CP"] = {
  ring1="Trizek Ring",
  ring2="Capacity Ring",
  back="Aptitude Mantle"
}
sets.Other["Misc"] = {
  back="Nexus Cape"
}

end