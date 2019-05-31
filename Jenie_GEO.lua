require('Jenie_Mage')

--- Build Sets
function get_job_sets()
	get_base_sets()

	Macro_Book = 19
	Macro_Set = 2

	sets.weapons = {main="Solstice", sub="Genbu's Shield", ranged="Dunna", ammo="none"}

--- ===============================
--- 	Job Abilities
--- ===============================

	sets.JA['Full Circle'] = {body="Geomancy Tunic"}
  sets.JA['Radial Arcana'] = {feet="Bagua Sandals"}

	
--- ===============================
--- 	DT Sets
--- ===============================	

	--- Full -DT%. For TP/PDT and idle sets.
  sets.DT = set_combine(sets.DT, {
    range="Dunna", --- Luopan DT -5%
	})

--- ===============================
--- 	Refresh Sets
--- ===============================	

	--- REFRESH: 3 (base) + 2 MP/tic
	sets.Refresh = set_combine(sets.Refresh, {
    hands="Bagua Mitaines"
  })

--- ===============================
--- 	Precasts
--- ===============================
	
	sets.Fast_Cast = set_combine(sets.Fast_Cast,{ --- Current: 32 (Base) + 10
    back="Lifestream Cape",
		legs="Geomancy Pants" --- +?% (+1 is +11%, so maybe 10%), Spell interupt down 20%
	})

--- ===============================
--- 	Healing Magic
--- ===============================

   --- Caps at 50%, currently 37%
	sets.Cure_Potency = set_combine(sets.Cure_Potency,{

	})
  
	sets.Enmity = set_combine(sets.Enmity,{
    hands="Bagua Mitaines" -- -5
	})
  
  sets.Cure_Extras = {

	}


--- ===============================
--- 	Offensive Magic
--- ===============================

  sets.Some_MAcc = set_combine(sets.Some_MAcc,{
  })

	sets.MAB = set_combine(sets.MAB,{
    body="Bagua Tunic", -- +20
	})

	sets.Enfeeble_Skill = set_combine(sets.Enfeeble_Skill,{
		back="Lifestream Cape", -- Enfeebling +10
	})
  
  sets.Dark_Skill = set_combine(sets.Dark_Skill,{
		body="Geomancy Tunic", -- Dark +15
	})
  
  
  sets.Drain = set_combine(sets.Drain,{
    head="Bagua Galero" -- Drain/Aspir Potency +20
  })

--- ===============================
--- 	Geomancy Magic
--- ===============================
	
  -- Total Combined Skill: 897
	sets.Geomancy_Skill = { --- Inate Skill: 402 + 402 = 802
		range="Dunna", --- Handbell +18, Geomancy +5
    neck="Incanter's Torque", --- Magic Skills +10
		body="Bagua Tunic", --- Geomancy +10
		hands="Geomancy Mitaines", --- Geomancy +15, Luopan DT -10%
		back="Lifestream Cape", --- Geomancy + 5 (Aug: Geo +9, Indi Durr +10%, Pet DT -3%)
	}
  
  sets.Geo = {}
  sets.Indi = {
    legs="Bagua Pants" -- Indi duration +12
  }
	
  -- Combining pants for spell interuption down.
	sets.midcast["Geomancy"] = set_combine({ammo=empty},sets.Geomancy_Skill, {legs="Geomancy Pants"})

--- ===============================
--- 	Utility Modes
--- ===============================

  Utility_Title = "Luopan-PDT"
  Utility_Type = "Idle"
	Utility_Set_Names = {"Off","On"}
  
	sets.Utility = {}
	sets.Utility[Utility_Title] = {}
	
	sets.Utility["Luopan-PDT"]["On"] = {
		range="Dunna", --- Luopan DT -5%
		hands="Geomancy Mitaines", --- Geomancy +15, Luopan DT -10%
    back="Lifestream Cape", --- Geomancy + 5 (Aug: Geo +9, Indi Durr +10%, Pet DT -3%
		feet="Bagua Sandals" --- Luopan: Regen + 2
	}
  
  sets.Movement = {
    feet="Geomancy Sandals"
  }

end



--- ===============================
--- 	Status Change Functions
--- ===============================

function job_specific_precast(spell)
  if (string.find(spell.english,'Indi-') or string.find(spell.english,'Geo-')) then
    equip(set_combine(sets.Quick_Magic, sets.Fast_Cast, {ammo=empty, range="Dunna"}))
    return true
  else
    return false
  end  
end