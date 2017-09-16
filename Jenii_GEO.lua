require('Jenii_Mage')

--- Build Sets
function get_job_sets()
	get_base_sets()

	Macro_Book = 19
	Macro_Set = 2

	--- Job specific self-timers.
	--- Buff_Timers = T{
	---	  ['Bolster'] = 180
	--- }

	sets.weapons = {main="Solstice",sub="Genmei Shield",range="Dunna"}

--- ===============================
--- 	Job Abilities
--- ===============================

  sets.JA['Full Circle'] = {head="Azimuth hood",body="Geomancy Tunic",hands="Bagua mitaines"}
  sets.JA['Radial Arcana'] = {feet="Bagua Sandals"}
  sets.JA['Bolster'] = {body="Bagua Tunic"}
  sets.JA['Life Cycle'] = {body="Geomancy Tunic",back="Nantosuelta's Cape"}

	
--- ===============================
--- 	DT Sets
--- ===============================	

	--- Full -DT%. For TP/PDT and idle sets.
    sets.DT = set_combine(sets.DT, {
		range="Dunna", --- Luopan DT -5%
		--head="Hagondes Hat +1",
		--body="Onca Suit",
		--body="Hagondes Coat +1",
		--hands="Hagondes Cuffs +1",
		--legs="Hagondes Pants +1",
		--feet="Hagondes Sabots +1",
	})

--- ===============================
--- 	Movement Sets
--- ===============================	

	--- Movement  For Running
	sets.Movement = set_combine(sets.Refresh, {
		feet="Geomancy Sandals" --- Movement speed +12%
    })	
	
--- ===============================
--- 	Refresh Sets
--- ===============================	

	--- REFRESH: 3 (base) + 2 MP/tic
	sets.Refresh = set_combine(sets.Refresh, {
		body="Geomancy Tunic",
		hands="Bagua Mitaines"
    })

--- ===============================
--- 	Precasts
--- ===============================
	
	sets.Fast_Cast = set_combine(sets.Fast_Cast,{ --- Current: 32 (Base) + 10
		main="Sucellus",
		sub="Chanter's Shield",
		range="Dunna",
		legs="Geomancy Pants", --- +11%, Spell interupt down 20%
	})

--- ===============================
--- 	Healing Magic
--- ===============================

   --- Caps at 50%, currently 37%
	sets.Cure_Potency = set_combine(sets.Cure_Potency,{

	})
  
    sets.Cure_Extras = {

	}
	
  sets.Enhancing_Duration = set_combine(sets.Enhancing_Duration,{
		main={ name="Gada", augments={'Enh. Mag. eff. dur. +6','STR+6','Mag. Acc.+18','"Mag.Atk.Bns."+7','DMG:+19',}},
		sub="Ammurapi Shield"
	})


--- ===============================
--- 	Offensive Magic
--- ===============================

    sets.Some_MAcc = set_combine(sets.Some_MAcc,{
		main="Solstice",
		sub="Ammurapi Shield",
		legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Occult Acumen"+9','MND+6','Mag. Acc.+7','"Mag.Atk.Bns."+15',}},
		back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}}
    })

	sets.MAB = set_combine(sets.MAB,{
		main={ name="Grioavolr", augments={'INT+14','Mag. Acc.+29','"Mag.Atk.Bns."+26',}},
		sub="Niobid Strap",
		back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}}
	})
	
	sets.MB = set_combine(sets.MB, {
		back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}}
	})

	sets.Enfeeble_Skill = set_combine(sets.Enfeeble_Skill,{
		main="Solstice",
		sub="Ammurapi Shield",
		ear1="Regal Earring",
		hands="Geomancy Mitaines",
		legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Occult Acumen"+9','MND+6','Mag. Acc.+7','"Mag.Atk.Bns."+15',}},
		back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}} 
	})
	
	sets.Drain = set_combine(sets.Drain, {
		ear1="Hirudinea Earring",
		ear2="Barkarole Earring",
		back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}}
	})

--- ===============================
--- 	Geomancy Magic
--- ===============================
	
	sets.Geomancy_Skill = { --- Inate Skill: 394 + 394 = 788
		main="Solstice",
		sub="Genmei Shield",
		range="Dunna", --- Handbell +18, Geomancy +5
		head="Azimuth hood", --- Geomancy +15
		neck="Incanter's Torque", --- Magic Skills +10
		body="Bagua Tunic", --- Geomancy +12
		hands="Geo. Mitaines", --- Geomancy +15
		back={ name="Lifestream Cape", augments={'Geomancy Skill +10','Indi. eff. dur. +20','Pet: Damage taken -1%',}}, --- Geomancy +5,+10 (Indi Duration +20)
		feet="Medium's Sabots" -- Handbell +5
	}
	
	sets.Indi = {
		main="Solstice",
		sub="Genmei Shield",
		range="Dunna",
		legs="Bagua pants +1",
		feet="Azimuth Gaiters +1"
	}
	
	sets.Geo = {}
	
  -- Combining pants for spell interuption down.
	sets.midcast["Geomancy"] = set_combine(sets.Geomancy_Skill, {range="Dunna",legs="Geomancy Pants +1"})

--- ===============================
--- 	Utility Modes
--- ===============================

  Utility_Title = "Luopan-PDT"
  Utility_Type = "Idle"
	Utility_Set_Names = {"Off","On"}
  
	sets.Utility = {}
	sets.Utility[Utility_Title] = {}
	
	sets.Utility["Luopan-PDT"]["On"] = {  --Luopan: DT -(Dunna/Hands/Solstice cap DT)
		main="Solstice",
		sub="Genmei Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head={ name="Telchine Cap", augments={'Mag. Evasion+8','Pet: "Regen"+2','Pet: Damage taken -4%',}},
		body={ name="Telchine Chas.", augments={'Mag. Evasion+10','Pet: "Regen"+3','Pet: Damage taken -4%',}},
		hands={ name="Telchine Gloves", augments={'Mag. Evasion+9','Pet: "Regen"+3','Pet: Damage taken -4%',}},
		legs={ name="Telchine Braconi", augments={'Mag. Evasion+9','Pet: "Regen"+3','Pet: Damage taken -4%',}},
		feet={ name="Telchine Pigaches", augments={'Mag. Evasion+25','Pet: "Regen"+3','Pet: Damage taken -4%',}},
		neck="Loricate Torque +1",
		waist="Isa Belt",
		ear1="Etiolation Earring",
		ear2="Genmei Earring",
		left_ring="Defending Ring",
		right_ring={ name="Dark Ring", augments={'Phys. dmg. taken -4%','Magic dmg. taken -6%',}},
		back={ name="Nantosuelta's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Pet: "Regen"+10',}},
	}

end



--- ===============================
--- 	Status Change Functions
--- ===============================

function job_specific_precast(spell)
  if (string.find(spell.english,'Indi-') or string.find(spell.english,'Geo-')) then
    equip(set_combine(sets.Fast_Cast, sets.Quick_Magic, {main="Solstice", ammo=empty, range="Dunna"}))
    return true
  else
    return false
  end  
end