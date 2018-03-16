require('Jenii_Mage')

--- Build Sets
function get_job_sets()
  get_base_sets()

	Macro_Book = 4
	Macro_Set = 1

	--sets.weapons = {main={ name="Grioavolr", augments={'"Fast Cast"+3','MND+7','Mag. Acc.+25','"Mag.Atk.Bns."+25','Magic Damage +2',}},sub="Niobid Strap"}

--- ===============================
--- 	Job Abilities
--- ===============================

  sets.JA['Chainspell'] = {body="Vitivation Tabard +1"}
	
--- ===============================
--- 	DT Sets
--- ===============================	

	--- Full -DT%. For TP/PDT and idle sets.
  sets.DT = set_combine(sets.DT, {
      head={ name="Merlinic Hood", augments={'STR+4','MND+6','"Refresh"+2','Mag. Acc.+7 "Mag.Atk.Bns."+7',}},
	  hands={ name="Merlinic Dastanas", augments={'Pet: CHR+8','Attack+12','"Refresh"+1',}},
	  legs="Carmine Cuisses +1",
	})
  
  sets.DW = {
    ear1="Eabani Earring",
    ear2="Suppanomimi",
    waist="Shetal Stone"
  }
	
	sets.TP.Base = set_combine(sets.TP.Base, sets.DW,{
    ammo="Ginsen",
    head="Taeon Chapeau",
    neck="Asperity Necklace",
    body="Taeon Tabard",
    hands="Taeon Gloves",
    ring1="Hetairoi Ring",
    ring2="Rajas Ring",
    back="Bleating Mantle",
    legs={ name="Taeon Tights", augments={'Accuracy+25','"Dual Wield"+4','STR+5 AGI+5',}},
    feet={ name="Taeon Boots", augments={'Accuracy+20 Attack+20','"Dual Wield"+4','STR+7 DEX+7',}},
  })

--- ===============================
--- 	Refresh Sets
--- ===============================	

	--- REFRESH: 6 (base) + 2 MP/tic
	sets.Refresh = set_combine(sets.Refresh, {
	  --head="Vitivation Chapeau +1",
	  legs="Carmine Cuisses +1",
  })
  
  sets.Enhancing_Skill = set_combine(sets.Enhancing_Skill, {
  hands="Vitivation Gloves",
  legs="Atrophy Tights +1",
  feet="Lethargy houseaux +1"
  })
  
  sets.Enhancing_Duration = {
  back="Sucellos's Cape",
  feet="Lethargy houseaux +1" -- +
  }

  
--- ===============================
--- 	Precasts
--- ===============================
	
	sets.Fast_Cast = set_combine(sets.Fast_Cast,{
		--head="Carmine Mask +1",
		--body="Vitivation Tabard +1" --- +13%
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
    hands="Kaykaus Cuffs +1",
	--legs={ name="Chironic Hose", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','"Resist Silence"+1','MND+14','Mag. Acc.+11','"Mag.Atk.Bns."+6',}},
  })

	sets.MAB = set_combine(sets.MAB,{
		--ear1="Crematio Earring",
		--body="Merlinic Jubbah", 
		--hands={name="Chironic Gloves", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Cure" potency +6%','Mag. Acc.+8','"Mag.Atk.Bns."+15',}},
		--feet={name="Chironic Slippers", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','"Fast Cast"+5','Mag. Acc.+2','"Mag.Atk.Bns."+9',}}
	})
	
	sets.MB = set_combine(sets.MB, { })

--- ===============================
--- 	Utility Modes
--- ===============================

	Utility_Title = "NoTitle"
  Utility_Type = "Nuke"
  Utility_Set_Names = {"Off","On"}

	sets.Utility = {}
	sets.Utility[Utility_Title] = {}
	
	sets.Utility["NoTitle"]["On"] = {

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