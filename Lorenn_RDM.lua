require('Lorenn_Mage')

--- Build Sets
function get_job_sets()
  get_base_sets()

	Macro_Book = 4
	Macro_Set = 1

	--sets.weapons = {main="Emissary",sub="Emissary"}

--- ===============================
--- 	Job Abilities
--- ===============================

  sets.JA['Chainspell'] = {body="Vitivation Tabard +1"}
	
--- ===============================
--- 	DT Sets
--- ===============================	

	--- Full -DT%. For TP/PDT and idle sets.
  sets.DT = set_combine(sets.DT, {
	ammo="Thunder Sachet",
	neck="Wiglen Gorget",
    ear1="Brutal Earring",
	ear2="Sherida Earring",
    ring1="Paguroidea Ring",
    head="Viti. Chapeau +1", 
    body="Hagondes Coat +1", 
    hands="Taeon Gloves",
    --ring1="Hetairoi Ring",
    ring2="Apate Ring",
	back="Atheling Mantle",
    waist="Dynamic Belt +1",
    legs="Crimson Cuisses",
    feet="Taeon Boots"
	})
	
  sets.TP.Max = set_combine(sets.TP.Max,{
    ammo="Thunder Sachet",
    head="Taeon Chapeau",
    neck="Asperity Necklace",
    ear1="Brutal Earring",
    ear2="Sherida Earring",
    body="Taeon Tabard",
    hands="Taeon Gloves",
    --ring1="Hetairoi Ring",
    ring2="Apate Ring",
	back="Atheling Mantle",
    waist="Dynamic Belt +1",
    legs="Taeon Tights",
    feet="Taeon Boots"
  })
  
  sets.craft = set_combine(set.DT, {
	main="Caduceus",
	head="Midras's helm +1",
	neck="Alchemist's Torque",
	body="Alchemist's Apron",
	ring1="Orvail Ring",
	ring2="Craftmaster's Ring",
	back="Shaper's Shawl",
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
	head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +7',}},
	body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +9',}},
	hands="Atrophy Gloves +3",
	legs={ name="Telchine Braconi", augments={'Enh. Mag. eff. dur. +9',}},
	feet="Leth. Houseaux",
	}

  
--- ===============================
--- 	Precasts
--- ===============================
	
  sets.Fast_Cast = set_combine(sets.Fast_Cast,{
	head="Atro. Chapeau +1",
    body="Viti. Tabard +1",
	})
	
--- ===============================
--- 	Healing Magic
--- ===============================

   --- Caps at 50%, currently 52%
  sets.Cure_Potency = set_combine(sets.Cure_Potency,{
    legs="Atrophy Tights +3",
	})
  
  sets.Cure_Extras = set_combine(sets.Cure_Extras,{

	})

  sets.midcast.Refresh = set_combine(sets.Enhancing_Duration,{
	body="Atrophy Tabard +3",legs="Lethargy Fuseau"
	})

--- ===============================
--- 	Offensive Magic
--- ===============================
  
  sets.Some_MAcc = set_combine(sets.Some_MAcc,{
	ammo="Regal Gem",
    head="Viti. Chapeau +1",
	neck="Erra Pendant",
	ear1="Dignitary's Earring",
	ear2="Gwati Earring",
    body="Atrophy Tabard +3",
	hands="Leth. Gantherots",
	ring1="Stikini Ring", 
	ring2="Stikini Ring",
	back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Cure" potency +10%',}},
	waist="Luminary Sash",
	legs={ name="Chironic Hose", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Enmity-2','MND+14','Mag. Acc.+14','"Mag.Atk.Bns."+4',}},
	feet="Vitivation Boots +1"
    })
  
  sets.Magic_Acc = set_combine(sets.Magic_Acc,{
	ammo="Regal Gem",
    head="Viti. Chapeau +1",
	neck="Erra Pendant",
	ear1="Dignitary's Earring",
	ear2="Gwati Earring",
    body="Atrophy Tabard +3",
	hands="Leth. Gantherots",
	ring1="Kishar Ring", 
	ring2="Stikini Ring",
	back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Cure" potency +10%',}},
	waist="Luminary Sash",
	legs={ name="Chironic Hose", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Enmity-2','MND+14','Mag. Acc.+14','"Mag.Atk.Bns."+4',}},
	feet="Vitivation Boots +1"
    })
  
  sets.Enfeeble_Skill = {
	ammo="Regal Gem",
    head="Viti. Chapeau +1",
	neck="Erra Pendant",
	ear1="Dignitary's Earring",
	ear2="Gwati Earring",
    body="Atrophy Tabard +3",
	hands="Leth. Gantherots",
	ring1="Kishar Ring", 
	ring2="Stikini Ring",
	back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Cure" potency +10%',}},
	waist="Luminary Sash",
	legs={ name="Chironic Hose", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Enmity-2','MND+14','Mag. Acc.+14','"Mag.Atk.Bns."+4',}},
	feet="Vitivation Boots +1"
  }

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