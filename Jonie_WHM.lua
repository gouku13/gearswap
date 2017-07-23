require('Jonie_Mage')

--- Build Sets
function get_job_sets()
  get_base_sets()
  
	Macro_Book = 3
	Macro_Set = 10

	sets.weapons = {main={ name="Queller Rod", augments={'MND+15','Mag. Acc.+15','"Cure" potency +15%',}},sub="Genmei Shield"}

--- ===============================
--- 	Job Abilities
--- ===============================

    sets.JA['Devotion'] = {head="Piety Cap +1"}
    sets.JA['Benediction'] = {body="Piety Briault +1"}

--- ===============================
--- 	DT Sets
--- ===============================	

	--- Full -DT%. For TP/PDT and idle sets.
	sets.DT = set_combine(sets.DT,{
      sub="Genmei Shield" 
    })
	
	sets.craft={
	  neck="Tanner's Torque",
      body="Tanner's Apron",
      hands="Tanner's Gloves",
      ring1="Orvail Ring",
      ring2="Craftmaster's Ring",
    }

--- ===============================
--- 	Refresh Sets
--- ===============================	

	--- REFRESH: 3 (base) + 2 MP/tic
	sets.Refresh = set_combine(sets.Refresh, {
	  ammo="Homiliary",
    main="Queller Rod",
    })
  
	sets.Fast_Cast = set_combine(sets.Fast_Cast,{
	  main="Sucellus",  -- FC 5%
	  sub="Chanter's Shield",  -- FC 3%
	  back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10',}},
    })
  
	sets.Healing_Precast = set_combine(sets.Healing_Precast,{
	  main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
	  sub="Sors Shield",
	  head="Piety Cap +1",
	  neck="Aceso's Choker +1",
	  ear1="Nourishing Earring +1",
	  ear2="Mendicant's earring",
	  legs="Ebers Pantaloons +1",
	  feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}}
    })

--- ===============================
--- 	Healing Magic
--- ===============================
	
	sets.MND = set_combine(sets.MND,{
	  legs="Piety Pantaloons +1" --- MND: 15, Healing +20, Enhancing +20, Ele. Resistance + 27, Enmity-5
	})
	
	sets.Healing_Skill = set_combine(sets.Healing_Skill,{
	  main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
      hands="Theophany Mitts", -- Healing +17, Enmity -4
	  legs="Piety Pantaloons +1", --- MND: 15, Healing +20, Enhancing +20, Ele. Resistance + 27, Enmity-5
	  feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}}
	})
	
   --- Caps at 50%, currently 47%
	sets.Cure_Potency = set_combine(sets.Cure_Potency,{ -- 32% from Mage
      main={ name="Queller Rod", augments={'MND+15','Mag. Acc.+15','"Cure" potency +15%',}},
      head="Vanya Hood",
      neck="Incanter's Torque",
      ear1="Glorious Earring",
      ear2="Novia Earring",
      body="Ebers Bliaud +1",
      hands="Kaykaus Cuffs",
      ring1="Kuchekula Ring",
      ring2="Lebeche Ring",
      back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10',}},
      waist="Witful Belt",
      legs="Ebers Pantaloons +1",
      feet={ name="Vanya Clogs", augments={'MP+50','"Cure" potency +7%','Enmity-6',}}
	})
	
    sets.Enmity = set_combine(sets.Enmity,{
	})
  
	sets.Cure_Extras = {
	  body="Ebers Bliaud +1", --- Cureskin
	  waist="Ninurta's Sash", -- Haste +6%
	  legs="Ebers Pantaloons +1" --- MP Return
	}
	
	sets.Cursna = set_combine(sets.Cursna,{
	  main="Yagrush",
	  sub="Chanter's Shield",
	  hands="Fanatic Gloves",
	  back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10',}}, -- +25
	  legs="Theo. Pant. +3",
	  feet="Gendewitha Galoshes +1" 
	})
	
	sets.Divine_Caress = {
	  hands="Ebers Mitts +1",
	  back="Mending Cape"
	}
	
	sets.Cursna = set_combine(sets.Fast_Cast, sets.Healing_Skill, sets.Cursna, {head="Ebers Cap +1"})

