require('Jenie_Mage')

--- Build Sets
function get_job_sets()
	get_base_sets()

	Macro_Book = 19
	Macro_Set = 2

	--- Job specific self-timers.
	--- Buff_Timers = T{
	---	  ['Bolster'] = 180
	--- }

	sets.weapons = {main="Idris",sub="Genmei Shield",range="Dunna"
	}

--- ===============================
--- 	Job Abilities
--- ===============================

  sets.JA['Full Circle'] = {head="Azimuth hood +1",body="Geomancy Tunic +1",hands="Bagua mitaines +1"}
  sets.JA['Radial Arcana'] = {feet="Bagua Sandals +1"}
  sets.JA['Bolster'] = {body="Bagua Tunic +1"}
  sets.JA['Life Cycle'] = {body="Geomancy Tunic +1",back="Nantosuelta's Cape"}

	
--- ===============================
--- 	DT Sets
--- ===============================	

	--- Full -DT%. For TP/PDT and idle sets.
  sets.DT = set_combine(sets.DT, {
    range="Dunna", --- Luopan DT -5%
	})

--- ===============================
--- 	Movement Sets
--- ===============================	

	--- Movement  For Running
	sets.Movement = set_combine(sets.Refresh, {
    feet="Geomancy Sandals +1", --- Movement speed +12%
	body="Azimuth Coat +1",
    hands="Bagua Mitaines +1",
	legs="Assiduity Pants +1"
  })	
	
--- ===============================
--- 	Refresh Sets
--- ===============================	

	--- REFRESH: 3 (base) + 2 MP/tic
	sets.Refresh = set_combine(sets.Refresh, {
	body="Azimuth Coat +1",
    hands="Bagua Mitaines +1",
	legs="Assiduity Pants +1"
  })

--- ===============================
--- 	Precasts
--- ===============================
	
	sets.Fast_Cast = set_combine(sets.Fast_Cast,{ --- Current: 32 (Base) + 10
		range="Dunna",
		legs="Geomancy Pants +1" --- +11%, Spell interupt down 20%
	})

--- ===============================
--- 	Healing Magic
--- ===============================

   --- Caps at 50%, currently 37%
	sets.Cure_Potency = set_combine(sets.Cure_Potency,{

	})
  
  sets.Cure_Extras = {

	}


--- ===============================
--- 	Offensive Magic
--- ===============================

    sets.Some_MAcc = set_combine(sets.Some_MAcc,{
    })

	sets.MAB = set_combine(sets.MAB,{
	  main="Grioavolr",
	  sub="Niobid Strap",
	  ammo="Pemphredo Tathlum"
	})

	sets.Enfeeble_Skill = set_combine(sets.Enfeeble_Skill,{
		hands="Azimuth gloves +1", --- Enfeebling +18, Macc +27
		back="Lifestream Cape", --- Enfeebling +10
	})
	
	sets.Dark_Skill = set_combine(sets.Dark_Skill,{
	  head="Pixie Hairpin +1",
      ammo="Hydrocera",
      neck="Incanter's Torque",
      ear2="Gwati Earring",
      ear1="Barkaro. Earring",
      body="Shango Robe",
      --hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','"Drain" and "Aspir" potency +11','Mag. Acc.+8','"Mag.Atk.Bns."+13',}},
      ring1="Mephitas's Ring +1",
      ring2="Evanescence Ring",
      --back="Bane Cape",
      waist="Fucho-no-Obi",
      --legs="Amalric Slops +1",
      --feet="Amalric Nails +1"
	})

--- ===============================
--- 	Geomancy Magic
--- ===============================
	
	sets.Geomancy_Skill = { --- Inate Skill: 394 + 394 = 788
		main="Idris",
		sub="Genmei Shield",
		range="Dunna", --- Handbell +18, Geomancy +5
		head="Azimuth hood +1", --- Geomancy +15
		neck="Incanter's Torque", --- Magic Skills +10
		body="Bagua Tunic +1", --- Geomancy +12
		hands="Geo. Mitaines +1", --- Geomancy +15
		back="Lifestream Cape", --- Geomancy +5,+10 (Indi Duration +10)
		--feet="Medium's Sabots" -- Handbell +5
	}
	
	sets.Indi = {
		main="Idris",
		sub="Genmei Shield",
		legs="Bagua pants +1",
		feet="Azimuth Gaiters +1"
	}
	
	sets.Geo = {}
	
  -- Combining pants for spell interuption down.
	sets.midcast["Geomancy"] = set_combine(sets.Geomancy_Skill, {legs="Geomancy Pants +1"})

--- ===============================
--- 	Utility Modes
--- ===============================

  Utility_Title = "Luopan-PDT"
  Utility_Type = "Idle"
	Utility_Set_Names = {"Off","On"}
  
	sets.Utility = {}
	sets.Utility[Utility_Title] = {}
	
	sets.Utility["Luopan-PDT"]["On"] = { --Pet: Regen +26, DT -38%
		main="Sucellus", -- Pet: Regen +3, DT -3%
		sub="Genmei Shield",
		range="Dunna", --- Luopan: DT -5%
		head={ name="Telchine Cap", augments={'Pet: Mag. Evasion+20','Pet: "Regen"+3','Pet: Damage taken -4%',}}, --- Pet: Regen +3, DT -4%
		body={ name="Telchine Chas.", augments={'Pet: "Regen"+3','Pet: Damage taken -4%',}}, --- Pet: Regen +3, DT -4%
		hands="Geo. Mitaines +1", --- Luopan: DT -11%
		ear1="Etiolation Earring", --- Pet: PDT -3%
		ear2="Handler's Earring +1", -- Pet: PDT-4%
		back={ name="Nantosuelta's Cape", augments={'INT+20','Eva.+20 /Mag. Eva.+20','Pet: "Regen"+10',}}, --- Pet: Regen +10
		waist="Isa Belt", --- Pet: Regen +1, DT -3%
		legs={ name="Telchine Braconi", augments={'Pet: "Regen"+3','Pet: Damage taken -4%',}}, --- Pet: Regen +3, DT -4%
		feet={ name="Telchine Pigaches", augments={'Pet: "Regen"+3','Pet: Damage taken -4%',}} --- Pet: Regen +3, DT -4%
	}

end



--- ===============================
--- 	Status Change Functions
--- ===============================

function job_specific_precast(spell)
  if (string.find(spell.english,'Indi-') or string.find(spell.english,'Geo-')) then
    equip(set_combine(sets.Fast_Cast, sets.Quick_Magic, {ammo=empty, range="Dunna"}))
    return true
  else
    return false
  end  
end