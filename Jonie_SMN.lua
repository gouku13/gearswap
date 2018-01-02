require('Jonie_Mage')

--- Build Sets
function get_job_sets()
  get_base_sets()

	Macro_Book = 10
	Macro_Set = 1

	sets.weapons = {main="Nirvana",sub="Elan Strap +1"}
    sets.TP_Weapon = {}
	sets.proc_weapons = {}

--- ===============================
--- 	Custom Timers
--- ===============================
	
    Custom_Timers = {
      ['Dia II'] = {156, nil},
    }
  
--- ===============================
--- 	Job Abilities
--- ===============================

	sets.JA['Astral Flow'] = {head="Glyphic Horn +1"}
	sets.JA['Mana Cede'] = {hands="Beckoner's Bracers +1"}
	sets.JA['Elemental Siphon'] = set_combine(sets.Summoning_Skill, {
	  main="Espiritus",
	  sub="Vox Grip",
	  ammo="Esper Stone +1",
	  head="Baayami Hat", -- Summoning +26
	  neck="Incanter's Torque", -- Summoning +10
	  ear1="Andoaa Earring", -- Summoning +5
	  ear2="Summoning Earring", -- Summoning +3
	  body="Baayami Robe", -- Summoning +32
      hands="Baayami Cuffs", -- Summoning +28
	  ring1="Evoker's Ring", -- Summoning +10
	  ring2="Zodiac Ring",
	  back={ name="Conveyance Cape", augments={'Summoning magic skill +5','Pet: Enmity+12','Blood Pact Dmg.+1',}}, -- Summoning +13
      waist="Kobo Obi", -- Summoning +8
      legs="Baayami Slops", -- Summoning +30
	  feet="Beckoner's Pigaches +1"
	  })

--- ===============================
--- 	DT Sets
--- ===============================	

	--- Full -DT%. For TP/PDT and idle sets.
  sets.DT = set_combine(sets.DT, {
    back="Moonbeam Cape"
  })

--- ===============================
--- 	Refresh Sets
--- ===============================	

	--- REFRESH: 3 (base) + 5 MP/tic
  sets.Refresh = set_combine(sets.Refresh,{
    head="Beckoner's Horn +1", -- +2 MP/tic
    body="Apogee Dalmatica +1", -- +4 MP/tic
    hands="Asteria Mitts +1", -- +1 MP/tic
    back="Moonbeam Cape"
  })

--- ===============================
--- 	Fast Cast
--- ===============================	

  sets.Fast_Cast = set_combine(sets.Fast_Cast,{ -- Currently FC 68%, QM 10%
    body="Inyanga Jubbah +2",
	back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Eva.+20 /Mag. Eva.+20','Pet: Mag. Acc.+10','"Fast Cast"+10',}},
  })
  
  sets.Cure_Cheat = {
    main="Nirvana",
    sub="Elan Strap +1",
    ammo="Sancus Sachet +1",
    head="Apogee Crown +1",
    ear1="Lugalbanda Earring", 
    ear2="Gelos earring",
    body="Apogee Dalmatica +1",
    hands={ name="Merlinic Dastanas", augments={'Pet: Accuracy+28 Pet: Rng. Acc.+28','Blood Pact Dmg.+9','Pet: DEX+4',}},
    ring1="Varar Ring +1",
    ring2="Varar Ring +1", 
    back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Attack+10 Pet: Rng.Atk.+10','Pet: "Regen"+10',}},
    waist="Incarnation Sash",
    legs="Apogee Slacks +1",
    feet="Apogee Pumps +1"
	}
    

  -- Perpetuation Gear
  sets.Perpetuation_Cost = {
    main="Nirvana", -- Perpet: -8
    neck="Caller's Pendant", -- Pet: Regain +2.5/tic
    ring2="Evoker's Ring" -- Perpet: -1
  }
  
  sets.Perpetuation = {}
  sets.Perpetuation['Carbuncle'] = set_combine(sets.Perpetuation_Cost,{
    hands="Asteria Mitts +1" }) -- Perpet: /2
  sets.Perpetuation['Fenrir'] = set_combine(sets.Perpetuation_Cost,{
    head="Glyphic Horn +1", feet="Convoker's Pigaches +1"}) -- Perpet: -8
  sets.Perpetuation['Ifrit'] = set_combine(sets.Perpetuation_Cost,{
    head="Glyphic Horn +1", feet="Convoker's Pigaches +1"}) -- Perpet: -8
  sets.Perpetuation['Titan'] = set_combine(sets.Perpetuation_Cost,{
    head="Glyphic Horn +1", feet="Convoker's Pigaches +1"}) -- Perpet: -8
  sets.Perpetuation['Leviathan'] = set_combine(sets.Perpetuation_Cost,{
    head="Glyphic Horn +1", feet="Convoker's Pigaches +1"}) -- Perpet: -8
  sets.Perpetuation['Garuda'] = set_combine(sets.Perpetuation_Cost,{
    head="Glyphic Horn +1", feet="Convoker's Pigaches +1"}) -- Perpet: -8
  sets.Perpetuation['Shiva'] = set_combine(sets.Perpetuation_Cost,{
    head="Glyphic Horn +1", feet="Convoker's Pigaches +1"}) -- Perpet: -8
  sets.Perpetuation['Ramuh'] = set_combine(sets.Perpetuation_Cost,{
    head="Glyphic Horn +1", feet="Convoker's Pigaches +1"}) -- Perpet: -8
  sets.Perpetuation['Diabolos'] = set_combine(sets.Perpetuation_Cost,{
    head="Glyphic Horn +1", feet="Convoker's Pigaches +1"}) -- Perpet: -8
  sets.Perpetuation['Cait Sith'] = set_combine(sets.Perpetuation_Cost,{
    hands="Lamassu Mitts +1",feet="Convoker's Pigaches +1"  }) -- Perpet: -4
  sets.Perpetuation['Alexander'] = sets.Summoning_Skill

  sets.resting = set_combine(sets.resting, sets.Refresh)