--- ===============================
--- 	Enhancing
--- ===============================
	
  --- ENHANCING SKILL: 33 (Base) + 55 = 88
	sets.Enhancing_Skill = set_combine(Enhancing_Skill,{ 
	  main="Beneficus", --- Enhancing +15, Enhacnes Ele Resist Spells
	  sub="Ammurapi Shield",
	  neck="Incanter's Torque",
	  legs="Piety Pantaloons +1", --- Enhancing +20, Ele Resist +27, Enhances Shellra V
	  feet="Theo. Duckbills +3", --- Enhancing +22
	})

	sets.Enhancing_Duration = set_combine(sets.Enhancing_Duration,{
    sub="Ammurapi Shield",
    head="Telchine Cap", -- Enhancing Duration +7  
	  body="Telchine Chas.",  -- Enhancing Duration +10
    hands="Telchine Gloves", -- Enhancing Duration +10
	  legs="Telchine Braconi", -- Enhancing Duration +10
	  feet="Theo. Duckbills +3"
	})
  
  sets.Enhancing_Bonus["Regen"] = set_combine(sets.Enhancing_Duration,{
    main="Bolelabunga",
    head="Inyanga Tiara +1",
    body="Piety Briault +1",
    hands="Ebers Mitts +1",
    legs="Theo. Pant. +3"
  })

	sets.midcast["ProtectraV"] = set_combine(sets.midcast["Enhancing_Skill"], {
	  sub="Ammurapi Shield",
	  head="Telchine Cap", -- Enhancing Duration +7  
	  body="Telchine Chas.",  -- Enhancing Duration +10
	  hands="Telchine Gloves", -- Enhancing Duration +10
	  legs="Telchine Braconi", -- Enhancing Duration +10
	  feet="Piety Duckbills +1" --- Enhancing +15, Enhances Protectra V
	})
  
  	sets.midcast["ShellraV"] = set_combine(sets.midcast["Enhancing_Skill"], {
	  sub="Ammurapi Shield",
	  head="Telchine Cap", -- Enhancing Duration +7  
	  body="Telchine Chas.",  -- Enhancing Duration +10
	  hands="Telchine Gloves", -- Enhancing Duration +10
	  legs="Piety Pantaln. +1", -- Enhances Shellra V
	  feet="Theo. Duckbills +3", -- Enhancing Duration +10
	})
	
	sets.midcast["WarpII"] = set_combine(sets.Fast_Cast,{
	})
	
	sets.Barele = { --- Estimated annul total: 8%
	  main="Beneficus",
	  sub="Ammurapi Shield",
	  head="Ebers Cap +1", --- Set: Occasional annuls elemental damage
	  body="Ebers Bliaud +1",
	  hands="Ebers Mitts +1", --- Set: Occasional annuls elemental damage
	  legs="Piety Pantaloons +1",
	  feet="Ebers Duckbills +1" --- Set: Occasional annuls elemental damage
	}
	
	sets.midcast["Barele"] = set_combine(sets.midcast["Enhancing_Skill"], sets.Barele)
  
--- ===============================
--- 	Offensive Magic
--- ===============================

	sets.Magic_Acc = set_combine(sets.Magic_Acc,{
      main={ name="Queller Rod", augments={'MND+15','Mag. Acc.+15','"Cure" potency +15%',}},
      sub="Ammurapi Shield",
	  body="Theo. Briault +3",
	  hands="Kaykaus Cuffs",
	  back={ name="Alaunus's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
	  feet="Theo. Duckbills +3",
	})
  
	sets.Enfeeble_Skill = set_combine(sets.Enfeebling_Skill,{
	  head="Befouled Crown",
	  body="Theo. Briault +3",
	  hands="Kaykaus Cuffs",
	  ring1="Kishar Ring",
	  ring2="Sangoma Ring",
	  waist="Rumination Sash",
	  feet="Theo. Duckbills +3", 
	})

end

--- ===============================
--- 	Status Change Functions
--- ===============================
function job_specific_midcast(spell)
	if (Na_Spells[spell.english]) then
		if (spell.english == 'Cursna') then
			equip(sets.Cursna)
		else
    	if (buffactive['Divine Caress']) then
        equip(set_combine(sets.Fast_Cast,sets.Divine_Caress,{main="Yagrush",sub="Chanter's Shield",}))
      else
        equip(set_combine(sets.Fast_Cast,{main="Yagrush",sub="Chanter's Shield",}))
      end
		end
    return true
	else
    return false
	end
end