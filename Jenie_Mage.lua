require('Global_Core')

function get_base_sets()

if ((Main_Job == 'WHM') or (Main_Job == 'RDM') or (Main_Job == 'BRD') or (Main_Job == 'SCH')) then
	Light_Mage = true
else
  Light_Mage = false
end

if ((Main_Job == 'BLM') or (Main_Job == 'RDM') or (Main_Job == 'SMN') or (Main_Job == 'SCH') or (Main_Job == 'GEO')) then
	Dark_Mage = true
else
  Dark_Mage = false
end

--- ===============================
--- 	DT Sets
--- ===============================

Hybrid_DT_Ring1 = nil
Hybrid_DT_Ring2= nil
PDT_Ring1 = Hybrid_DT_Ring1
PDT_Ring2 = Hybrid_DT_Ring2
MDT_Ring1 = Hybrid_DT_Ring1
MDT_Ring2 = Hybrid_DT_Ring2

--- Full -DT%. For TP/PDT and idle sets.
sets.DT = { --- PDT: 15%, MDT: 13%

}
	
if (Dark_Mage or (Main_Job == 'BLU')) then
  sets.DT = set_combine(sets.DT, {
    body={ name="Hagondes Coat +1", augments={'Phys. dmg. taken -4%','Magic burst dmg.+9%',}},
	})
end

if (Light_Mage) then
	--- Full -DT%. For TP/PDT and idle sets.
  sets.DT = set_combine(sets.DT, {

	})
end

sets.PDT = set_combine(sets.DT, {ring1=PDT_Ring1, ring2=PDT_Ring2})
sets.MDT = set_combine(sets.DT, {ring1=MDT_Ring1, ring2=MDT_Ring2})

sets.Movement = {
	--feet="Herald's Gaiters"
}

--- ===============================
--- 	Regen/Refresh/Resting Sets
--- ===============================	

  sets.Refresh = {
    legs="Assiduity Pants", --- 1 MP/tic. Maybe. Depends on unity.
  }
  
  if Dark_Mage then
    sets.Refresh = set_combine(sets.Refresh, {
      head={ name="Merlinic Hood", augments={'Mag. Acc.+14','AGI+3','"Refresh"+2',}},
      body={ name="Hagondes Coat +1", augments={'Phys. dmg. taken -4%','Magic burst dmg.+9%',}},
    })
  end


--- ===============================
--- 	Precasts
--- ===============================

sets.Fast_Cast = { --- Current: FC 48-50% QM 4%
  ring1="Kishar Ring",
  back="Veela Cape"
}

if (Light_Mage) then
  sets.Fast_Cast = set_combine(sets.Fast_Cast,{ -- FC 50-52%
    --hands="Gende. Gages +1" -- 7%
  })
end

if (Dark_Mage) then
  sets.Fast_Cast = set_combine(sets.Fast_Cast,{ -- FC 
    head={ name="Merlinic Hood", augments={'"Fast Cast"+6',}},
    hands={ name="Merlinic Dastanas", augments={'"Fast Cast"+5','"Mag.Atk.Bns."+5',}},
    feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+4','"Fast Cast"+4','MND+2',}},
  })
end

--- ===============================
--- 	Healing Magic
--- ===============================

sets.MND = {
  neck="Mizu. Kubikazari",
  back="Refraction Cape"
}

sets.Healing_Skill = {
  neck="Incanter's Torque", -- All Magic Skills +10
}

sets.Cure_Potency = {

}

if (Light_Mage) then
  sets.Cure_Potency = set_combine(sets.Cure_Potency,{ --46%
  })
end

sets.Enmity = {
}

sets.Cure_Extras = {}

sets.Cursna = {
}

if (Light_Mage) then
  sets.Cursna = set_combine(sets.Cursna,{
  })
end

--- ===============================
--- 	Enhancing
--- ===============================

sets.Enhancing_Precast = {
}

sets.Enhancing_Duration = {
}

sets.Enhancing_Skill = { --- Total: +86
  neck="Incanter's Torque", -- All Magic Skills +10
}

--- ===============================
---  Healing Magic
--- ===============================
sets.precast["Healing"] = set_combine(sets.Fast_Cast,{
  --body="Shango Robe"
})

--- ===============================
--- 	Offensive Magic
--- ===============================

sets.Magic_Acc = {
  ammo="Pemphredo Tathlum",
  ring1="Kishar Ring",
  back="Refraction Cape"
}

if Light_Mage then
  sets.Magic_Acc = set_combine(sets.Magic_Acc,{
  })
end

if Dark_Mage then
  sets.Magic_Acc = set_combine(sets.Magic_Acc,{
    head={ name="Merlinic Hood", augments={'Mag. Acc.+14','AGI+3','"Refresh"+2',}},
  })
end



sets.Some_MAcc = {
}

sets.MAB = {
  -- main="Exemplar", -- MAB: 28
  ammo="Pemphredo Tathlum",
}

if (Dark_Mage) then
  sets.MAB = set_combine(sets.MAB,{
    head={ name="Merlinic Hood", augments={'"Mag.Atk.Bns."+30','Magic burst dmg.+6%','CHR+9',}},
    neck="Mizu. Kubikazari",
    hands={ name="Merlinic Dastanas", augments={'"Fast Cast"+5','"Mag.Atk.Bns."+5',}},
    legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','"Conserve MP"+5','MND+2',}},
    feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+21','Magic burst dmg.+8%','INT+2','Mag. Acc.+11',}},
  })
end

sets.MB = set_combine(sets.MAB, {
    head={ name="Merlinic Hood", augments={'"Mag.Atk.Bns."+30','Magic burst dmg.+6%','CHR+9',}}, -- +6%
    neck="Mizu. Kubikazari", -- 10 (%?),
    feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+21','Magic burst dmg.+8%','INT+2','Mag. Acc.+11',}}, -- +8%
})

sets.Weather = {

}

if(Backline_Mage[Main_Job]) then
  sets.Magic_Acc = set_combine(sets.Magic_Acc, { })
  sets.MAB = set_combine(sets.MAB, { })
end

sets.Enfeeble_Skill = {
  neck="Incanter's Torque", -- All Magic Skills +10
  ring1="Kishar Ring" -- Duration +10%
}

sets.Divine_Skill = {
  neck="Incanter's Torque", -- All Magic Skills +10
}

sets.Dark_Skill = {
  neck="Incanter's Torque", -- All Magic Skills +10
}

sets.Drain = {
}

if (Dark_Mage) then
  sets.Drain = set_combine(sets.Drain,{
    feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+21','Magic burst dmg.+8%','INT+2','Mag. Acc.+11',}},
  })
end

end