require('Lorenn_Mage')

--- Build Sets
function get_job_sets()
  get_base_sets()

	Macro_Book = 4
	Macro_Set = 1

	sets.weapons = {main="Emissary",sub="Egeking"}

--- ===============================
--- 	Job Abilities
--- ===============================

  --sets.JA['Chainspell'] = {body="Vitivation Tabard +1"}
	
--- ===============================
--- 	DT Sets
--- ===============================	

	--- Full -DT%. For TP/PDT and idle sets.
  sets.DT = set_combine(sets.DT, {
	ammo="Demonry Core",
    head="Taeon Chapeau",
    neck="Asperity Necklace",
    ear1="Dudgeon Earring",
    ear2="Heartseeker Earring",
    body="Taeon Tabard",
    hands="Taeon Gloves",
    ring1="Ulthalam's Ring",
    ring2="Cacoethic Ring",
	back="Buquwik Cape",
    waist="Windbuffet Belt",
    legs="Taeon Tights",
    feet="Taeon Boots"
	})
	
  sets.TP_All = set_combine(sets.TP_All,{
    ammo="Demonry Core",
    head="Taeon Chapeau",
    neck="Asperity Necklace",
    ear1="Dudgeon Earring",
    ear2="Heartseeker Earring",
    body="Taeon Tabard",
    hands="Taeon Gloves",
    ring1="Ulthalam's Ring",
    ring2="Cacoethic Ring",
	back="Buquwik Cape",
    waist="Windbuffet Belt",
    legs="Taeon Tights",
    feet="Taeon Boots"
  })
  
  sets.craft = set_combine(set.DT, {
	head="Midras's helm +1",
	neck="Carver's Torque",
	body="Carpenter's Apron",
	hands="Carpenter's Gloves",
	ring1="Orvail Ring",
	ring2="Craftmaster's Ring",
	back="Shaper's Shawl",
  })

--- ===============================
--- 	Refresh Sets
--- ===============================	

	--- REFRESH: 6 (base) + 2 MP/tic
	sets.Refresh = set_combine(sets.Refresh, {
	legs="Blood Cuisses"
  })
  
  sets.Enhancing_Skill = set_combine(sets.Enhancing_Skill, {
  feet="Estoqueur's houseaux +1"
  })
  
  sets.Enhancing_Duration = {
  feet="Estoqueur's houseaux +1"
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
	head="Telchine Cap",
	hands="Telchine Gloves"
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