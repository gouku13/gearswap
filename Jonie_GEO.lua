require('Jonie_Mage')

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

  sets.JA['Full Circle'] = {head="Azimuth hood +1",body="Geomancy Tunic +1",hands="Bagua mitaines +1"}
  sets.JA['Radial Arcana'] = {feet="Bagua Sandals +1"}
  sets.JA['Bolster'] = {body="Bagua Tunic +1"}
  sets.JA['Life Cycle'] = {body="Geomancy Tunic +1",}

	
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
		feet="Geomancy Sandals +1" --- Movement speed +12%
	})	
	
--- ===============================
--- 	Refresh Sets
--- ===============================	

	--- REFRESH: 3 (base) + 2 MP/tic
	sets.Refresh = set_combine(sets.Refresh, {
		body="Amalric Doublet",
		hands="Bagua Mitaines +1",
		legs="Assiduity Pants +1"
    })

--- ===============================
--- 	Precasts
--- ===============================
	
	sets.Fast_Cast = set_combine(sets.Fast_Cast,{ --- 
		main="Solstice",
		sub="Chanter's Shield",
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
	})

	sets.Enfeeble_Skill = set_combine(sets.Enfeeble_Skill,{
		hands="Azimuth gloves", --- Enfeebling +18, Macc +27
		back="Lifestream Cape", --- Enfeebling +10
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
		body="Bagua Tunic +1", --- Geomancy +12
		hands="Geo. Mitaines +1", --- Geomancy +15
		back={ name="Lifestream Cape", augments={'Geomancy Skill +10','Indi. eff. dur. +20',}}, --- Geomancy +5,+10 (Indi Duration +20)
		feet="Medium's Sabots" -- Handbell +5
	}
	
	sets.Indi = {
		main="Solstice",
		sub="Genmei Shield",
		back={ name="Lifestream Cape", augments={'Geomancy Skill +10','Indi. eff. dur. +20',}}, 
		legs="Bagua pants +1",
		feet="Azimuth Gaiters"
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
	
	sets.Utility["Luopan-PDT"]["On"] = {
		main="Sucellus",
		sub="Genmei Shield",
		range="Dunna", --- Luopan DT -5%
		head="Azimuth Hood",
		hands="Geo. Mitaines +1", --- Luopan: -10%
		--ear1="Handler's Earring",
		--ear2="Handler's Earring +1",
		back={ name="Lifestream Cape", augments={'Geomancy Skill +2','Indi. eff. dur. +11','Pet: Damage taken -4%','Damage taken-2%',}}, --- Pet: DT -4%
		--waist="Isa Belt", --- Pet: DT -3%, Regen + 1
		legs="Psycloth Lappas",
		feet="Bagua Sandals +1" --- Luopan: Regen + 2
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
