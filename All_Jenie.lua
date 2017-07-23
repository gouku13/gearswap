require('Global_Core')

function base_sets()

--- ===============================
--- 	Job Abilities
--- ===============================

--[[
if ((Main_Job == 'NIN') or (Sub_Job == 'NIN')) then
  sets.JA["Utsusemi: Ichi"] = {neck="Magoraga Beads"}
  sets.JA["Utsusemi: Ni"] = {neck="Magoraga Beads"}

  sets.midcast["Utsusemi: Ichi"] = {back="Mujin Mantle"}
  sets.midcast["Utsusemi: Ni"] = {back="Mujin Mantle"}
end
--]]

--- ===============================
--- 	DT Sets
--- ===============================	

Hybrid_DT_Ring1 = "Defending Ring"
Hybrid_DT_Ring2= { name="Dark Ring", augments={'Phys. dmg. taken -5%','Magic dmg. taken -5%',}}
PDT_Ring1 = Hybrid_DT_Ring1
PDT_Ring2 = Hybrid_DT_Ring2
MDT_Ring1 = Hybrid_DT_Ring1
MDT_Ring2 = Hybrid_DT_Ring2

--- Full -DT%. For TP/PDT and idle sets.
sets.DT = { --- PDT: 15%, MDT: 13%
  neck="Twilight Torque", --- DT: 5%
  ring1=Hybrid_DT_Ring1,
  ring2=Hybrid_DT_Ring2,
  back="Umbra Cape"
}

sets.PDT = set_combine(sets.DT, {ring1=PDT_Ring1, ring2=PDT_Ring2})
sets.MDT = set_combine(sets.DT, {ring1=MDT_Ring1, ring2=MDT_Ring2})

sets.Movement = {
	feet="Herald's Gaiters"
}

--- ===============================
--- 	Regen/Refresh Sets
--- ===============================	

if (Mage[Main_Job]) then
  sets.Refresh = {
    head="Befouled Crown", --- 1 MP/tic
	ear1="Colossus's Earring",
    ear2="Moonshade Earring", --- 
    --hands="Serpentes Cuffs", --- 1 HP/tic day, 1 MP/tic night
    waist="Fucho-no-Obi", --- 1 MP/tic when < 50% MP
    legs="Assiduity Pants +1", --- 1 MP/tic
    --feet="Serpentes Sabots" --- 1 MP/tic day, 1 HP/tic night
  }
  if (Backline_Mage[Main_Job]) then
    --sets.Refresh = set_combine(sets.Refresh,{sub="Oneiros Grip"})
  else
    --sets.Refresh = set_combine(sets.Refresh,{legs="Nares Trews"})
  end
end

--- ===============================
--- 	TP Sets
--- ===============================

DW_Head  = "Taeon Chapeau"
DW_Body  = "Taeon Tabard"
DW_Hands = "Taeon Gloves"
DW_Legs  = "Taeon Tights"
DW_Feet  = "Taeon Boots"

--[[
TA_Head  = {name="Taeon Chapeau", augments={'"Triple Atk."+1','AGI+10',}}
TA_Body  = {}
TA_Hands = {}
TA_Legs  = {}
TA_Feet  = {}
--]]

--[[
HeavyDD_Head  = {name="Acro Helm", augments={'"Dbl.Atk."+3','STR+3',}}
HeavyDD_Body  = {name="Acro Surcoat", augments={'"Dbl.Atk."+2','STR+8',}}
HeavyDD_Hands = {name="Acro Gauntlets", augments={'"Dbl.Atk."+2','STR+4',}}
HeavyDD_Legs  = {name="Acro Breeches", augments={'"Dbl.Atk."+2','STR+1',}}
HeavyDD_Feet  = {name="Acro Leggings", augments={'"Dbl.Atk."+3','Weapon skill damage +3%',}}
--]]

Pet_Head  = "Acro Helm"
Pet_Body  = "Acro Surcoat"
Pet_Hands = "Acro Gauntlets"
Pet_Legs  = "Acro Breeches"
Pet_Feet  = "Acro Leggings"


sets.TP.Base = {
  neck="Asperity Necklace",
  ring1="Rajas Ring"
}

if (not Backline_Mage[Main_Job]) then
  sets.TP.Base = set_combine(sets.TP.Base,{back="Atheling Mantle"})
end 

sets.TP.DW = {
  ear1="Suppanomimi",
  ear2="Eabani Earring"
}

if (Main_Job ~= 'RDM') then
  --sets.TP.DW = set_combine(sets.TP.DW, {waist="Nusku's Sash"})
else
  --sets.TP.DW = set_combine(sets.TP.DW, {waist="Windbuffet Belt"})
end

sets.TP.TA = {
  head=TA_Head,
  ear1="Steelflash Earring",
  ear2="Bladeborn Earring",  
  --waist="Windbuffet Belt",
}

sets.TP.Heavy = {
  ear1="Steelflash Earring",
  ear2="Bladeborn Earring",  
  --waist="Windbuffet Belt",
}

sets.Pet.TP = {
  head=Pet_Head,
  body=Pet_Body,
  hands=Pet_Hands,
  legs=Pet_Legs,
  feet=Pet_Feet
}

--- We hit delay cap with Haste+Marches, no need for +Dual Wield
sets.TP.Full_Haste = {
  ear1="Bladeborn Earring",
  ear2="Steelflash Earring",
  --waist="Windbuffet Belt"
}

--- ===============================
--- 	Weaponskills
--- ===============================

sets.WS_All= {
  --neck="Tlamiztli Collar",
  --ear1="Moonshade Earring",
  ear2="Bladeborn Earring",
  waist="Fotia Belt"
}

if (not Backline_Mage[Main_Job]) then
  --sets.WS_All = set_combine(sets.WS_All,{back="Vespid Mantle"})
end 

--- ===============================
--- 	Ranged
--- ===============================

--[[
if (Ranged[Main_Job]) then
  sets.Preshot = {
    hands="Manibozho Gloves", --- Snapshot +4%
    legs="Nahtirah Trousers" --- Snapshot +9%
  }

  sets.Midshot = {
    neck="Gaudryi Necklace", --- R.Acc+13
    ear1="Clearview Earring", --- R.Acc+4, R.Atk+4
    ear2="Volley Earring", --- R.Acc+4, sTP+2
    hands="Manibozho Gloves", --- R.Atk+15, R.Acc+10, AGI+10, Snapshot+4%, Recycle+10%
    ring1="Longshot Ring", --- R.Acc+14, AGI+2
    ring2="Bellona's Ring", --- R.Acc+8, R.Atk+8
    back="Terebellum Mantle", --- R.Acc+20, Enmity-1
    legs="Nahtirah Trousers" --- R.Atk+30, Snapshot+9%, AGI+25
  }
end
--]]

--- ===============================
--- 	Magic
--- ===============================

if (Mage[Main_Job]) then
  -- rely on Nedaltic_Mage.lua for now
end

--- ===============================
--- 	Supplies
--- ===============================
sets.Supplies = {
  item="Shihei",
  item="Echo Drops",
  item="Remedy"
}

sets.Other = {}
sets.Other["Warp"] = {ring1="Warp Ring"}
sets.Other["Exp"] = {
  ring1="Echad Ring",
  ring2="Emperor Band"
}
sets.Other["CP"] = {
  ring1="Trizek Ring",
  ring2="Capacity Ring",
  back="Aptitude Mantle"
}
sets.Other["Misc"] = {
  back="Nexus Cape"
}

end