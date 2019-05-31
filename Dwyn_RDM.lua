require('Dwyn_Mage')

--- Build Sets
function get_job_sets()
  get_base_sets()
	
	Macro_Book = 5
	Macro_Set = 1

	sets.weapons = {main="Emissary",sub="Emissary"}

--- ===============================
--- 	Job Abilities
--- ===============================


--- ===============================
--- 	DT Sets
--- ===============================	

	--- Full -DT%. For TP/PDT and idle sets.
	sets.DT = set_combine(sets.DT,{ --- PDT: 35%, MDT: 5%
    ---main="Terra's Staff", --- PDT: 20%
	})



--- ===============================
--- 	Regen/Refresh Sets
--- ===============================		

	sets.Refresh = set_combine(sets.Refresh,{
    head="Duelist's Chapeau"
  })

	sets.Fast_Cast = set_combine(sets.Fast_Cast,{
  })

--- ===============================
--- 	TP Sets
--- ===============================

	sets.TP.Max = set_combine(sets.TP.Max,{
    head={ name="Taeon Chapeau", augments={'"Triple Atk."+2',}},
    body={ name="Taeon Tabard", augments={'"Triple Atk."+2',}},
    hands={ name="Taeon Gloves", augments={'"Dual Wield"+3',}},
    ring1="Tyrant's Ring",
    ring2="K'ayres Ring",
		back="Atheling Mantle",
		waist="Dynamic Belt +1",
    legs={ name="Taeon Tights", augments={'"Triple Atk."+2',}},
    feet={ name="Taeon Boots", augments={'"Dual Wield"+4',}},
	})

--- ===============================
--- 	DW Sets
--- ===============================

  sets.DW[3] = {
    hands={ name="Taeon Gloves", augments={'"Dual Wield"+3',}},
  }
  sets.DW[11] = set_combine(sets.DW[3], {
    feet={ name="Taeon Boots", augments={'"Dual Wield"+4',}},
  })

--- ===============================
--- 	Defense Modes
--- ===============================

	
--- ===============================
--- 	Accuracy Modes
--- ===============================
	
	sets.Some_Acc = set_combine(sets.Some_Acc,{
  })
	
	sets.Full_Acc = set_combine(sets.Full_Acc,{
  })



--- ===============================
--- 	Weaponskills
--- ===============================

--- ===============================
--- 	Magic
--- ===============================

  sets.Fast_Cast = set_combine(sets.Fast_Cast, sets.weapons, {
  })

  sets.Enhancing_Duration = set_combine(sets.Enhancing_Duration,{
  })

--- ===============================
--- 	Healing Magic
--- ===============================
	
	sets.MND = set_combine(sets.MND,{
	})
	
	sets.Healing_Skill = set_combine(sets.Healing_Skill,{
	})
	
	sets.Cure_Potency = set_combine(sets.Healing_Skill,{
	})
  
  sets.Cure_Potency = set_combine(sets.Cure_Potency, sets.weapons)

--- ===============================
--- 	Offensive Magic
--- ===============================	

	sets.Magic_Acc = set_combine(sets.Magic_Acc,{
	})
  
  sets.Some_MAcc = set_combine(sets.Some_MAcc,{
  })

	sets.MAB = set_combine(sets.MAB,{
	})
  


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