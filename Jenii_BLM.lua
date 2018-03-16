require('Jenii_Mage')

--- Build Sets
function get_job_sets()
  get_base_sets()

	Macro_Book = 5
	Macro_Set = 1

	sets.weapons = {main="Lathi",sub="Niobid Strap"}

--- ===============================
--- 	Job Abilities
--- ===============================

	sets.JA['Manafont'] = {body="Sorcerer's Coat +2"}
	sets.During_Buff['Mana Wall'] = {feet="Goetia Sabots +2",lock="feet"}
	
--- ===============================
--- 	DT Sets
--- ===============================	

	--- Full -DT%. For TP/PDT and idle sets.
    sets.DT = set_combine(sets.DT, {
	})

--- ===============================
--- 	Refresh Sets
--- ===============================	

	--- REFRESH: 6 (base) + 2 MP/tic
	sets.Refresh = set_combine(sets.Refresh, {
      head={ name="Merlinic Hood", augments={'STR+4','MND+6','"Refresh"+2','Mag. Acc.+7 "Mag.Atk.Bns."+7',}},
	  body="Jhakri Robe +2",
	  hands={ name="Merlinic Dastanas", augments={'Pet: CHR+8','Attack+12','"Refresh"+1',}},
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
	  body="Jhakri Robe +2",
	})
	
	sets.MB = set_combine(sets.MB, { body = "Spae. Coat +1",back="Taranus's Cape" })
	
	sets.midcast.Comet = set_combine(sets.MAB,sets.MB,{
      sub="Niobid Strap",
	  head="Pixie Hairpin +1",
	  ammo="Pemphredo Tathlum",
	  neck="Mizu. Kubikazari",
	  --ear2="Static Earring",
	  ear1="Barkaro. Earring",
	  --body="Merlinic Jubbah",
	  hands="Amalric Gages +1",
	  --ring1="Archon Ring",
	  ring2="Mujin Band",
	  back="Taranus's Cape",
	  waist="Refoccilation Stone",
	})
  
  
  -- Death
    sets.Death = {
    }
    sets.Death.precast = {
   	  ammo="Strobilus",
	  head="Merlinic Hood",
	  neck="Orunmila's Torque",
	  ear2="Loquac. Earring",
	  hands="Otomi Gloves",
	  body="Shango Robe",
	  ear1="Etiolation Earring",
	  ring1="Mephitas's Ring +1",
	  ring2="Lebeche Ring",
	  back="Bane Cape",
	  waist="Witful Belt",
	  legs="Psycloth Lappas",
	  feet="Amalric Nails +1"
    }
    sets.Death.Death = {
	  ammo="Strobilus",
      --head="Pixie Hairpin +1", 
      neck="Mizu. Kubikazari", -- +10%
	  ear1="Barkarole Earring",
	  --ear2="Static Earring",
      body="Amalric Doublet", 
      hands="Amalric Gages +1", -- (+5%)
      --ring1="Mephitas's Ring +1", 
      --ring2="Archon Ring", -- +5%
      back="Taranus's Cape", -- +6%
	  waist="Hachirin-no-obi",
      --legs="Amalric Slops",
      --feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+21','Magic burst mdg.+10%','Mag. Acc.+4',}},  -- +10%
    }
    sets.Death.Aspir = {
      head="Pixie Hairpin +1",
      ammo="Pemphredo Tathlum",
      neck="Incanter's Torque",
      ear1="Gwati Earring",
      ear2="Barkaro. Earring",
      --body="Shango Robe",
      --hands="Lurid Mitts",
      --ring1="Mephitas's Ring +1",
      --ring2="Evanescence Ring",
      back="Bane Cape",
      waist="Fucho-no-Obi",
      legs="Psycloth Lappas",
      --feet={ name="Merlinic Crackows", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','"Fast Cast"+7','MND+4','"Mag.Atk.Bns."+7',}}
    }
    sets.Death.Myrkr = {
    }
    sets.Death.Enhancing = {
    }
    sets.Death.Idle = {
	  sub="Niobid Strap",
	  --ammo="Strobilus",
	  --head="Befouled Crown",
	  --neck="Loricate Torque +1",
	  ear1="Barkaro. Earring",
	  --ear2="Etiolation Earring",
	  --body="Amalric Doublet +1",
	  hands="Amalric Gages +1",
	  --ring1="Dark Ring",
	  ring2="Defending Ring",
	  back="Bane Cape",
	  waist="Fucho-no-Obi",
	  legs="Psycloth Lappas",
	  --feet="Amalric Nails +1"
    }

--- ===============================
--- 	Utility Modes
--- ===============================

	Utility_Title = "Death"
  Utility_Type = "Idle"
  Utility_Set_Names = {"Off","On"}

	sets.Utility = {}
	sets.Utility[Utility_Title] = {}
	
	sets.Utility["Death"]["On"] = sets.Death.Idle

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
  elseif ((Utility_Index >= 2) and Utility_Title == "Death") then
    equip(sets.Death.precast)
    return true
	end

  return false
end

function job_specific_midcast(spell)
  if ((Utility_Index >= 2) and Utility_Title == "Death") then
    if (spell.english == 'Death') then
      equip(sets.Death.Death)
    elseif (string.find(spell.english,'Aspir')) then
      equip(sets.Death.Aspir)
    elseif (spell.english == 'Myrkr') then
      equip(sets.Death.Myrkr)
    elseif (spell.skill == 'Enhancing Magic') then
      equip(sets.Death.Enhancing)
    end
    return true
  end
  
  return false
end

function job_specific_aftercast(spell)
  if ((Utility_Index >= 2) and Utility_Title == "Death") then
    equip(sets.Death.Idle)
    return true
  end
  return false
end