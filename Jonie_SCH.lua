require('Jonie_Mage')

--- Build Sets
function get_job_sets()
  get_base_sets()

	Macro_Book = 20
	Macro_Set = 10

	sets.weapons = {main="Akademos",sub="Niobid Strap"}

--- ===============================
--- 	Job Abilities
--- ===============================

	sets.JA['Tabula Rasa'] = {legs="Pedagogy Pants +1"}

  -- Gear that needs to be worn to actively enhance a current player buff.
  sets.During_Buff['Ebullience'] = {head="Arbatel Bonnet",lock="head"}
  sets.During_Buff['Rapture'] = {head="Arbatel Bonnet",lock="head"}
  sets.During_Buff['Perpetuance'] = {hands="Arbatel Bracers",lock="hands"}
  sets.During_Buff['Immanence'] = {hands="Arbatel Bracers",lock="hands"}
  sets.During_Buff['Penury'] = {legs="Arbatel Pants",lock="legs"}
  sets.During_Buff['Parsimony'] = {legs="Arbatel Pants",lock="legs"}
  sets.During_Buff['Celerity'] = {feet="Pedagogy Loafers +1",lock="feet"}
  sets.During_Buff['Alacrity'] = {feet="Pedagogy Loafers +1",lock="feet"}

	-- Fast cast sets for spells
    sets.Fast_Cast = set_combine(sets.Fast_Cast,{
      feet="Acad. Loafers +1"
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
      head="Arbatel Bonnet", -- Regen +10
      back={ name="Bookworm's Cape", augments={'INT+3','MND+1','Helix eff. dur. +18','"Regen" potency+10',}} -- Regen +10
    })

	sets.Cursna = set_combine(sets.Cursna,{
    })
	
    sets.Enhancing_Skill = set_combine(sets.Enhancing_Skill,{ 
	  ammo="Savant's Treatise", -- Enhancing +4
      head="Arbatel Bonnet", -- Enhancing +12
      hands="Chironic Gloves" -- Enhancing +15
	})
  
    sets.Storm = { 
	  feet="Pedagogy Loafers +1"
	}
  
    sets.Klimaform = {feet="Arbatel Loafers"}

--- ===============================
--- 	Offensive Magic
--- ===============================
  
    sets.Some_MAcc = set_combine(sets.Some_MAcc,{
	  legs="Chironic Hose"
    })

	sets.MAB = set_combine(sets.MAB,{
	  sub="Niobid strap",
	})
  
    sets.Drain = set_combine(sets.Drain,{
      hands="Gende. Gages +1",
      hands={ name="Chironic Gloves", augments={'Pet: "Dbl. Atk."+1','"Mag.Atk.Bns."+22','Accuracy+8 Attack+8','Mag. Acc.+18 "Mag.Atk.Bns."+18',}},
      feet="Acad. Loafers +1"
    })
  
	sets.Aspir = sets.Drain

    sets.Stun = set_combine(sets.Stun,{
      hands="Gende. Gages +1",
      feet="Acad. Loafers +1"
    -- Pedagogy are locked in when Alacrity is active
    })
  
    sets.Helix = set_combine(sets.MAB,{
      back={ name="Bookworm's Cape", augments={'INT+3','MND+1','Helix eff. dur. +18','"Regen" potency+10',}}
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

function job_specific_midcast(spell)
  if (Storm_Spells:contains(spell.name)) then
    equip(set_combine(sets.Enhancing_Duration,sets.Storm))
    return true
  elseif string.find(spell.english,'helix') then
    equip(sets.Helix)
	return true
  end
  return false
end