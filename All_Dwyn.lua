require('Global_Core')

function base_sets()

--- ===============================
--- 	Job Abilities
--- ===============================

if ((Main_Job == 'NIN') or (Sub_Job == 'NIN')) then
  sets.JA["Utsusemi: Ichi"] = {neck="Magoraga Beads"}
  sets.JA["Utsusemi: Ni"] = {neck="Magoraga Beads"}

  sets.midcast["Utsusemi: Ichi"] = {back="Mujin Mantle"}
  sets.midcast["Utsusemi: Ni"] = {back="Mujin Mantle"}
end

--- ===============================
--- 	DT Sets
--- ===============================	

Hybrid_DT_Ring1 = {name="Defending Ring"}
Hybrid_DT_Ring2 = { name="Dark Ring", augments={'Phys. dmg. taken -4%','Magic dmg. taken -6%',}}
PDT_Ring1 = Hybrid_DT_Ring1
PDT_Ring2 = Hybrid_DT_Ring2
MDT_Ring1 = Hybrid_DT_Ring1
MDT_Ring2 = Hybrid_DT_Ring2

--- Full -DT%. For TP/PDT and idle sets.
sets.DT = { -- PDT: 25%, MDT: 21%, BDT: 15%
  neck="Loricate Torque +1", --- DT: 5%
  ring1=Hybrid_DT_Ring1,
  ring2={ name="Dark Ring", augments={'Phys. dmg. taken -4%','Magic dmg. taken -6%',}},
  ear1="Colossus's Earring",
  ear2="Genmei Earring",
  back="Umbra Cape +1", -- PDT +6%
}

sets.PDT = set_combine(sets.DT, {
  ring1=PDT_Ring1,
  ring2=PDT_Ring2
})
sets.MDT = set_combine(sets.DT, {
  ring1=MDT_Ring1,
  ring2=MDT_Ring2,
  back="Tuilha Cape"
})

--- ===============================
--- 	TP Sets
--- ===============================

sets.TP.Base = {
  neck="Asperity Necklace",
  ear1="Bladeborn Earring",
  ear2="Steelflash Earring",
  ring1="Rajas Ring",
  ring2="K'yares Ring",
  waist="Windbuffet Belt"
}

if (not Backline_Mage[Main_Job]) then
  sets.TP.Base = set_combine(sets.TP.Base,{back="Atheling Mantle"})
end 

sets.TP.DW = {
  ear1="Eabani Earring",
  ear2="Suppanomimi",
  ring2="Epona's Ring"
}

if (Main_Job ~= 'RDM') then
  sets.TP.DW = set_combine(sets.TP.DW, {ammo="Ginsen",
  head="Taeon Chapeau",
  neck="Asperity Necklace",
  ear1="Eabani Earring",
  ear2="Suppanomimi",
  body="Taeon Tabard",
  hands="Taeon Gloves",
  ring1="Hetairoi Ring",
  ring2="Rajas Ring",
  back="Bleating Mantle",
  waist="Shetal Stone",
  legs={ name="Taeon Tights", augments={'Accuracy+25','"Dual Wield"+4','STR+5 AGI+5',}},
  feet={ name="Taeon Boots", augments={'Accuracy+20 Attack+20','"Dual Wield"+4','STR+7 DEX+7',}}})
else
  sets.TP.DW = set_combine(sets.TP.DW, {ammo="Ginsen",
  head="Taeon Chapeau",
  neck="Asperity Necklace",
  ear1="Eabani Earring",
  ear2="Suppanomimi",
  body="Taeon Tabard",
  hands="Taeon Gloves",
  ring1="Hetairoi Ring",
  ring2="Rajas Ring",
  back="Bleating Mantle",
  waist="Shetal Stone",
  legs={ name="Taeon Tights", augments={'Accuracy+25','"Dual Wield"+4','STR+5 AGI+5',}},
  feet={ name="Taeon Boots", augments={'Accuracy+20 Attack+20','"Dual Wield"+4','STR+7 DEX+7',}},})
end

sets.TP.TA = {
  ear1="Steelflash Earring",
  ear2="Bladeborn Earring", 
  ring2="Epona's Ring"
}

sets.TP.Heavy = {
  ear1="Steelflash Earring",
  ear2="Bladeborn Earring"
}

--- ===============================
--- 	Weaponskills
--- ===============================

sets.WS_All= {
  head="Sukeroku Hachi.",
  neck="Fotia Gorget",
  ear1="Moonshade Earring",
  ear2="Brutal Earring",
  back="Rancorous Mantle",
  waist="Fotia Belt"
}

--- ===============================
--- 	Ranged
--- ===============================

if (Ranged[Main_Job]) then
  sets.Preshot = {
  }

  sets.Midshot = {
  }
end

--- ===============================
--- 	Magic
--- ===============================

if (Mage[Main_Job]) then
  -- rely on Jacki_Mage.lua for now
end

--- ===============================
--- 	Idle Sets
--- ===============================	

  sets.Movement = {
    --feet="Herald's Gaiters"
  }

  sets.Town = set_combine(sets.Town,{
    --head="Qiqirn Hood",
    --ring1="Defending Ring",
  })

--- ===============================
--- 	Supplies
--- ===============================
sets.Other = {}
sets.Other["Warp"] = {ring1="Warp Ring"}
sets.Other["Exp"] = {
  ring1="Echad Ring",
  ring2="Emperor Band"
}
sets.Other["CP"] = {
  ring1="Trizek Ring",
  ring2="Capacity Ring",
  back="Mecisto. Mantle"
}
sets.Other["Misc"] = {
  back="Nexus Cape"
}

sets.Blacksmithing = {
  body="Blacksmith's Apron",
  hands="Smithy's Mitts"
}

sets.Fishing = {
  --ranged="Lu Sh. F. Rod +1",
  --head="Tlahtlamah Glasses",
  --body="Fsh. Tunica",
  --hands="Fsh. Gloves",
  --legs="Fisherman's Hose",
  --feet="Fisherman's Boots"
}

send_command('bind ^f gs equip sets.Fishing')
--send_command('bind ^b gs equip sets.Blacksmithing')

end