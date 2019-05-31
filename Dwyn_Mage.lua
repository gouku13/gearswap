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
  --neck="Twilight Torque", --- DT: 5%
  --ring1=Hybrid_DT_Ring1,
  --ring2=Hybrid_DT_Ring2,
  back="Umbra Cape"
}

if (Dark_Mage or (Main_Job == 'BLU')) then
  -- Without head/pants: PDT: 29%, MDT: 19%, BDT: 18%
  sets.DT = set_combine(sets.DT, {
	})
end

if (Light_Mage) then
	--- Full -DT%. For TP/PDT and idle sets.
  sets.DT = set_combine(sets.DT, {
	})
end

sets.PDT = set_combine(sets.DT, {ring1=PDT_Ring1, ring2=PDT_Ring2})
sets.MDT = set_combine(sets.DT, {ring1=MDT_Ring1, ring2=MDT_Ring2})

--- ===============================
--- 	Refresh Sets
--- ===============================	

  sets.Refresh = {
  }

if (Light_Mage) then
  sets.Refresh = set_combine(sets.Refresh, {
 })
end

--- ===============================
--- 	Precasts
--- ===============================

sets.Fast_Cast = { --- Current: 19%
  waist="Witful Belt", -- 2%
}

if (Light_Mage) then
  sets.Fast_Cast = set_combine(sets.Fast_Cast,{ -- 26%
  })
end

if (Dark_Mage) then
  sets.Fast_Cast = set_combine(sets.Fast_Cast,{ -- 26%
  })
end

--- ===============================
--- 	Healing Magic
--- ===============================

sets.MND = {

}

sets.Healing_Skill = {

}


sets.Cure_Potency = { --- Caps at 50%, currently 36%
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
  waist="Siegel Sash"
}

sets.Enhancing_Duration = {
  back="Estoqueur's Cape"
}

sets.Enhancing_Skill = { --- Total: +86
}

--- ===============================
--- 	Offensive Magic
--- ===============================

sets.Magic_Acc = {
}

if (Light_Mage) then
  sets.Magic_Acc = set_combine(sets.Magic_Acc,{
  })
end

sets.Some_MAcc = {
}

sets.MAB = {
}

if (Light_Mage) then
  sets.MAB = set_combine(sets.MAB,{
  })
end

if (Dark_Mage) then
  sets.MAB = set_combine(sets.MAB,{
  })
end

sets.Weather = {
}

sets.Enfeeble_Skill = {
}

sets.Divine_Skill = {
}

sets.Dark_Skill = {
}

--- ===============================
--- 	TP Sets
--- ===============================

sets.TP.Max = {
  neck="Asperity Necklace",
  ear1="Bladeborn Earring",
  ear2="Steelflash Earring",
}

--- ===============================
--- 	Weaponskill Sets
--- ===============================

sets.WS_All= {
}

--- ===============================
--- 	Supplies
--- ===============================

sets.Other = {}
sets.Other["Warp"] = {ring1="Warp Ring"}

end