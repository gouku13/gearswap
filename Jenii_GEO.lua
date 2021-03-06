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

	sets.weapons = {main="Solstice",sub="Genmei Shield",range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},}

--- ===============================
--- 	Job Abilities
--- ===============================

  sets.JA['Full Circle'] = {head="Azimuth hood",body="Geomancy Tunic +3",hands="Bagua mitaines +1"}
  sets.JA['Radial Arcana'] = {feet="Bagua Sandals +1"}
  sets.JA['Bolster'] = {body="Bagua Tunic +1"}
  sets.JA['Life Cycle'] = {body="Geomancy Tunic +3",back="Nantosuelta's Cape"}

	
--- ===============================
--- 	DT Sets
--- ===============================	

	--- Full -DT%. For TP/PDT and idle sets.
    sets.DT = set_combine(sets.DT, {
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}}, --- Luopan DT -5%
		--head="Hagondes Hat +1",
		--body="Onca Suit",
		--body="Hagondes Coat +1",
		--hands="Hagondes Cuffs +1",
		--legs="Hagondes Pants +1",
		--feet="Hagondes Sabots +1",
	})

--- ===============================
--- 	Refresh Sets
--- ===============================	

	--- REFRESH: 3 (base) + 2 MP/tic
	sets.Refresh = set_combine(sets.Refresh, {
	    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
	    head={ name="Merlinic Hood", augments={'STR+4','MND+6','"Refresh"+2','Mag. Acc.+7 "Mag.Atk.Bns."+7',}},
		body="Geomancy Tunic +3",
		hands="Bagua Mitaines +1"
    })	

--- ===============================
--- 	Movement Sets
--- ===============================	

	--- Movement  For Running
	sets.Movement = set_combine(sets.Movement, {
		feet="Geomancy Sandals +3" --- Movement speed +12%
    })

--- ===============================
--- 	Precasts
--- ===============================
	
	sets.Fast_Cast = set_combine(sets.Fast_Cast,{ --- Current: 32 (Base) + 10
		main="Sucellus",
		sub="Chanter's Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		back={ name="Nantosuelta's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},
		legs="Geomancy Pants +3", --- +11%, Spell interupt down 20%
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
		main={ name="Gada", augments={'Enh. Mag. eff. dur. +5','"Mag.Atk.Bns."+19',}},
		sub="Ammurapi Shield"
	})


--- ===============================
--- 	Offensive Magic
--- ===============================

    sets.Some_MAcc = set_combine(sets.Some_MAcc,{
		main={ name="Gada", augments={'"Fast Cast"+2','MND+11','Mag. Acc.+19','"Mag.Atk.Bns."+2',}},
		sub="Ammurapi Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head="Geo. Galero +3",
		neck="Erra Pendant",
		ear1="Regal Earring",
		body="Geomancy Tunic +3",
		hands="Geo. Mitaines +3",
		back={ name="Nantosuelta's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},
		legs="Geomancy Pants +3",
		feet="Geomancy Sandals +3"
    })

	sets.MAB = set_combine(sets.MAB,{
		main="Solstice",
		sub="Ammurapi Shield",
		head="Ea Hat +1",
		ear1="Regal Earring",
		body="Ea Houppelande +1",
		hands="Amalric Gages +1",
		back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
		legs="Ea Slops +1",
	})
	
	sets.MB = set_combine(sets.MB, {
		head="Ea Hat +1",
		body="Ea Houppelande +1",
		legs="Ea Slops +1",
	})

	sets.Enfeeble_Skill = set_combine(sets.Enfeeble_Skill,{
		main={ name="Gada", augments={'"Fast Cast"+2','MND+11','Mag. Acc.+19','"Mag.Atk.Bns."+2',}},
		sub="Ammurapi Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head="Geo. Galero +3",
		neck="Erra Pendant",
		ear1="Regal Earring",
		body="Geomancy Tunic +3",
		hands="Geo. Mitaines +3",
		ring1="Kishar Ring",
		back={ name="Nantosuelta's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},
		waist="Luminary Sash",
		legs="Geomancy Pants +3",
		feet="Geomancy Sandals +3",
	})
	
	sets.Drain = set_combine(sets.Drain, {
		ear1="Hirudinea Earring",
		ear2="Barkarole Earring",
		back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
	})

--- ===============================
--- 	Geomancy Magic
--- ===============================
	
	sets.Geomancy_Skill = { --- Inate Skill: 394 + 394 = 788
		main="Solstice",
		sub="Genmei Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}}, --- Handbell +18, Geomancy +5
		head="Azimuth hood", --- Geomancy +15
		neck="Incanter's Torque", --- Magic Skills +10
		body="Bagua Tunic +1", --- Geomancy +12
		hands="Geo. Mitaines +2", --- Geomancy +15
		back={ name="Lifestream Cape", augments={'Geomancy Skill +10','Indi. eff. dur. +20','Pet: Damage taken -2%',}}, --- Geomancy +5,+10 (Indi Duration +20)
		feet="Medium's Sabots" -- Handbell +5
	}
	
	sets.Indi = {
		main="Solstice",
		sub="Genmei Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		back={ name="Lifestream Cape", augments={'Geomancy Skill +10','Indi. eff. dur. +20','Pet: Damage taken -2%',}},
		legs="Bagua pants +1",
		feet="Azimuth Gaiters"
	}
	
	sets.Geo = {}
	
  -- Combining pants for spell interuption down.
	sets.midcast["Geomancy"] = set_combine(sets.Geomancy_Skill, {range="Dunna",legs="Geomancy Pants +3"})

--- ===============================
--- 	Utility Modes
--- ===============================

  Utility_Title = "Luopan-PDT"
  Utility_Type = "Idle"
	Utility_Set_Names = {"Off","On"}
  
	sets.Utility = {}
	sets.Utility[Utility_Title] = {}
	
	sets.Utility["Luopan-PDT"]["On"] = {  --Luopan: DT -(Dunna/Hands/Solstice cap DT)
		main="Sucellus",
		sub="Genmei Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head={ name="Telchine Cap", augments={'Mag. Evasion+8','Pet: "Regen"+3','Pet: Damage taken -4%',}},
		body={ name="Telchine Chas.", augments={'Mag. Evasion+10','Pet: "Regen"+3','Pet: Damage taken -4%',}},
		hands={ name="Telchine Gloves", augments={'Mag. Evasion+9','Pet: "Regen"+3','Pet: Damage taken -4%',}},
		legs={ name="Telchine Braconi", augments={'Mag. Evasion+9','Pet: "Regen"+3','Pet: Damage taken -4%',}},
		feet={ name="Telchine Pigaches", augments={'Mag. Evasion+25','Pet: "Regen"+3','Pet: Damage taken -4%',}},
		neck="Loricate Torque +1",
		waist="Isa Belt",
		ear1="Etiolation Earring",
		ear2="Infused Earring",
		--ear2="Genmei Earring",
		left_ring="Defending Ring",
		right_ring="Dark Ring",
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