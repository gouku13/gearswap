require('Jonie_Mage')

--- Build Sets
function get_job_sets()
  get_base_sets()

	Macro_Book = 20
	Macro_Set = 10

	Gear_Changing_Buffs = S{"Sublimation: Activated"}

	sets.weapons = {main="Akademos",sub="Niobid Strap",ammo="Homiliary"}

--- ===============================
--- 	Job Abilities
--- ===============================

	sets.JA['Tabula Rasa'] = {legs="Pedagogy Pants +1"}
	sets.JA['Enlightenment'] = {body="Peda. Gown +1"}

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
	  back={ name="Lugh's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},
      --feet="Acad. Loafers +3"
    })
	
	sets.Sublimation = set_combine(sets.Refresh,{
      head="Acad. Mortar. +3",
	  body="Peda. Gown +1", 
	  ear1="Savant's Earring",
	})
	
--- ===============================
--- 	Support Magic
--- ===============================

   --- Caps at 50%, currently 52%
	sets.Cure_Potency = set_combine(sets.Cure_Potency,{
	})
  
    sets.Cure_Extras = set_combine(sets.Cure_Extras,{
	})
	
	sets.Enhancing_Duration = set_combine(sets.Enhancing_Duration,{
	  main={ name="Gada", augments={'Enh. Mag. eff. dur. +5','MND+4','Mag. Acc.+17','DMG:+2',}},
      sub="Ammurapi Shield",  
    })

    sets.Enhancing_Bonus["Regen"] = set_combine(sets.Enhancing_Bonus["Regen"],{
      head="Arbatel Bonnet +1", -- Regen +10
      back={ name="Bookworm's Cape", augments={'INT+3','MND+1','Helix eff. dur. +18','"Regen" potency+10',}} -- Regen +10
    })

	sets.Cursna = set_combine(sets.Cursna,{
    })
	
    sets.Enhancing_Skill = set_combine(sets.Enhancing_Skill,{ 
	  ammo="Savant's Treatise", -- Enhancing +4
      hands="Chironic Gloves", -- Enhancing +15
	})
  
    sets.Storm = { 
	  feet="Pedagogy Loafers +1"
	}
  
    sets.Klimaform = {feet="Arbatel Loafers +1"}

--- ===============================
--- 	Offensive Magic
--- ===============================

    sets.Light_Stuff = {legs="Acad. Pants +2",}
	sets.Dark_Stuff = {body="Acad. Gown +2",}
	
  
    sets.Magic_Acc = set_combine(sets.Magic_Acc,{
	  main={ name="Gada", augments={'MND+7','Mag. Acc.+25',}},
	  sub="Ammurapi Shield",
	  head="Acad. Mortar. +3",
	  neck="Erra Pendant",
	  ear1="Regal Earring",
	  ear2="Dignitary's Earring",
	  body="Acad. Gown +2",
	  back={ name="Lugh's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},
	  legs={ name="Chironic Hose", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','"Fast Cast"+5','MND+12','Mag. Acc.+6',}},
	  feet="Acad. Loafers +3",
    })
	
	sets.Enfeeble_Skill = set_combine(sets.Magic_Acc,{
	  ring1="Kishar Ring",
	})

	sets.MAB = set_combine(sets.MAB,{
	  main="Akademos",
	  sub="Niobid strap",
	  back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
	})
  
    sets.Drain = set_combine(sets.Drain,{
	  main="Akademos",
	  sub="Niobid Strap",
	  ear2="Hirudinea Earring",
      hands="Gende. Gages +1",
	  legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','"Drain" and "Aspir" potency +6','"Mag.Atk.Bns."+13',}},
      feet="Acad. Loafers +3"
    })
  
	sets.Aspir = sets.Drain

    sets.Stun = set_combine(sets.Stun,{
      hands="Gende. Gages +1",
      feet="Acad. Loafers +3"
    -- Pedagogy are locked in when Alacrity is active
    })
  
    sets.Helix = set_combine(sets.MAB,{
	  main="Akademos",
	  sub="Niobid strap",
      back={ name="Bookworm's Cape", augments={'INT+5','MND+3','Helix eff. dur. +20',}},
	  --waist="Acuity Belt +1",
	  legs="Mallquis Trews +2",
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
      head={ name="Merlinic Hood", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','Magic burst dmg.+9%','MND+5','Mag. Acc.+5','"Mag.Atk.Bns."+12',}}, -- +9%
      neck="Mizu. Kubikazari", -- +10%
      hands="Amalric Gages", -- (+5%)
      ring1="Mujin Band", -- (+5%)
      ring2="Locus Ring", -- +5%
      --back="Seshaw Cape +1", -- +6%
      legs={ name="Merlinic Shalwar", augments={'"Mag.Atk.Bns."+24','Magic burst dmg.+10%','CHR+2','Mag. Acc.+1',}}, --10%
      feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+21','Magic burst dmg.+10%','Mag. Acc.+4',}} --10%
	}

end

--- ===============================
--- 	Class Specific Functions
--- ===============================

function job_specific_build_idle(set)
  if (buffactive["Sublimation: Activated"]) then
    set = set_combine(set, sets.Sublimation)
  end
  return set
end

function job_specific_midcast(spell)
  if (Storm_Spells:contains(spell.name)) then
    equip(set_combine(sets.Enhancing_Duration,sets.Storm))
    return true
  elseif string.find(spell.english,'helix') then
    equip(sets.Helix)
	return true
  elseif ((spell.skill == 'Enfeebling Magic') and (buffactive['Light Arts'] or buffactive['Dark Arts'])) then
    if (buffactive['Light Arts']) then
		equip(set_combine(sets.Enfeeble_Skill, sets.Light_Stuff))
	elseif (buffactive['Dark Arts']) then
		equip(set_combine(sets.Enfeeble_Skill, sets.Dark_Stuff))
	end
	return true	
  end
  return false
end