require('Jackii_Mage')

--- Build Sets
function get_job_sets()
  get_base_sets()

	Macro_Book = 5
	Macro_Set = 1

	sets.weapons = {}

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
	  ear1="Colossus's Earring",
	  back="Moonbeam Cape"
	})

--- ===============================
--- 	Refresh Sets
--- ===============================	

	--- REFRESH: 6 (base) + 2 MP/tic
	sets.Refresh = set_combine(sets.Refresh, {
    body="Amalric Doublet +1"
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
    back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
    })

	sets.MAB = set_combine(sets.MAB,{
	back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
	})
	
	sets.MB = set_combine(sets.MB, { 
	body="Spaekona's Coat +3",
	--body="Amalric Doublet +1",
	back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
	})
	
	sets.Drain = set_combine(sets.Drain, {
	ear1="Hirudinea Earring",
	ear2="Barkarole Earring",
	back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
	})
	
	sets.midcast.Comet = set_combine(sets.MAB,sets.MB,{
    sub="Niobid Strap",
	head="Pixie Hairpin +1",
	ammo="Pemphredo Tathlum",
	neck="Mizu. Kubikazari",
	ear2="Static Earring",
	ear1="Barkaro. Earring",
	body={ name="Merlinic Jubbah", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','INT+10',}},
	hands="Amalric Gages +1",
	ring1="Archon Ring",
	ring2="Mujin Band",
	back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
	waist="Refoccilation Stone",
	legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','Magic burst dmg.+6%','Mag. Acc.+6','"Mag.Atk.Bns."+15',}}, -- +6%
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','Magic burst dmg.+10%','Mag. Acc.+15','"Mag.Atk.Bns."+7',}},  -- +10%
	})
  
  
  -- Death
  sets.Death = {
  }
  sets.Death.precast = {
	ammo="Strobilus",
	head={ name="Merlinic Hood", augments={'"Fast Cast"+7','Mag. Acc.+12',}},
	neck="Orunmila's Torque",
	ear2="Loquac. Earring",
	hands="Otomi Gloves",
	body={ name="Merlinic Jubbah", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','"Fast Cast"+7','DEX+10',}},
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
    head="Pixie Hairpin +1", 
    neck="Mizu. Kubikazari", -- +10%
	ear1="Barkarole Earring",
	ear2="Static Earring", -- +5%
    body="Amalric Doublet +1", 
    hands="Amalric Gages +1", -- (+6%)
    ring1="Mephitas's Ring +1", 
    ring2="Archon Ring", 
    back={ name="Taranus's Cape", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}}, -- +5%
	waist="Hachirin-no-obi",
    legs="Amalric Slops +1",
    feet="Amalric Nails +1", 
  }
  sets.Death.Comet = {
    sub="Niobid Strap",
	head="Pixie Hairpin +1",
	ammo="Pemphredo Tathlum",
	neck="Mizu. Kubikazari",
	ear2="Static Earring",
	ear1="Barkaro. Earring",
	body={ name="Merlinic Jubbah", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','INT+10',}},
	hands="Amalric Gages +1",
	ring1="Archon Ring",
	ring2="Mujin Band",
	back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
	waist="Refoccilation Stone",
	legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','Magic burst dmg.+6%','Mag. Acc.+6','"Mag.Atk.Bns."+15',}}, -- +6%
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','Magic burst dmg.+10%','Mag. Acc.+15','"Mag.Atk.Bns."+7',}},  -- +10%
  }
  sets.Death.Aspir = {
    head="Pixie Hairpin +1",
    ammo="Pemphredo tathlum",
    neck="Erra Pendant",
    ear2="Gwati Earring",
    ear1="Barkaro. Earring",
    body="Shango Robe",
    hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','"Drain" and "Aspir" potency +11','Mag. Acc.+8','"Mag.Atk.Bns."+13',}},
    ring1="Mephitas's Ring +1",
    ring2="Evanescence Ring",
    back="Bane Cape",
    waist="Fucho-no-Obi",
    legs="Amalric Slops +1",
    feet="Amalric Nails +1"
  }
  sets.Death.Myrkr = {
  }
  sets.Death.Elemental = {
    ammo="Pemphredo tathlum",
    head={ name="Merlinic Hood", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','"Drain" and "Aspir" potency +8','MND+5','Mag. Acc.+9','"Mag.Atk.Bns."+13',}},
    neck="Sanctity Necklace",
    ear1="Barkarole Earring",
    ear2="Friomisi Earring",
    body="Amalric Doublet +1",
    hands="Amalric Gages +1",
    ring1="Shiva Ring +1",
    ring2="Shiva Ring +1",
    back="Toro Cape",
    waist="Refoccilation Stone",
    legs="Amalric Slops +1",
    feet="Amalric Nails +1"
  }
  sets.Death.Enhancing = {
    head={ name="Telchine Cap", augments={'Accuracy+18','Haste+3','Enh. Mag. eff. dur. +10',}},
    body={ name="Telchine Chas.", augments={'Pet: Mag. Evasion+15','Pet: "Regen"+3','Enh. Mag. eff. dur. +10',}},
    hands={ name="Telchine Gloves", augments={'Pet: Mag. Evasion+20','Pet: "Regen"+3','Enh. Mag. eff. dur. +10',}},
    legs={ name="Telchine Braconi", augments={'Pet: Mag. Evasion+17','Pet: "Regen"+3','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
    neck="Sanctity Necklace",
    waist="Yamabuki-no-Obi",
    left_ear="Barkaro. Earring",
    right_ear="Etiolation Earring",
    ring2="Sangoma Ring",
    ring1="Mephitas's Ring +1",
    back={ name="Bane Cape", augments={'Elem. magic skill +2','Dark magic skill +6','"Fast Cast"+3',}},
  }
  sets.Death.Enfeebling = {
    head="Befouled Crown", 
    neck="Sanctity Necklace", 
    body="Vanya Robe", 
    hands="Lurid Mitts", 
    ear1="Gwati Earring", 
    ear2="Dignitary's Earring", 
    ring1="Sangoma Ring", 
    ring2="Stikini Ring", 
    back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
    waist="Rumination Sash", 
    legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Occult Acumen"+9','MND+6','Mag. Acc.+7','"Mag.Atk.Bns."+15',}},
    feet="Medium's Sabots"
  }
  sets.Death.Idle = {
	sub="Niobid Strap",
	ammo="Strobilus",
	head="Befouled Crown",
	neck="Loricate Torque +1",
	ear1="Barkaro. Earring",
	ear2="Etiolation Earring",
	body="Amalric Doublet +1",
	hands="Amalric Gages +1",
	ring1="Dark Ring",
	ring2="Defending Ring",
	back="Bane Cape",
	waist="Fucho-no-Obi",
	legs="Amalric Slops +1",
	feet="Amalric Nails +1"
	
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
 if ((Utility_Index >= 2) and Utility_Title == "Death") then
    equip(sets.Death.precast)
    return true
 end

  return false
end

function job_specific_midcast(spell)
  if ((Utility_Index >= 2) and Utility_Title == "Death") then
    if (spell.english == 'Death') then
      equip(sets.Death.Death)
	elseif (spell.english == 'Comet') then
      equip(sets.Death.Comet)
    elseif (string.find(spell.english,'Aspir')) then
      equip(sets.Death.Aspir)
    elseif (spell.english == 'Myrkr') then
      equip(sets.Death.Myrkr)
	elseif (spell.skill == 'Elemental Magic') then
      equip(sets.Death.Elemental)
    elseif (spell.skill == 'Enhancing Magic') then
      equip(sets.Death.Enhancing)
	elseif (spell.skill == 'Enfeebling Magic') then
      equip(sets.Death.Enfeebling)
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