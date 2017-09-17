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

Hybrid_DT_Ring1 = {name="Defending Ring"}
Hybrid_DT_Ring2 = { name="Dark Ring", augments={'Phys. dmg. taken -4%','Magic dmg. taken -6%',}}
PDT_Ring1 = Hybrid_DT_Ring1
PDT_Ring2 = Hybrid_DT_Ring2
MDT_Ring1 = Hybrid_DT_Ring1
MDT_Ring2 = Hybrid_DT_Ring2

--- Full -DT%. For TP/PDT and idle sets.
sets.DT = { -- PDT: 25%, MDT: 21%, BDT: 15%
  neck="Loricate Torque +1", --- DT: 5%
  ring1=Hybrid_DT_Ring1,
  ring2={ name="Dark Ring", augments={'Phys. dmg. taken -4%','Magic dmg. taken -6%',}},
  ear1="Colossus's Earring",
  ear2="Genmei Earring",
  back="Moonbeam Cape", -- PDT +6%
}

if (Light_Mage) then
  -- Without head/pants: PDT: 25 + ?%, MDT: 21 + ?%, BDT: 15 + ?%
  sets.DT = set_combine(sets.DT, {
    head="Gende. Caubeen +1", -- PDT: ?%, MDT: ?%
    body={ name="Gende. Bilaut +1", augments={'Phys. dmg. taken -4%','Song spellcasting time -5%',}}, -- PDT: ?%, MDT: ?%
    hands="Gende. Gages +1", -- PDT: ?%, MDT: ?%
    back="Moonbeam Cape",
    legs="Gende. Spats +1", -- PDT: ?%, MDT: ?%
    feet="Gende. Galoshes +1" -- PDT: ?%, MDT: ?%
	})
else
  -- Without head/pants: PDT: 25 + ?%, MDT: 21 + ?%, BDT: 15 + ?%
  sets.DT = set_combine(sets.DT, {
    head="Hagondes Hat +1", -- PDT: ?%, MDT: ?%
	--body="Hagondes Coat +1",
    hands="Hagondes Cuffs +1", -- PDT: ?%, MDT: ?%
    back="Moonbeam Cape",
    legs="Hagondes Pants +1", -- PDT: ?%, MDT: ?%
    feet="Hag. Sabots +1" -- PDT: ?%, MDT: ?%
	})
end

sets.PDT = set_combine(sets.DT, {
  ring1=PDT_Ring1,
  ring2=PDT_Ring2
})

sets.MDT = set_combine(sets.DT, {
  ring1=MDT_Ring1,
  ring2=MDT_Ring2,
  --back="Tuilha Cape"
})

--- ===============================
--- 	Regen/Refresh/Resting Sets
--- ===============================	

sets.Refresh = {
  head="Befouled Crown", -- 1 MP/tic
  ear2="Infused Earring",
  ear1="Etiolation Earring",
  body="Amalric Doublet +1", -- PDT: ?%, MDT: ?%
  waist="Fucho-no-Obi", -- 1 MP/tic when < 50% MP
  legs="Assiduity Pants +1" -- 1 MP/tic
}

sets.resting = set_combine(sets.resting,{
  --ammo="Mana Ampulla", -- hMP +2
  --neck="Eidolon Pendant +1", -- hMP +4
  --ear1="Relaxing Earring", -- hMP +2
  --ring1="Angha Ring", -- hMP +2
  --ring2="Star Ring", -- hMP +1
  --back="Vita Cape", -- hMP +3
  --waist="Austerity Belt +1", -- hMP +6
  --feet="Chelona Boots +1" -- hMP +6
})

sets.resting = set_combine(sets.resting, sets.Refresh)

--- ===============================
--- 	Precasts
--- ===============================

sets.Quick_Magic = {
  ammo="Impatiens", -- QM 2%
  ring2="Lebeche Ring", -- QM 2%
  back="Perimede cape", -- QM 4%
}