--- ===============================
--- 	Summoning
--- ===============================

  -- Avatar TP Set
  sets.Pet.TP = {
    ammo="Sancus Sachet +1", -- Avatar: Level 119
    head="Beckoner's Horn +1", 
    neck="Shulmanu Collar", -- Pet: Acc +10 Atk+5 Regen +1
    ear1="Enmerkar Earring", -- Pet: Acc +15 "Store TP" +8 DT -3%
    ear2="Domesticator's Earring", -- Pet: Enmity +5, Double Attack +3%
    --body="Shomonjijoe +1", -- Avatar: Enmity +14
    hands="Regimen Mittens", -- Pet: Acc +20, M.Acc +20, Haste +6%
	ring1="Varar Ring +1",
    back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Attack+10 Pet: Rng.Atk.+10','Pet: "Regen"+10',}},
	ring2="Varar Ring +1",
    waist="Klouskap Sash", -- Pet: Haste +8%
    legs="Convoker's Spats +1", -- Avatar: Acc +20, Enmity +4
    feet="Psycloth Boots" -- Avatar: Acc +20, Atk +20, Double Attack +3%
  }
  
  sets.Pet.TP_SomeAcc = set_combine(sets.Pet.TP,{
    -- Throw in some Pet: Accuracy gear here
  })
  
  sets.Pet.TP_FullAcc = set_combine(sets.Pet.TP_SomeAcc,{
    -- Throw in all Pet: Accuracy gear here
  })
  
  

  -- Pure Summoning Magic skill
  sets.Summoning_Skill = {
	--sub="Vox Grip",
    ammo="Sancus Sachet +1", -- Not skill, but Avatar lv.119
    head="Baayami Hat", -- Summoning +26
    neck="Incanter's Torque", -- Summoning +10
	ear1="Andoaa Earring", -- Summoning +5
    ear2="Summoning Earring", -- Summoning +3
    body="Baayami Robe", -- Summoning +32
    hands="Baayami Cuffs", -- Summoning +28
    ring2="Evoker's Ring", -- Summoning +10
    ring1="Stikini Ring", -- All Magic Skills +5
    back={ name="Conveyance Cape", augments={'Summoning magic skill +5','Pet: Enmity+12','Blood Pact Dmg.+1',}}, -- Summoning +13
    waist="Kobo Obi", -- Summoning +8
    legs="Baayami Slops", -- Summoning +30
    feet="Baayami Sabots", -- Summoning +24
  }
  
  sets.BP = {}
  
  --- Blood Pact Delay -
  sets.BP_Delay = set_combine(sets.Summoning_Skill,{ --- Note: BP I Caps at -15, BP II has no known cap
    ammo="Sancus Sachet +1", -- BP Delay II -7
    head="Beckoner's Horn +1", -- BP Delay -8
    ear1="Evans Earring", -- BP Delay -2
    body="Apogee Dalmatica +1", -- BP Delay II -3
    hands="Glyphic Bracers +1", -- BP Delay -6
    back={ name="Conveyance Cape", augments={'Summoning magic skill +4','Pet: Enmity+5','Blood Pact Dmg.+2','Blood Pact ab. del. II -2',}}, -- BP Delay II -2
    legs="Glyphic Spats +1", -- BP Delay -6
    feet="Glyphic Pigaches +1" -- BP Delay II -1
  })
  
  -- Base BP sets containing BPD+ gear and the likes
  sets.BP.Base = set_combine(sets.Summoning_Skill,{
    main="Nirvana",
    sub="Elan Strap +1",
    ammo="Sancus Sachet +1",
    head="Apogee Crown +1",
    ear1="Lugalbanda Earring", 
    ear2="Gelos earring",
    body="Con. Doublet +3",
    hands={ name="Merlinic Dastanas", augments={'Pet: Accuracy+30 Pet: Rng. Acc.+30','Blood Pact Dmg.+8','Pet: Mag. Acc.+12',}},
    ring1="Varar Ring +1",
    ring2="Varar Ring +1", 
    back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Attack+10 Pet: Rng.Atk.+10','Pet: "Regen"+10',}},
    waist="Incarnation Sash",
    legs="Apogee Slacks +1",
    feet="Apogee Pumps +1"
  })
  
  --- Physical-based BP Rages. Switched into midcast to give extra bonuses to the rages 
  --- which correspond to physical-based skills (ie: Attack+ for Ifrit's Double Punch)
  sets.BP.Physical = set_combine(sets.BP.Base,{
    main="Nirvana",
    sub="Elan Strap +1",
    ammo="Sancus Sachet +1",
    head="Helios Band",
    neck="Shulmanu Collar",
    ear1="Lugalbanda Earring", 
    ear2="Gelos earring",
    body="Con. Doublet +3",
    hands={ name="Merlinic Dastanas", augments={'Pet: Accuracy+30 Pet: Rng. Acc.+30','Blood Pact Dmg.+8','Pet: Mag. Acc.+12',}},
    ring1="Varar Ring +1",
    ring2="Varar Ring +1",
    back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Attack+10 Pet: Rng.Atk.+10','Pet: "Regen"+10',}},
    waist="Incarnation Sash",
    legs="Apogee Slacks +1",
    feet="Helios Boots"
  })
  
  sets.BP.Physical_SomeAcc = set_combine(sets.BP.Physical,{
    -- Toss a couple Pet: Accuracy pieces in here
  })
  
  sets.BP.Physical_FullAcc = set_combine(sets.BP.Physical_SomeAcc,{
    -- Toss in all Pet: Accuracy pieces in here
  })

  --- Magical-based BP Rages. Switched into midcast to give extra bonuses to the rages 
  --- which correspond to magical-based skills (ie: MAB+ for Ramuh's Thunderspark)
  sets.BP.Magical = set_combine(sets.BP.Base,{
    main={ name="Grioavolr", augments={'Blood Pact Dmg.+9','Pet: VIT+6','Pet: Mag. Acc.+2','Pet: "Mag.Atk.Bns."+19','DMG:+9',}},
    sub="Elan Strap +1",
    ammo="Sancus Sachet +1",
    head={ name="Apogee Crown +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
    neck="Adad Amulet", -- Avatar: MAB +10
    ear1="Lugalbanda Earring", 
    ear2="Gelos earring",
    body="Apogee Dalmatica +1",
    hands={ name="Merlinic Dastanas", augments={'Pet: Accuracy+16 Pet: Rng. Acc.+16','Blood Pact Dmg.+8','Pet: STR+2','Pet: "Mag.Atk.Bns."+12',}},
    ring1="Varar Ring +1",
    ring2="Varar Ring +1",
    back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Eva.+20 /Mag. Eva.+20','Pet: Mag. Acc.+10','"Fast Cast"+10',}},
    waist="Regal Belt",
    legs="Enticer's Pants",
    feet="Apogee Pumps +1"
  })
  
  sets.BP.Magical_SomeAcc = set_combine(sets.BP.Magical,{
    -- Toss a couple Pet: Magic Accuracy pieces in here
  })
  
  sets.BP.Magical_FullAcc = set_combine(sets.BP.Magical_SomeAcc,{
    -- Toss in all Pet: Magic Accuracy pieces in here
  })
  
  -- Physical/magical BP rages. Switched into midcast to give extra bonuses to the
  -- rages which use both Attack and MAB for damage. (ie: Ifrit's Flaming Crush)
  sets.BP.Hybrid = set_combine(sets.BP.Magical,{
    main="Nirvana",
    sub="Elan Strap +1",
    ammo="Sancus Sachet +1",
    head={ name="Apogee Crown +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
    neck="Adad Amulet", -- Avatar: MAB +10
    ear1="Lugalbanda Earring", 
    ear2="Gelos earring",
    body="Con. Doublet +3",
    hands={ name="Merlinic Dastanas", augments={'Pet: Accuracy+16 Pet: Rng. Acc.+16','Blood Pact Dmg.+8','Pet: STR+2','Pet: "Mag.Atk.Bns."+12',}},
    ring1="Varar Ring +1",
    ring2="Varar Ring +1",
    back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Attack+10 Pet: Rng.Atk.+10','Pet: "Regen"+10',}},
    waist="Regal Belt",
    legs="Apogee Slacks +1",
    feet="Apogee Pumps +1"
  })
  
  sets.BP.Hybrid_SomeAcc = set_combine(sets.BP.Hybrid,{
    -- Toss a couple Pet: Accuracy / Magic Accuracy pieces in here
  })
  
  sets.BP.Hybrid_FullAcc = set_combine(sets.BP.Hybrid_SomeAcc,{
    -- Toss in all Pet: Accuracy / Magic Accuracy pieces in here
  })
  
  --[[sets.BP.Hybrid["Ifrit"] = set_combine(sets.BP.Hybrid,{
    --ring2="Fervor Ring", 
  })--]]
  
  -- Other types of BPs
  sets.BP.Debuff = set_combine(sets.BP.Base,{})
  sets.BP.Buff = set_combine(sets.Summoning_Skill,{})
  sets.BP.Other = set_combine(sets.BP.Base,{})

--- ===============================
--- 	Healing Magic
--- ===============================

   --- Caps at 50%, currently 52%
	sets.Cure_Potency = set_combine(sets.Cure_Potency,{

	})
  
  sets.Cure_Extras = set_combine(sets.Cure_Extras,{

	})

--- ===============================
--- 	Offensive Magic
--- ===============================

    sets.Magic_Acc = set_combine(sets.Magic_Acc,{
      legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Occult Acumen"+9','MND+6','Mag. Acc.+7','"Mag.Atk.Bns."+15',}},
      ring1="Kishar Ring",
    })
    sets.Some_MAcc = set_combine(sets.Some_MAcc,{
      legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Occult Acumen"+9','MND+6','Mag. Acc.+7','"Mag.Atk.Bns."+15',}}
    })
  
    sets.midcast["Dia II"] = set_combine(sets.Magic_Acc,{
	  hands="Regal Cuffs",
      ring1="Kishar Ring",
	})

	sets.MAB = set_combine(sets.MAB,{
	  main={ name="Grioavolr", augments={'Magic burst dmg.+5%','INT+11','Mag. Acc.+25','"Mag.Atk.Bns."+26','Magic Damage +3',}},
	  sub="Niobid Strap"
	})

--- ===============================
--- 	TP Sets
--- ===============================

	sets.TP.Max = set_combine(sets.TP.Max,{
    ammo="Sancus Sachet +1",
    head="Convoker's Horn +3",
    neck="Shulmanu Collar",
    ear1="Bladeborn Earring",
    ear2="Steelflash Earring",
    body="Hagondes Coat +1",
    hands="Glyphic Bracers +1",
    ring1="Rajas Ring",
    ring2="K'ayres Ring",
    back="Rancorous Mantle",
    waist="Windbuffet Belt +1",
    legs="Hagondes Pants +1",
    feet="Battlecast Gaiters"
	})
	
	sets.TP.Max = set_combine(sets.TP.Max, sets.TP_Weapon)

--- ===============================
--- 	Weaponskills
--- ===============================
	
	sets.WS_All= set_combine(sets.WS_All,{
    head="Buremte Hat",
    neck="Eddy Necklace",
    ear1="Friomisi Earring",
    ear2="Crematio Earring",
    body="Hagondes Coat +1",
    hands="Otomi Gloves",
    ring1="Rajas Ring",
    ring2="K'ayres Ring",
    back="Toro Cape",
    waist="Cascade Belt",
    legs="Hagondes Pants +1",
    feet="Umbani Boots"
	})
  
  sets.WS['Myrkr'] = set_combine(sets.WS_All,{
    head="Nahtirah Hat",
    ear1="Gifted Earring",
    ear2="Loquacious Earring",
    body="Convoker's Doublet +3",
    hands="Beckoner's Bracers +1",
    ring2="Evoker's Ring",
    ring1="Sangoma Ring",
    back="Pahtli Cape",
    waist="Hierarch Belt",
    legs="Nares Trews",
    feet="Chelona Boots +1"
  })
  
  sets.WS['Garland of Bliss'] = set_combine(sets.WS_All,sets.MAB,{
  })

--- ===============================
--- 	Utility Modes
--- ===============================


end

--- ===============================
--- 	Class Specific Functions
--- ===============================

function job_specific_precast(spell)
  if (buffactive["Astral Conduit"]) then
    return true;
  elseif (spell.type == 'BloodPactRage') or (spell.type == 'BloodPactWard') then
    equip(sets.BP_Delay);
    return true;
  elseif (spell.name == 'Assault') then
    pet_engaged = true;
    build_idle_set();
    equip(idle_set);
    return true;
  else
    return false;
  end  
end

function job_specific_midcast(spell)
  if (buffactive["Astral Conduit"]) then
    return true;
  else
    return false;
  end
end

function job_specific_aftercast(spell)
  if (buffactive["Astral Conduit"]) then
    return true;
  elseif (spell.skill == 'Summoning Magic') then 
    avatar = spell.name
    build_idle_set()
    equip(idle_set)
  elseif (spell.name == 'Release') then
    avatar = 'none'
    build_idle_set()
    equip(idle_set)
  else
    return false;
  end
end

function job_specific_build_idle(set)
  if (buffactive["Avatar's Favor"]) then
    set = set_combine(set, {head="Beckoner's Horn +1"})
  end
  return set
end

function job_specific_build_engaged(set)
  if (buffactive["Avatar's Favor"]) then
    set = set_combine(set, {head="Beckoner's Horn +1"})
  end
  return set
end

function pet_midcast(spell)
  local BP_Type = none
  local BP_Set = false
  
  if BP_Physical:contains(spell.name) then
    if (Accuracy_Index > 1) then
      if (Accuracy_Index > 2) then
        BP_Set = sets.BP.Physical_FullAcc
      else
        BP_Set = sets.BP.Physical_SomeAcc
      end
    else
      BP_Set = sets.BP.Physical
    end
  elseif BP_Hybrid:contains(spell.name) then
    if (Accuracy_Index > 1) then
      if (Accuracy_Index > 2) then
        BP_Set = sets.BP.Hybrid_FullAcc
      else
        BP_Set = sets.BP.Hybrid_SomeAcc
      end
    else
      BP_Set = sets.BP.Hybrid
    end
  elseif BP_Magical:contains(spell.name) then
    if (Accuracy_Index > 1) then
      if (Accuracy_Index > 2) then
        BP_Set = sets.BP.Magical_FullAcc
      else
        BP_Set = sets.BP.Magical_SomeAcc
      end
    else
      BP_Set = sets.BP.Magical
    end
  elseif BP_Debuff:contains(spell.name) then
    BP_Set = sets.BP.Debuff
  elseif BP_Buff:contains(spell.name) then
    BP_Set = sets.BP.Buff
  elseif BP_Other:contains(spell.name) then
    BP_Set = sets.BP.Other
  end
  if (BP_Set) then
    if (BP_Set[avatar]) then
      equip(BP_Set[avatar])
    else
      equip(BP_Set)
    end
  else
    equip(sets.Summoning_Skill)
  end
end

function pet_aftercast(spell)
  if ((not(buffactive["Astral Conduit"])) and (player.status == 'Idle')) then
    equip(idle_set)
  end
end
