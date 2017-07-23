require('Dwyn_Mage')

--- Build Sets
function get_job_sets()
  get_base_sets()

	Macro_Book = 4
	Macro_Set = 1

	sets.weapons = {main="Emissary",sub="Emissary"}

--- ===============================
--- 	Job Abilities
--- ===============================

  --sets.JA['Chainspell'] = {body="Vitivation Tabard +1"}
	
--- ===============================
--- 	DT Sets
--- ===============================	

	--- Full -DT%. For TP/PDT and idle sets.
    sets.DT = set_combine(sets.DT, {
	ammo="Thunder Sachet",
    head="Taeon Chapeau",
	neck="Wiglen Gorget",
    ear1="Brutal Earring",
	right_ear="Terminus Earring",
    ring1="Paguroidea Ring",
    --ear2="Suppanomimi",
    body="Taeon Tabard",
    hands="Taeon Gloves",
    --ring1="Hetairoi Ring",
    ring2="Apate Ring",
	back="Atheling Mantle",
    waist="Dynamic Belt +1",
    legs="Taeon Tights",
    feet="Taeon Boots"
	})
	
	sets.TP_All = set_combine(sets.TP_All,{
    ammo="Tiphia Sting",
    head="Taeon Chapeau",
    body="Taeon Tabard",
    hands="Taeon Gloves",
    legs="Taeon Tights",
    feet="Taeon Boots",
    neck="Asperity Necklace",
    waist="Dynamic Belt +1",
    left_ear="Steelflash Earring",
    right_ear="Bladeborn Earring",
    left_ring="K'ayres Ring",
    right_ring="Petrov Ring",
    back="Atheling Mantle",
    })

--- ===============================
--- 	Refresh Sets
--- ===============================	

	--- REFRESH: 6 (base) + 2 MP/tic
	sets.Refresh = set_combine(sets.Refresh, {
  })
  
  sets.Enhancing_Skill = set_combine(sets.Enhancing_Skill, {
  feet="Lethargy houseaux"
  })
  
  sets.Enhancing_Duration = {
  feet="Lethargy houseaux"
  }

  
--- ===============================
--- 	Precasts
--- ===============================
	
	sets.Fast_Cast = set_combine(sets.Fast_Cast,{
	})
	
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
  
  sets.Some_MAcc = set_combine(sets.Some_MAcc,{
  })

	sets.MAB = set_combine(sets.MAB,{
	})
	
	sets.MB = set_combine(sets.MB, { })

--- ===============================
--- 	Utility Modes
--- ===============================

	Utility_Title = "MB"
  Utility_Type = "Nuke"
  Utility_Set_Names = {"Off","On"}

	sets.Utility = {}
	sets.Utility[Utility_Title] = {}
	
	sets.Utility["MB"]["On"] = {
	}

end


--- ===============================
--- 	Status Change Functions
--- ===============================

function job_specific_precast(spell)
	if (Na_Spells[spell.english]) then
		if (spell.english == 'Cursna') then
			equip(sets.Cursna)
		else
      equip(sets.Fast_Cast)
		end
    return true
	else
    return false
	end
end