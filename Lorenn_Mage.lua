require('All_Lorenn')

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
--- 	Precasts
--- ===============================

sets.Fast_Cast = { --- Current: FC 48-50% QM 4%
  head={name="Vanya Hood", augments={'MP+50','"Fast Cast"+10','Haste+2%',}}, --- FC 10%
  neck="Orunmila's Torque", -- FC 5%
  ear2="Loquacious Earring", -- FC 2%
  body="Anhur Robe", -- FC 10%
  hands="Telchine Gloves", -- FC 5%
  ring1="Kishar Ring", -- QM 1%
  ring2="Lebeche Ring", -- QM 2%
  back="Swith Cape +1", -- FC 3%
  waist="Witful Belt", -- FC 3% QM 3%
  legs="Orvail Pants", -- FC 5%
  feet="Regal Pumps +1" -- FC 5~7$
}

if (Light_Mage) then
  sets.Fast_Cast = set_combine(sets.Fast_Cast,{ -- FC 50-52%
    hands="Gende. Gages +1" -- 7%
  })
end

if (Dark_Mage) then
  sets.Fast_Cast = set_combine(sets.Fast_Cast,{ -- FC 
	head={ name="Merlinic Hood", augments={'"Mag.Atk.Bns."+20','"Fast Cast"+6','INT+5',}}, -- FC 14%
	--hands="Merlinic Dastanas",
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
  -- body="Vrikodara Jupon", -- 13%
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
    hands="Kaykaus Cuffs", -- Cure Potency +10%, Enmity-5, M.Acc+38, Enfeebling+15
  })
end

sets.Enmity = {
  -- -5 from Serenity
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
  head="Telchine Cap", -- Enhancing Duration +7  
  body="Telchine Chas.",  -- Enhancing Duration +10
  hands="Telchine Gloves", -- Enhancing Duration +10
  legs="Telchine Braconi", -- Enhancing Duration +10
  feet="Telchine Pigaches" -- Enhancing Duration +10
  
}

sets.Enhancing_Skill = { --- Total: +86
  --main="Serenity", -- Enhancing +9
  head="Umuthi Hat", -- Enhancing +13
  body="Telchine Chas.", -- Enhancing +12
  neck="Incanter's Torque", -- Enhancing +10
  hands="Chironic Gloves", -- Enhancing +15
  waist="Olympus Sash", --- Enhancing +5
  back="Merciful Cape" --Enhancing +5 --back="Fi Follet Cape +1" --- Enhancing +9, Unity: MND+1~5
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
  -- main="Exemplar", -- M.Acc: 25
  -- ranged="Aureole", -- M.Acc: 8
  -- head="Nahtirah Hat", -- M.Acc: 10
  neck="Erra Pendant", -- M.Acc: 10
  ear1="Lifestorm Earring", --- Set: M.Acc +12
  ear2="Psystorm Earring", --- Set: M.Acc +12
  body="Vanya Robe", -- M.Acc +21, Enfeebling +20
  back="Ogapepo Cape", -- M.Acc +10
  legs="Vanya Slops" -- M.Acc +20
}

if (Light_Mage) then
  sets.Magic_Acc = set_combine(sets.Magic_Acc,{
    hands="Kaykaus Cuffs", -- M.Acc+38, Enfeebling+15
  })
end

sets.Some_MAcc = {
}

sets.MAB = {
  -- main="Exemplar", -- MAB: 28
  head={ name="Merlinic Hood", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','Enmity-4','Mag. Acc.+6','"Mag.Atk.Bns."+15',}},
  neck="Sanctity Necklace", --- MAB: 10
  ear1="Friomisi Earring", -- MAB: 10
  ear2="Barkarole Earring", -- MAB: 8
  body="Psycloth Vest",
  hands="Amalric Gages",
  back="Toro Cape", --- MAB: 10 
  legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','"Drain" and "Aspir" potency +6','"Mag.Atk.Bns."+13',}},
  feet={ name="Merlinic Crackows", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','"Occult Acumen"+4','STR+6','Mag. Acc.+12','"Mag.Atk.Bns."+11',}}
}

sets.MB = {
  main={ name="Emissary", augments={'DMG:+15','Accuracy+15','Attack+15',}},
    sub="Ammurapi Shield",
    ammo="Pemphredo Tathlum",
    head="Ea Hat",
    body="Ea Houppelande",
    hands="Ea Cuffs",
    legs="Ea Slops",
    feet="Ea Pigaches",
    neck="Mizu. Kubikazari",
    waist="Phos Belt",
    left_ear="Friomisi Earring",
    right_ear="Sherida Earring",
    left_ring="Locus Ring",
    right_ring="Mujin Band",
    back="Shaper's Shawl",
}

sets.Weather = {
back="Twilight Cape",
waist="Hachirin-no-Obi"
}


if(Backline_Mage[Main_Job]) then
  sets.Magic_Acc = set_combine(sets.Magic_Acc, { })
  sets.MAB = set_combine(sets.MAB, { })
end

sets.Enfeeble_Skill = {
  neck="Incanter's Torque", -- Enfeebling +7
  body="Vanya Robe" -- M.Acc +21, Enfeebling +20
}

sets.Divine_Skill = {
}

sets.Dark_Skill = {
}

sets.TP_All = set_combine(sets.TP_All,{
  head="Telchine Cap",
})

end