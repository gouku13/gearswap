require('Jackii_Mage')

--- Build Sets
function get_job_sets()
  get_base_sets()

	Macro_Book = 20
	Macro_Set = 1

	Gear_Changing_Buffs = S{"Sublimation: Activated"}

	sets.weapons = {main="Akademos",sub="Niobid Strap"}

--- ===============================
--- 	Job Abilities
--- ===============================

	sets.JA['Tabula Rasa'] = {legs="Pedagogy Pants"}

  -- Gear that needs to be worn to actively enhance a current player buff.
  sets.During_Buff['Ebullience'] = {head="Arbatel Bonnet +1",lock="head"}
  sets.During_Buff['Rapture'] = {head="Arbatel Bonnet +1",lock="head"}
  sets.During_Buff['Perpetuance'] = {hands="Arbatel Bracers +1",lock="hands"}
  sets.During_Buff['Immanence'] = {hands="Arbatel Bracers +1",lock="hands"}
  sets.During_Buff['Penury'] = {legs="Arbatel Pants +1",lock="legs"}
  sets.During_Buff['Parsimony'] = {legs="Arbatel Pants +1",lock="legs"}
  sets.During_Buff['Celerity'] = {feet="Pedagogy Loafers +1",lock="feet"}
  sets.During_Buff['Alacrity'] = {feet="Pedagogy Loafers +1",lock="feet"}

	-- Fast cast sets for spells
  sets.Fast_Cast = set_combine(sets.Fast_Cast,{
  })

  
--- ===============================
--- 	Idle Sets
--- ===============================	

	--- REFRESH: 6 (base) + 2 MP/tic
  sets.Refresh = set_combine(sets.Refresh, {
	head={ name="Chironic Hat", augments={'"Store TP"+6','"Dbl.Atk."+1','"Refresh"+2','Mag. Acc.+14 "Mag.Atk.Bns."+14',}},
    body="Amalric Doublet +1",
	hands={ name="Chironic Gloves", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','DEX+9','"Refresh"+2',}},
  })
  
  sets.DT = set_combine(sets.DT, {
    ammo="Staunch Tathlum",
    head={ name="Gende. Caubeen +1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%','Song spellcasting time -3%',}},
    body={ name="Gende. Bilaut +1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%','Song spellcasting time -5%',}},
    hands={ name="Gende. Gages +1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%','"Cure" potency +3%',}},
    legs={ name="Gende. Spats +1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%',}},
    feet={ name="Gende. Galosh. +1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -4%','"Cure" potency +7%',}},
    neck="Loricate Torque +1",
    waist="Fucho-no-Obi",
    left_ear="Infused Earring",
    right_ear="Etiolation Earring",
    left_ring="Defending Ring",
    right_ring="Gelatinous Ring +1",
    back="Solemnity Cape",
  })
  
--- ===============================
--- 	Support Magic
--- ===============================

   --- Caps at 50%, currently 52%
	sets.Cure_Potency = set_combine(sets.Cure_Potency,{
	})
  
  sets.Cure_Extras = set_combine(sets.Cure_Extras,{
	})

  sets.Enhancing_Bonus["Regen"] = set_combine(sets.Enhancing_Bonus["Regen"],{
    head="Arbatel Bonnet +1", -- Regen +10
    back={ name="Bookworm's Cape", augments={'INT+1','MND+3','Helix eff. dur. +20','"Regen" potency+10',}} -- Regen +10
  })

	sets.Cursna = set_combine(sets.Cursna,{
		feet="Gend. Galoshes +1"
  })
	
  sets.Enhancing_Skill = set_combine(sets.Enhancing_Skill,{ 
	ammo="Savant's Treatise", -- Enhancing +4
    head="Arbatel Bonnet +1", -- Enhancing +12
    hands="Chironic Gloves" -- Enhancing +15
	})
  
  sets.Storm = { 
		feet="Pedagogy Loafers +1"
	}
  
  sets.Klimaform = {feet="Arbatel Loafers +1"}

--- ===============================
--- 	Offensive Magic
--- ===============================
  
  sets.Some_MAcc = set_combine(sets.Some_MAcc,{
	legs={ name="Chironic Hose", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','"Resist Silence"+1','MND+14','Mag. Acc.+11','"Mag.Atk.Bns."+6',}},
  })

	sets.MAB = set_combine(sets.MAB,{
		main="Akademos",
		sub="Niobid strap",
		hands={name="Chironic Gloves", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Cure" potency +6%','Mag. Acc.+8','"Mag.Atk.Bns."+15',}},
		feet={name="Chironic Slippers", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','"Fast Cast"+5','Mag. Acc.+2','"Mag.Atk.Bns."+9',}}
	})
  
  sets.Drain = set_combine(sets.Drain,{
    ear1="Hirudinea Earring",
	ear2="Barkarole Earring",
  })
  
	sets.Aspir = sets.Drain

  sets.Stun = set_combine(sets.Stun,{
    -- Pedagogy are locked in when Alacrity is active
  })
  
  sets.Helix = set_combine(sets.MAB,{
  
  })

--- ===============================
--- 	Utility Modes
--- ===============================

	Utility_Title = "MB"
    Utility_Type = "Nuke"
    Utility_Set_Names = {"Off","On"}

	sets.Utility = {}
	sets.Utility[Utility_Title] = {}
	
	sets.Utility["MB"]["On"] = {
    head={name="Merlinic Hood", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','Magic burst dmg.+9%','INT+9','"Mag.Atk.Bns."+7',}}, -- +9%
    neck="Mizu. Kubikazari", -- +10%
    hands="Amalric Gages +1", -- (+5%)
    ring1="Mujin Band", -- (+5%)
    ring2="Locus Ring", -- +5%
    back="Seshaw Cape +1", -- +6%
    legs={name="Merlinic Shalwar", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','Magic burst dmg.+6%','Mag. Acc.+6','"Mag.Atk.Bns."+15',}}, -- +6%
    feet={name="Merlinic Crackows", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','Magic burst dmg.+10%','Mag. Acc.+15','"Mag.Atk.Bns."+7',}},  -- +10%
	}

end

--- ===============================
--- 	Class Specific Functions
--- ===============================

function job_specific_midcast(spell)
  if (Storm_Spells:contains(spell.name)) then
    equip(set_combine(sets.Enhancing_Duration,sets.Storm))
    return true
  elseif string.find(spell.english,'helix') then
    equip(sets.Helix)
	return true
  elseif ((spell.skill == 'Enfeebling Magic') and (buffactive['Light Arts'] or buffactive['Dark Arts'])) then
    if (buffactive['Light Arts']) then
		equip(set_combine(sets.Enfeebling, sets.Light_Stuff))
	elseif (buffactive['Dark Arts']) then
		equip(set_combine(sets.Enfeebling, sets.Dark_Stuff))
	end
	return true
  end
  return false
end