sets.Fast_Cast = { -- Currently FC 42%, QM 10%
  head="Vanya Hood", -- FC 10%
  neck="Orunmila's Torque", -- FC 5%
  ear2="Enchntr. Earring +1", -- FC 2%
  ear1="Loquacious Earring", -- FC 2%
  --body="Anhur Robe", -- FC 10%
  ring1="Kishar Ring", -- FC 4%
  ring2="Weatherspoon Ring",
  back="Swith Cape +1",
  waist="Witful Belt", -- FC 3%, QM 3%
  legs="Artsieq Hose", -- FC 5%
  feet="Regal Pumps +1" -- FC 5%
}

if ((Main_Job == 'WHM') or (Main_Job == 'BRD')) then
  sets.Fast_Cast = set_combine(sets.Fast_Cast,{ -- 45% FC
    body="Inyanga Jubbah +1", -- FC 13%
  })
end

if (Light_Mage) then
  sets.Fast_Cast = set_combine(sets.Fast_Cast,{ -- FC 51%
    hands="Gende. Gages +1" -- 7%
  })
end

if (Dark_Mage) then
  sets.Fast_Cast = set_combine(sets.Fast_Cast,{ -- FC 68%
    head={ name="Merlinic Hood", augments={'Mag. Acc.+9 "Mag.Atk.Bns."+9','"Fast Cast"+7','CHR+3',}}, -- FC 15%
    body={ name="Merlinic Jubbah", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','"Fast Cast"+7','DEX+10',}}, -- FC 13%
    hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+19','"Fast Cast"+6','"Mag.Atk.Bns."+5',}}, -- FC +6%
    legs="Psycloth lappas",	-- FC 7%
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+16 "Mag.Atk.Bns."+16','"Fast Cast"+6','MND+9','Mag. Acc.+9','"Mag.Atk.Bns."+4',}}, -- FC 11%
  })
end

sets.precast["Healing"] = set_combine(sets.Fast_Cast,{
})

--- ===============================
--- 	Healing Magic
--- ===============================

sets.MND = {
  --head="Kaabnax Hat", -- MND: 26, M.Acc +15
  --ear1="Lifestorm Earring", -- MND: 4, Enmity -1
  --body="Vanir Cotehardie", -- MND: 36
  --hands="Lurid Mitts", -- MND: 33, M.Acc +23, Enfeebling +18
  --ring1="Levia. Ring +1" -- MND: 9
}

sets.Healing_Skill = {
  neck="Incanter's Torque", -- Healing +7
  --ear2="Beatific Earring", -- Healing +4
  ring2="Sirona's Ring", -- MND: 3, Healing +10
  --back="Altruistic Cape" -- Healing +5, Enfeebling +5
  --waist="Bishop's Sash"
}

sets.Cure_Potency = { --- Caps at 50%, currently 49 + ?%
  head={ name="Vanya Hood", augments={'MP+50','"Fast Cast"+10','Haste+2%',}}, -- 10%
  body="Vrikodara Jupon", -- 13%
  hands="Telchine Gloves", -- 10%  hands={ name="Vanya Cuffs", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
  ring2="Lebeche Ring", -- 3%
  legs="Vanya Slops", --4%
  feet={ name="Vanya Clogs", augments={'MP+50','"Cure" potency +7%','Enmity-6',}}, -- 12% 
}

sets.Cursna = {
  neck="Debilis Medallion",
  --hands="Fanatic Gloves",
  ring1="Haoma's Ring",
  ring2="Haoma's Ring"
}

sets.Enmity = {
  ammo="Esper Stone +1", -- Enmity -5
  --neck="Lasaia Pendant", -- Enmity -8
}

sets.Cure_Extras = {
  waist="Ninurta's Sash" -- Haste +5%
}

--- ===============================
--- 	Enhancing
--- ===============================

sets.Enhancing_Precast = {
  waist="Siegel Sash"
}

sets.Enhancing_Skill = { --- Total: +57~
  head="Befouled Crown", -- Enhancing+ 16
  ear1="Andoaa Earring", -- Enhancing +5
  ear2="Augmenting Earring", -- Enhancing +3
  neck="Incanter's Torque", -- Enhancing +10
  body="Telchine Chasuble", -- Enhancing +12
  hands="Chironic Gloves", -- Enhancing +15
  waist="Olympus Sash", -- Enhancing +5
  --back="Merciful Cape", -- Enhancing +5
  --legs="Portent Pants", -- Enfeebling +15, Dark +15, Enhancing +15
  --feet="Rubeus Boots" -- Enhancing +10
}

sets.Enhancing_Duration = {
  head={ name="Telchine Cap", augments={'Accuracy+18','Haste+3','Enh. Mag. eff. dur. +10',}},
  body={ name="Telchine Chas.", augments={'Pet: Mag. Evasion+15','Pet: "Regen"+3','Enh. Mag. eff. dur. +10',}},
  hands={ name="Telchine Gloves", augments={'Pet: Mag. Evasion+20','Pet: "Regen"+3','Enh. Mag. eff. dur. +10',}},
  legs={ name="Telchine Braconi", augments={'Pet: Mag. Evasion+17','Pet: "Regen"+3','Enh. Mag. eff. dur. +10',}},
  feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
}

sets.Enhancing_Bonus["Regen"] = {
  --main="Bolelabunga"
}

-- Effects received
------------------------------

sets.Received["Refresh"] = {
  back="Grapevine Cape",
  waist="Gishdubar Sash",
  feet="Inspirited Boots"
}
sets.Received["Refresh II"] = sets.Received["Refresh"]
sets.Received["Refresh III"] = sets.Received["Refresh"]

sets.Received["Cure"] = {
  -- Cure received gear here
}
for spell_name,_ in pairs(Cure_Spells) do
  sets.Received[spell_name] = sets.Received["Cure"]
end

--- ===============================
--- 	Offensive Magic
--- ===============================

sets.Magic_Acc = {
  ammo="Pemphredo tathlum", -- M.Acc: 8
  head="Befouled Crown", -- M.Acc: 20
  neck="Sanctity Necklace", --- M.Acc: 5
  body="Vanya Robe", -- M.Acc: 20, Enfeebling +20
  hands="Lurid Mitts", -- M.Acc: 23, Enfeebling +18
  ear1="Gwati Earring", -- M.Acc: +8
  ear2="Dignitary's Earring", -- M.Acc +10
  ring1="Stikini Ring", -- M.Acc: +8, MND+5, All magic skills +5
  ring2="Stikini Ring +1", -- M.Acc: +11, MND+8, All magic skills +8
  --back="Ogapepo Cape", -- M.Acc: 10
  waist="Rumination Sash", -- M.Acc: 8, MND+4, MAB-10
  --legs="Mes'yohi Slacks", -- M.Acc: 20
  feet="Skaoi Boots" -- M.Acc: 25
}

sets.Some_MAcc = { -- Hybrid set between MAB/M.Acc. For resistant mobs.
}

sets.MAB = {
  ammo="Pemphredo tathlum",
  head={ name="Merlinic Hood", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','Magic Damage +6','Mag. Acc.+15','"Mag.Atk.Bns."+13',}},
  neck="Sanctity Necklace",
  ear1="Barkarole Earring",
  ear2="Friomisi Earring",
  body="Amalric Doublet +1",
  hands="Amalric Gages +1",
  ring1="Shiva Ring +1",
  ring2="Shiva Ring +1",
  back="Toro Cape",
  waist="Refoccilation Stone",
  legs="Amalric Slops +1",
  feet="Amalric Nails +1"
}

sets.MB = {
  ammo="Pemphredo tathlum",
  head={ name="Merlinic Hood", augments={'"Mag.Atk.Bns."+25','Magic burst dmg.+10%','CHR+5','Mag. Acc.+12',}}, -- +10%
  neck="Mizu. Kubikazari", -- +10%
  ear1="Barkarole Earring",
  ear2="Friomisi Earring",
  hands="Amalric Gages +1", -- (+5%)
  ring1="Mujin Band", -- (+5%)
  ring2="Shiva Ring +1",
  back="Seshaw Cape +1", -- +6%
  legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','Magic burst dmg.+6%','Mag. Acc.+6','"Mag.Atk.Bns."+15',}}, -- +6%
  feet={ name="Merlinic Crackows", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','Magic burst dmg.+10%','Mag. Acc.+15','"Mag.Atk.Bns."+7',}},  -- +10%
}

sets.Weather = {
	waist="Hachirin-no-Obi"
}

sets.Enfeeble_Skill = {
  head="Befouled Crown", -- M.Acc: 20, Enfeebling +16
  neck="Incanter's Torque", -- All Magic +10
  body="Vanya Robe", -- M.Acc: 20, Enfeebling +20
  hands="Lurid Mitts", -- M.Acc: 23, Enfeebling+18
  waist="Rumination Sash", -- M.Acc: 3, MND+4, Enfeebling +7
  feet="Skaoi Boots" -- M.Acc+25, Enfeebling+15
}

sets.Divine_Skill = {
  --back="Altruistic Cape" -- Healing +5, Enfeebling +5, Divine +5
  --waist="Bishop's Sash"
}

sets.Dark_Skill = {
  neck="Incanter's Torque"
}

sets.Stun = set_combine(sets.Magic_Acc,{
  -- Hybrid between Magic Accuracy and Fast Cast
  ammo="Sapience Orb",
  --head="Nahtirah Hat",
  neck="Orunmila's Torque",
  body={ name="Merlinic Jubbah", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','"Fast Cast"+7','DEX+10',}},
  ring2="Prolix Ring",
  back="Swith cape +1",
  waist="Ninurta's Sash"
})

if (Main_Job ~= 'WHM') then
  sets.Stun = set_combine(sets.Stun,{legs="Psycloth Lappas"}) 
end

sets.Drain = {
  ammo="Pemphredo Tathlum",
  head="Pixie Hairpin +1",
  body="Shango Robe",
  neck="Erra Pendant",
  ring1="Evanescence Ring",
  ring2="Archon Ring",
  waist="Fucho-no-obi",
}

if (Dark_Mage) then
  sets.Drain = set_combine(sets.Drain,{ 
	hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+23','"Drain" and "Aspir" potency +9','"Mag.Atk.Bns."+1',}},
	feet={ name="Merlinic Crackows", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Drain" and "Aspir" potency +4','MND+2','Mag. Acc.+12','"Mag.Atk.Bns."+14',}},
  })
end

sets.midcast["WarpII"] = set_combine(sets.Fast_Cast,{
})

--- ===============================
--- 	Melee Sets
--- ===============================

sets.TP.Base = {
  head="Telchine Cap",
  neck="Asperity Necklace",
  --ear1="Bladeborn Earring",
  --ear2="Steelflash Earring",
  ring1="Rajas Ring",
  --ring2="K'yares Ring",
  body="Onca Suit",
  --back="Kayapa Cape",
  waist="Windbuffet Belt +1"
}

sets.WS_All= {
  --head="Sukeroku Hachi.",
  neck="Fotia Gorget",
  ear1="Moonshade Earring",
  ear2="Brutal Earring",
  --back="Rancorous Mantle",
  waist="Fotia Belt"
}

--- ===============================
--- 	Idle Sets
--- ===============================	

if world.area == 'Nyzul Isle' then
  sets.Movement = {feet="Hippomenes Socks"}
else
  sets.Movement = {feet="Herald's Gaiters"}
end

sets.Town = set_combine(sets.Town,{
})

--- ===============================
--- 	Supplies
--- ===============================

-- For Organizer
sets.Other = {}
sets.Other["Warp"] = {ring1="Warp Ring"}
sets.Other["Exp"] = {
  --ring1="Echad Ring",
  --ring2="Emperor Band"
}
sets.Other["CP"] = {
  --ring1="Trizek Ring",
  --ring2="Capacity Ring",
  back="Mecisto. Mantle"
}
sets.Other["Misc"] = {
  --back="Nexus Cape"
}

sets.Blacksmithing = {
  --body="Blacksmith's Apron",
  --hands="Smithy's Mitts"
}

end