function get_sets()
	AccIndex = 1
	AccArray = {"LowACC","MidACC","HighACC","MaxACC"} -- 4 Levels Of Accuracy Sets For TP/WS/Hybrid. First Set Is LowACC. Add More ACC Sets If Needed Then Create Your New ACC Below. Most of These Sets Are Empty So You Need To Edit Them On Your Own. Remember To Check What The Combined Set Is For Each Sets. --
	WeaponIndex = 1
	WeaponArray = {"Ragnarok","Conqueror","Fencer","Bravura"} -- Default Main Weapon Is Conqueror. Can Delete Any Weapons/Sets That You Don't Need Or Replace/Add The New Weapons That You Want To Use. --
	IdleIndex = 1
	IdleArray = {"Movement","Regen"} -- Default Idle Set Is Movement --
	Armor = 'None'
	Twilight = 'None'
	Attack = 'OFF' -- Set Default WS Attack Set ON or OFF Here --
	Rancor = 'OFF' -- Set Default Rancor ON or OFF Here --
	Retaliation = 'OFF' -- Set Default Retaliation ON or OFF Here --
	Samurai_Roll = 'OFF' -- Set Default SAM Roll ON or OFF Here --
	target_distance = 5 -- Set Default Distance Here --
	select_default_macro_book() -- Change Default Macro Book At The End --

	-- Gavialis Helm --
	elements = {}
	elements.equip = {head="Gavialis Helm"}
	elements["Ukko's Fury"] = S{"Light","Lightning","Wind"}
	elements.Resolution = S{"Lightning","Wind","Earth"}

	sc_map = {SC1="UkkosFury", SC2="KingsJustice", SC3="Berserk"} -- 3 Additional Binds. Can Change Whatever JA/WS/Spells You Like Here. Remember Not To Use Spaces. --

	sets.Idle = {}
	-- Idle/Town Sets --
	sets.Idle.Regen = {
		head="Valorous Mask",
		ammo="Staunch tathlum",
		body="Sulevia's Plate. +1",
		hands="Sulev. Gauntlets +1",
		legs="Sulevia's Cuisses +1",
		feet="Sulevia's leggings +1",
		ear1="Etiolation Earring",
		ear2="Infused Earring",
		neck="Loricate Torque +1",
		back="Moonbeam Cape",
		waist="Flume Belt",
		ring1="Defending Ring",
		ring2="Dark Ring"}
	sets.Idle.Regen.Conqueror = set_combine(sets.Idle.Regen,{
		main="Aganoshe",
		sub="Bloodrain Strap"})
	sets.Idle.Regen.Fencer = set_combine(sets.Idle.Regen,{
		main="Tanmogayi +1",
		sub="Blurred Shield"})
	sets.Idle.Regen.Ragnarok = set_combine(sets.Idle.Regen,{
		main="Ragnarok",
		sub="Bloodrain Strap"})
	sets.Idle.Regen.Bravura = set_combine(sets.Idle.Regen,{
		main="Bravura",
		sub="Bloodrain Strap"})

	sets.Idle.Movement = set_combine(sets.Idle.Regen,{
		feet="Hermes' Sandals"})
	sets.Idle.Movement.Conqueror = set_combine(sets.Idle.Movement,{
		main="Aganoshe",
		sub="Bloodrain Strap"})
	sets.Idle.Movement.Fencer = set_combine(sets.Idle.Movement,{
		main="Tanmogayi +1",
		sub="Blurred Shield"})
	sets.Idle.Movement.Ragnarok = set_combine(sets.Idle.Movement,{
		main="Ragnarok",
		sub="Bloodrain Strap"})
	sets.Idle.Movement.Bravura = set_combine(sets.Idle.Movement,{
		main="Bravura",
		sub="Bloodrain Strap"})

	sets.Twilight = {head="Twilight Helm",body="Twilight Mail"}

	-- TP Base Set --
	sets.TP = {}

	-- Conqueror(AM3 Down) TP Sets --
	sets.TP.Conqueror = {
		ammo="Ginsen",
		head="Valorous Mask",
		neck="Lissome Necklace",
		ear1="Brutal Earring",
		ear2="Cessance Earring",
		body="Odyss. Chestplate",
		hands="Emicho Gauntlets",
		ring1="Rajas Ring",
		ring2="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Ioskeha Belt",
		legs="Odyssean Cuisses",
		feet="Valorous Greaves"}
	sets.TP.Conqueror.MidACC = set_combine(sets.TP.Conqueror,{
		neck="Combatant's Torque",
		ammo="Ginsen",
		body="Emicho Haubert",
		ring1="Cacoethic Ring +1",
		ring2="Ramuh Ring +1"})
	sets.TP.Conqueror.HighACC = set_combine(sets.TP.Conqueror.MidACC,{
		ear1="Zennaroi Earring",
		ear2="Digni. Earring",
		ammo="Seething Bomblet +1",
		waist="Olseni Belt"})
	sets.TP.Conqueror.MaxACC = set_combine(sets.TP.Conqueror.HighACC,{})

	-- Conqueror(AM3 Up) TP Sets --
	sets.TP.Conqueror.AM3 = set_combine(sets.TP.Conqueror,{
		ammo="Ginsen",
		head="Valorous Mask",
		neck="Lissome Necklace",
		ear1="Brutal Earring",
		ear2="Cessance Earring",
		body="Odyss. Chestplate",
		hands="Emicho Gauntlets",
		ring1="Rajas Ring",
		ring2="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Ioskeha Belt",
		legs="Odyssean Cuisses",
		feet="Valorous Greaves"})
	sets.TP.Conqueror.MidACC.AM3 = set_combine(sets.TP.Conqueror.MidACC,{
		neck="Combatant's Torque",
		ammo="Ginsen",
		body="Emicho Haubert",
		ring1="Cacoethic Ring +1",
		ring2="Ramuh Ring +1"})
	sets.TP.Conqueror.HighACC.AM3 = set_combine(sets.TP.Conqueror.HighACC,{
		ear1="Zennaroi Earring",
		ear2="Digni. Earring",
		ammo="Seething Bomblet +1",
		waist="Olseni Belt"})
	sets.TP.Conqueror.MaxACC.AM3 = set_combine(sets.TP.Conqueror.MaxACC,{})

	-- Conqueror(AM3 Down: Restraint) TP Sets --
	sets.TP.Conqueror.Restraint = set_combine(sets.TP.Conqueror,{
		ammo="Ginsen",
		head="Valorous Mask",
		neck="Lissome Necklace",
		ear1="Brutal Earring",
		ear2="Cessance Earring",
		body="Odyss. Chestplate",
		hands="Emicho Gauntlets",
		ring1="Rajas Ring",
		ring2="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Ioskeha Belt",
		legs="Odyssean Cuisses",
		feet="Valorous Greaves"})
	sets.TP.Conqueror.MidACC.Restraint = set_combine(sets.TP.Conqueror.MidACC,{
		neck="Combatant's Torque",
		ammo="Ginsen",
		body="Emicho Haubert",
		ring1="Cacoethic Ring +1",
		ring2="Ramuh Ring +1"})
	sets.TP.Conqueror.HighACC.Restraint = set_combine(sets.TP.Conqueror.HighACC,{
		ear1="Zennaroi Earring",
		ear2="Digni. Earring",
		ammo="Seething Bomblet +1",
		waist="Olseni Belt"})
	sets.TP.Conqueror.MaxACC.Restraint = set_combine(sets.TP.Conqueror.MaxACC,{})

	-- Conqueror(AM3 Up: Restraint) TP Sets --
	sets.TP.Conqueror.AM3.Restraint = set_combine(sets.TP.Conqueror.AM3,{
		ammo="Ginsen",
		head="Valorous Mask",
		neck="Lissome Necklace",
		ear1="Brutal Earring",
		ear2="Cessance Earring",
		body="Odyss. Chestplate",
		hands="Emicho Gauntlets",
		ring1="Rajas Ring",
		ring2="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Ioskeha Belt",
		legs="Odyssean Cuisses",
		feet="Valorous Greaves"})
	sets.TP.Conqueror.MidACC.AM3.Restraint = set_combine(sets.TP.Conqueror.MidACC.AM3,{
		neck="Combatant's Torque",
		ammo="Ginsen",
		body="Emicho Haubert",
		ring1="Cacoethic Ring +1",
		ring2="Ramuh Ring +1"})
	sets.TP.Conqueror.HighACC.AM3.Restraint = set_combine(sets.TP.Conqueror.HighACC.AM3,{
		ear1="Zennaroi Earring",
		ear2="Digni. Earring",
		ammo="Seething Bomblet +1",
		waist="Olseni Belt"})
	sets.TP.Conqueror.MaxACC.AM3.Restraint = set_combine(sets.TP.Conqueror.MaxACC.AM3,{})

	-- Conqueror(AM3 Down: Ionis) TP Sets --
	sets.TP.Conqueror.Ionis = set_combine(sets.TP.Conqueror,{
		ammo="Ginsen",
		head="Valorous Mask",
		neck="Lissome Necklace",
		ear1="Brutal Earring",
		ear2="Cessance Earring",
		body="Odyss. Chestplate",
		hands="Emicho Gauntlets",
		ring1="Rajas Ring",
		ring2="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Ioskeha Belt",
		legs="Odyssean Cuisses",
		feet="Valorous Greaves"})
	sets.TP.Conqueror.MidACC.Ionis = set_combine(sets.TP.Conqueror.MidACC,{
		neck="Combatant's Torque",
		ammo="Ginsen",
		body="Emicho Haubert",
		ring1="Cacoethic Ring +1",
		ring2="Ramuh Ring +1"})
	sets.TP.Conqueror.HighACC.Ionis = set_combine(sets.TP.Conqueror.HighACC,{
		ear1="Zennaroi Earring",
		ear2="Digni. Earring",
		ammo="Seething Bomblet +1",
		waist="Olseni Belt"})
	sets.TP.Conqueror.MaxACC.Ionis = set_combine(sets.TP.Conqueror.MaxACC,{})

	-- Conqueror(AM3 Up: Ionis) TP Sets --
	sets.TP.Conqueror.AM3.Ionis = set_combine(sets.TP.Conqueror.AM3,{
		ammo="Ginsen",
		head="Valorous Mask",
		neck="Lissome Necklace",
		ear1="Brutal Earring",
		ear2="Cessance Earring",
		body="Odyss. Chestplate",
		hands="Emicho Gauntlets",
		ring1="Rajas Ring",
		ring2="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Ioskeha Belt",
		legs="Odyssean Cuisses",
		feet="Valorous Greaves"})
	sets.TP.Conqueror.MidACC.AM3.Ionis = set_combine(sets.TP.Conqueror.MidACC.AM3,{
		neck="Combatant's Torque",
		ammo="Ginsen",
		body="Emicho Haubert",
		ring1="Cacoethic Ring +1",
		ring2="Ramuh Ring +1"})
	sets.TP.Conqueror.HighACC.AM3.Ionis = set_combine(sets.TP.Conqueror.HighACC.AM3,{
		ear1="Zennaroi Earring",
		ear2="Digni. Earring",
		ammo="Seething Bomblet +1",
		waist="Olseni Belt"})
	sets.TP.Conqueror.MaxACC.AM3.Ionis = set_combine(sets.TP.Conqueror.MaxACC.AM3,{})

	-- Conqueror(AM3 Down: Restraint + Ionis) TP Sets --
	sets.TP.Conqueror.Restraint.Ionis = set_combine(sets.TP.Conqueror,{
		ammo="Ginsen",
		head="Valorous Mask",
		neck="Lissome Necklace",
		ear1="Brutal Earring",
		ear2="Cessance Earring",
		body="Odyss. Chestplate",
		hands="Emicho Gauntlets",
		ring1="Rajas Ring",
		ring2="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Ioskeha Belt",
		legs="Odyssean Cuisses",
		feet="Valorous Greaves"})
	sets.TP.Conqueror.MidACC.Restraint.Ionis = set_combine(sets.TP.Conqueror.MidACC,{
		neck="Combatant's Torque",
		ammo="Ginsen",
		body="Emicho Haubert",
		ring1="Cacoethic Ring +1",
		ring2="Ramuh Ring +1"})
	sets.TP.Conqueror.HighACC.Restraint.Ionis = set_combine(sets.TP.Conqueror.HighACC,{
		ear1="Zennaroi Earring",
		ear2="Digni. Earring",
		ammo="Seething Bomblet +1",
		waist="Olseni Belt"})
	sets.TP.Conqueror.MaxACC.Restraint.Ionis = set_combine(sets.TP.Conqueror.MaxACC,{})

	-- Conqueror(AM3 Up: Restraint + Ionis) TP Sets --
	sets.TP.Conqueror.AM3.Restraint.Ionis = set_combine(sets.TP.Conqueror.AM3,{
		ammo="Ginsen",
		head="Valorous Mask",
		neck="Lissome Necklace",
		ear1="Brutal Earring",
		ear2="Cessance Earring",
		body="Odyss. Chestplate",
		hands="Emicho Gauntlets",
		ring1="Rajas Ring",
		ring2="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Ioskeha Belt",
		legs="Odyssean Cuisses",
		feet="Valorous Greaves"})
	sets.TP.Conqueror.MidACC.AM3.Restraint.Ionis = set_combine(sets.TP.Conqueror.MidACC.AM3,{
		neck="Combatant's Torque",
		ammo="Ginsen",
		body="Emicho Haubert",
		ring1="Cacoethic Ring +1",
		ring2="Ramuh Ring +1"})
	sets.TP.Conqueror.HighACC.AM3.Restraint.Ionis = set_combine(sets.TP.Conqueror.HighACC.AM3,{
		ear1="Zennaroi Earring",
		ear2="Digni. Earring",
		ammo="Seething Bomblet +1",
		waist="Olseni Belt"})
	sets.TP.Conqueror.MaxACC.AM3.Restraint.Ionis = set_combine(sets.TP.Conqueror.MaxACC.AM3,{})

	-- Conqueror(AM3 Down: SAM Roll) TP Sets --
	sets.TP.Conqueror.STP = set_combine(sets.TP.Conqueror,{
		ammo="Ginsen",
		head="Valorous Mask",
		neck="Lissome Necklace",
		ear1="Brutal Earring",
		ear2="Cessance Earring",
		body="Odyss. Chestplate",
		hands="Emicho Gauntlets",
		ring1="Rajas Ring",
		ring2="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Ioskeha Belt",
		legs="Odyssean Cuisses",
		feet="Valorous Greaves"})
	sets.TP.Conqueror.MidACC.STP = set_combine(sets.TP.Conqueror.MidACC,{
		neck="Combatant's Torque",
		ammo="Ginsen",
		body="Emicho Haubert",
		ring1="Cacoethic Ring +1",
		ring2="Ramuh Ring +1"})
	sets.TP.Conqueror.HighACC.STP = set_combine(sets.TP.Conqueror.HighACC,{
		ear1="Zennaroi Earring",
		ear2="Digni. Earring",
		ammo="Seething Bomblet +1",
		waist="Olseni Belt"})
	sets.TP.Conqueror.MaxACC.STP = set_combine(sets.TP.Conqueror.MaxACC,{})

	-- Conqueror(AM3 Up: SAM Roll) TP Sets --
	sets.TP.Conqueror.AM3.STP = set_combine(sets.TP.Conqueror.AM3,{
		ammo="Ginsen",
		head="Valorous Mask",
		neck="Lissome Necklace",
		ear1="Brutal Earring",
		ear2="Cessance Earring",
		body="Odyss. Chestplate",
		hands="Emicho Gauntlets",
		ring1="Rajas Ring",
		ring2="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Ioskeha Belt",
		legs="Odyssean Cuisses",
		feet="Valorous Greaves"})
	sets.TP.Conqueror.MidACC.AM3.STP = set_combine(sets.TP.Conqueror.MidACC.AM3,{
		neck="Combatant's Torque",
		ammo="Ginsen",
		body="Emicho Haubert",
		ring1="Cacoethic Ring +1",
		ring2="Ramuh Ring +1"})
	sets.TP.Conqueror.HighACC.AM3.STP = set_combine(sets.TP.Conqueror.HighACC.AM3,{
		ear1="Zennaroi Earring",
		ear2="Digni. Earring",
		ammo="Seething Bomblet +1",
		waist="Olseni Belt"})
	sets.TP.Conqueror.MaxACC.AM3.STP = set_combine(sets.TP.Conqueror.MaxACC.AM3,{})

	-- Conqueror(AM3 Down: Restraint + SAM Roll) TP Sets --
	sets.TP.Conqueror.Restraint.STP = set_combine(sets.TP.Conqueror,{
		ammo="Ginsen",
		head="Valorous Mask",
		neck="Lissome Necklace",
		ear1="Brutal Earring",
		ear2="Cessance Earring",
		body="Odyss. Chestplate",
		hands="Emicho Gauntlets",
		ring1="Rajas Ring",
		ring2="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Ioskeha Belt",
		legs="Odyssean Cuisses",
		feet="Valorous Greaves"})
	sets.TP.Conqueror.MidACC.Restraint.STP = set_combine(sets.TP.Conqueror.MidACC,{
		neck="Combatant's Torque",
		ammo="Ginsen",
		body="Emicho Haubert",
		ring1="Cacoethic Ring +1",
		ring2="Ramuh Ring +1"})
	sets.TP.Conqueror.HighACC.Restraint.STP = set_combine(sets.TP.Conqueror.HighACC,{
		ear1="Zennaroi Earring",
		ear2="Digni. Earring",
		ammo="Seething Bomblet +1",
		waist="Olseni Belt"})
	sets.TP.Conqueror.MaxACC.Restraint.STP = set_combine(sets.TP.Conqueror.MaxACC,{})

	-- Conqueror(AM3 Up: Restraint + SAM Roll) TP Sets --
	sets.TP.Conqueror.AM3.Restraint.STP = set_combine(sets.TP.Conqueror.AM3,{
		ammo="Ginsen",
		head="Valorous Mask",
		neck="Lissome Necklace",
		ear1="Brutal Earring",
		ear2="Cessance Earring",
		body="Odyss. Chestplate",
		hands="Emicho Gauntlets",
		ring1="Rajas Ring",
		ring2="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Ioskeha Belt",
		legs="Odyssean Cuisses",
		feet="Valorous Greaves"})
	sets.TP.Conqueror.MidACC.AM3.Restraint.STP = set_combine(sets.TP.Conqueror.MidACC.AM3,{
		neck="Combatant's Torque",
		ammo="Ginsen",
		body="Emicho Haubert",
		ring1="Cacoethic Ring +1",
		ring2="Ramuh Ring +1"})
	sets.TP.Conqueror.HighACC.AM3.Restraint.STP = set_combine(sets.TP.Conqueror.HighACC.AM3,{
		ear1="Zennaroi Earring",
		ear2="Digni. Earring",
		waist="Olseni Belt",
		ammo="Seething Bomblet +1"})
	sets.TP.Conqueror.MaxACC.AM3.Restraint.STP = set_combine(sets.TP.Conqueror.MaxACC.AM3,{})

	-- Conqueror(AM3 Down: Ionis + SAM Roll) TP Sets --
	sets.TP.Conqueror.Ionis.STP = set_combine(sets.TP.Conqueror,{
		ammo="Ginsen",
		head="Valorous Mask",
		neck="Lissome Necklace",
		ear1="Brutal Earring",
		ear2="Cessance Earring",
		body="Odyss. Chestplate",
		hands="Emicho Gauntlets",
		ring1="Rajas Ring",
		ring2="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Ioskeha Belt",
		legs="Odyssean Cuisses",
		feet="Valorous Greaves"})
	sets.TP.Conqueror.MidACC.Ionis.STP = set_combine(sets.TP.Conqueror.MidACC,{
		neck="Combatant's Torque",
		ammo="Ginsen",
		body="Emicho Haubert",
		ring1="Cacoethic Ring +1",
		ring2="Ramuh Ring +1"})
	sets.TP.Conqueror.HighACC.Ionis.STP = set_combine(sets.TP.Conqueror.HighACC,{
		ear1="Zennaroi Earring",
		ear2="Digni. Earring",
		ammo="Seething Bomblet +1",
		waist="Olseni Belt"})
	sets.TP.Conqueror.MaxACC.Ionis.STP = set_combine(sets.TP.Conqueror.MaxACC,{})

	-- Conqueror(AM3 Up: Ionis + SAM Roll) TP Sets --
	sets.TP.Conqueror.AM3.Ionis.STP = set_combine(sets.TP.Conqueror.AM3,{
		ammo="Ginsen",
		head="Valorous Mask",
		neck="Lissome Necklace",
		ear1="Brutal Earring",
		ear2="Cessance Earring",
		body="Odyss. Chestplate",
		hands="Emicho Gauntlets",
		ring1="Rajas Ring",
		ring2="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Ioskeha Belt",
		legs="Odyssean Cuisses",
		feet="Valorous Greaves"})
	sets.TP.Conqueror.MidACC.AM3.Ionis.STP = set_combine(sets.TP.Conqueror.MidACC.AM3,{
		neck="Combatant's Torque",
		ammo="Ginsen",
		body="Emicho Haubert",
		ring1="Cacoethic Ring +1",
		ring2="Ramuh Ring +1"})
	sets.TP.Conqueror.HighACC.AM3.Ionis.STP = set_combine(sets.TP.Conqueror.HighACC.AM3,{
		ear1="Zennaroi Earring",
		ear2="Digni. Earring",
		ammo="Seething Bomblet +1",
		waist="Olseni Belt"})
	sets.TP.Conqueror.MaxACC.AM3.Ionis.STP = set_combine(sets.TP.Conqueror.MaxACC.AM3,{})

	-- Conqueror(AM3 Down: Restraint + Ionis + SAM Roll) TP Sets --
	sets.TP.Conqueror.Restraint.Ionis.STP = set_combine(sets.TP.Conqueror,{
		ammo="Ginsen",
		head="Valorous Mask",
		neck="Lissome Necklace",
		ear1="Brutal Earring",
		ear2="Cessance Earring",
		body="Odyss. Chestplate",
		hands="Emicho Gauntlets",
		ring1="Rajas Ring",
		ring2="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Ioskeha Belt",
		legs="Odyssean Cuisses",
		feet="Valorous Greaves"})
	sets.TP.Conqueror.MidACC.Restraint.Ionis.STP = set_combine(sets.TP.Conqueror.MidACC,{
		neck="Combatant's Torque",
		ammo="Ginsen",
		body="Emicho Haubert",
		ring1="Cacoethic Ring +1",
		ring2="Ramuh Ring +1"})
	sets.TP.Conqueror.HighACC.Restraint.Ionis.STP = set_combine(sets.TP.Conqueror.HighACC,{
		ear1="Zennaroi Earring",
		ear2="Digni. Earring",
		ammo="Seething Bomblet +1",
		waist="Olseni Belt"})
	sets.TP.Conqueror.MaxACC.Restraint.Ionis.STP = set_combine(sets.TP.Conqueror.MaxACC,{})

	-- Conqueror(AM3 Up: Restraint + Ionis + SAM Roll) TP Sets --
	sets.TP.Conqueror.AM3.Restraint.Ionis.STP = set_combine(sets.TP.Conqueror.AM3,{
		ammo="Ginsen",
		head="Valorous Mask",
		neck="Lissome Necklace",
		ear1="Brutal Earring",
		ear2="Cessance Earring",
		body="Odyss. Chestplate",
		hands="Emicho Gauntlets",
		ring1="Rajas Ring",
		ring2="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Ioskeha Belt",
		legs="Odyssean Cuisses",
		feet="Valorous Greaves"})
	sets.TP.Conqueror.MidACC.AM3.Restraint.Ionis.STP = set_combine(sets.TP.Conqueror.MidACC.AM3,{
		neck="Combatant's Torque",
		ammo="Ginsen",
		body="Emicho Haubert",
		ring1="Cacoethic Ring +1",
		ring2="Ramuh Ring +1"})
	sets.TP.Conqueror.HighACC.AM3.Restraint.Ionis.STP = set_combine(sets.TP.Conqueror.HighACC.AM3,{
		ear1="Zennaroi Earring",
		ear2="Digni. Earring",
		ammo="Seething Bomblet +1",
		waist="Olseni Belt"})
	sets.TP.Conqueror.MaxACC.AM3.Restraint.Ionis.STP = set_combine(sets.TP.Conqueror.MaxACC.AM3,{})

	-- Fencer TP Sets --
	sets.TP.Fencer = {
		ammo="Ginsen",
		head="Valorous Mask",
		neck="Lissome Necklace",
		ear1="Brutal Earring",
		ear2="Cessance Earring",
		body="Odyss. Chestplate",
		hands="Emicho Gauntlets",
		ring1="Rajas Ring",
		ring2="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Ioskeha Belt",
		legs="Odyssean Cuisses",
		feet="Valorous Greaves"}
	sets.TP.Fencer.MidACC = set_combine(sets.TP.Fencer,{
		neck="Combatant's Torque",
		ammo="Ginsen",
		body="Emicho Haubert",
		ring1="Cacoethic Ring +1",
		ring2="Ramuh Ring +1"})
	sets.TP.Fencer.HighACC = set_combine(sets.TP.Fencer.MidACC,{
		ear1="Zennaroi Earring",
		ear2="Digni. Earring",
		ammo="Seething Bomblet +1"})
	sets.TP.Fencer.MaxACC = set_combine(sets.TP.Fencer.HighACC,{})

	-- Fencer(Restraint) TP Sets --
	sets.TP.Fencer.Restraint = set_combine(sets.TP.Fencer,{
		ammo="Ginsen",
		head="Valorous Mask",
		neck="Lissome Necklace",
		ear1="Brutal Earring",
		ear2="Cessance Earring",
		body="Odyss. Chestplate",
		hands="Emicho Gauntlets",
		ring1="Rajas Ring",
		ring2="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Ioskeha Belt",
		legs="Odyssean Cuisses",
		feet="Valorous Greaves"})
	sets.TP.Fencer.MidACC.Restraint = set_combine(sets.TP.Fencer.MidACC,{
		neck="Combatant's Torque",
		ammo="Ginsen",
		body="Emicho Haubert",
		ring1="Cacoethic Ring +1",
		ring2="Ramuh Ring +1"})
	sets.TP.Fencer.HighACC.Restraint = set_combine(sets.TP.Fencer.HighACC,{
		ear1="Zennaroi Earring",
		ear2="Digni. Earring",
		ammo="Seething Bomblet +1"})
	sets.TP.Fencer.MaxACC.Restraint = set_combine(sets.TP.Fencer.MaxACC,{})

	-- Fencer(Ionis) TP Sets --
	sets.TP.Fencer.Ionis = set_combine(sets.TP.Fencer,{
		ammo="Ginsen",
		head="Valorous Mask",
		neck="Lissome Necklace",
		ear1="Brutal Earring",
		ear2="Cessance Earring",
		body="Odyss. Chestplate",
		hands="Emicho Gauntlets",
		ring1="Rajas Ring",
		ring2="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Ioskeha Belt",
		legs="Odyssean Cuisses",
		feet="Valorous Greaves"})
	sets.TP.Fencer.MidACC.Ionis= set_combine(sets.TP.Fencer.MidACC,{
		neck="Combatant's Torque",
		ammo="Ginsen",
		body="Emicho Haubert",
		ring1="Cacoethic Ring +1",
		ring2="Ramuh Ring +1"})
	sets.TP.Fencer.HighACC.Ionis = set_combine(sets.TP.Fencer.HighACC,{
		ear1="Zennaroi Earring",
		ear2="Digni. Earring",
		ammo="Seething Bomblet +1"})
	sets.TP.Fencer.MaxACC.Ionis = set_combine(sets.TP.Fencer.MaxACC,{})

	-- Fencer(Restraint + Ionis) TP Sets --
	sets.TP.Fencer.Restraint.Ionis = set_combine(sets.TP.Fencer,{
		ammo="Ginsen",
		head="Valorous Mask",
		neck="Lissome Necklace",
		ear1="Brutal Earring",
		ear2="Cessance Earring",
		body="Odyss. Chestplate",
		hands="Emicho Gauntlets",
		ring1="Rajas Ring",
		ring2="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Ioskeha Belt",
		legs="Odyssean Cuisses",
		feet="Valorous Greaves"})
	sets.TP.Fencer.MidACC.Restraint.Ionis = set_combine(sets.TP.Fencer.MidACC,{
		neck="Combatant's Torque",
		ammo="Ginsen",
		body="Emicho Haubert",
		ring1="Cacoethic Ring +1",
		ring2="Ramuh Ring +1"})
	sets.TP.Fencer.HighACC.Restraint.Ionis = set_combine(sets.TP.Fencer.HighACC,{
		ear1="Zennaroi Earring",
		ear2="Digni. Earring",
		ammo="Seething Bomblet +1"})
	sets.TP.Fencer.MaxACC.Restraint.Ionis = set_combine(sets.TP.Fencer.MaxACC,{})

	-- Fencer(SAM Roll) TP Sets --
	sets.TP.Fencer.STP = set_combine(sets.TP.Fencer,{
		ammo="Ginsen",
		head="Valorous Mask",
		neck="Lissome Necklace",
		ear1="Brutal Earring",
		ear2="Cessance Earring",
		body="Odyss. Chestplate",
		hands="Emicho Gauntlets",
		ring1="Rajas Ring",
		ring2="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Ioskeha Belt",
		legs="Odyssean Cuisses",
		feet="Valorous Greaves"})
	sets.TP.Fencer.MidACC.STP = set_combine(sets.TP.Fencer.MidACC,{
		neck="Combatant's Torque",
		ammo="Ginsen",
		body="Emicho Haubert",
		ring1="Cacoethic Ring +1",
		ring2="Ramuh Ring +1"})
	sets.TP.Fencer.HighACC.STP = set_combine(sets.TP.Fencer.HighACC,{
		ear1="Zennaroi Earring",
		ear2="Digni. Earring",
		ammo="Seething Bomblet +1"})
	sets.TP.Fencer.MaxACC.STP = set_combine(sets.TP.Fencer.MaxACC,{})

	-- Fencer(Restraint + SAM Roll) TP Sets --
	sets.TP.Fencer.Restraint.STP = set_combine(sets.TP.Fencer,{
		ammo="Ginsen",
		head="Valorous Mask",
		neck="Lissome Necklace",
		ear1="Brutal Earring",
		ear2="Cessance Earring",
		body="Odyss. Chestplate",
		hands="Emicho Gauntlets",
		ring1="Rajas Ring",
		ring2="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Ioskeha Belt",
		legs="Odyssean Cuisses",
		feet="Valorous Greaves"})
	sets.TP.Fencer.MidACC.Restraint.STP = set_combine(sets.TP.Fencer.MidACC,{
		neck="Combatant's Torque",
		ammo="Ginsen",
		body="Emicho Haubert",
		ring1="Cacoethic Ring +1",
		ring2="Ramuh Ring +1"})
	sets.TP.Fencer.HighACC.Restraint.STP = set_combine(sets.TP.Fencer.HighACC,{
		ear1="Zennaroi Earring",
		ear2="Digni. Earring",
		ammo="Seething Bomblet +1"})
	sets.TP.Fencer.MaxACC.Restraint.STP = set_combine(sets.TP.Fencer.MaxACC,{})

	-- Fencer(Ionis + SAM Roll) TP Sets --
	sets.TP.Fencer.Ionis.STP = set_combine(sets.TP.Fencer,{
		ammo="Ginsen",
		head="Valorous Mask",
		neck="Lissome Necklace",
		ear1="Brutal Earring",
		ear2="Cessance Earring",
		body="Odyss. Chestplate",
		hands="Emicho Gauntlets",
		ring1="Rajas Ring",
		ring2="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Ioskeha Belt",
		legs="Odyssean Cuisses",
		feet="Valorous Greaves"})
	sets.TP.Fencer.MidACC.Ionis.STP = set_combine(sets.TP.Fencer.MidACC,{
		neck="Combatant's Torque",
		ammo="Ginsen",
		body="Emicho Haubert",
		ring1="Cacoethic Ring +1",
		ring2="Ramuh Ring +1"})
	sets.TP.Fencer.HighACC.Ionis.STP = set_combine(sets.TP.Fencer.HighACC,{
		ear1="Zennaroi Earring",
		ear2="Digni. Earring",
		ammo="Seething Bomblet +1"})
	sets.TP.Fencer.MaxACC.Ionis.STP = set_combine(sets.TP.Fencer.MaxACC,{})

	-- Fencer(Restraint + Ionis + SAM Roll) TP Sets --
	sets.TP.Fencer.Restraint.Ionis.STP = set_combine(sets.TP.Fencer,{
		ammo="Ginsen",
		head="Valorous Mask",
		neck="Lissome Necklace",
		ear1="Brutal Earring",
		ear2="Cessance Earring",
		body="Odyss. Chestplate",
		hands="Emicho Gauntlets",
		ring1="Rajas Ring",
		ring2="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Ioskeha Belt",
		legs="Odyssean Cuisses",
		feet="Valorous Greaves"})
	sets.TP.Fencer.MidACC.Restraint.Ionis.STP = set_combine(sets.TP.Fencer.MidACC,{
		neck="Combatant's Torque",
		ammo="Ginsen",
		body="Emicho Haubert",
		ring1="Cacoethic Ring +1",
		ring2="Ramuh Ring +1"})
	sets.TP.Fencer.HighACC.Restraint.Ionis.STP = set_combine(sets.TP.Fencer.HighACC,{
		ear1="Zennaroi Earring",
		ear2="Digni. Earring",
		ammo="Seething Bomblet +1"})
	sets.TP.Fencer.MaxACC.Restraint.Ionis.STP = set_combine(sets.TP.Fencer.MaxACC,{})

	-- Ragnarok TP Sets --
	sets.TP.Ragnarok = {
		ammo="Yetshila",
		head="Boii Mask +1",
		neck="Lissome Necklace",
		ear1="Brutal Earring",
		ear2="Cessance Earring",
		body="Odyss. Chestplate",
		hands={ name="Valorous Mitts", augments={'Accuracy+22 Attack+22','"Dbl.Atk."+3','Accuracy+13','Attack+15',}},
		--hands="Emicho Gauntlets",
		ring1="Rajas Ring",
		ring2="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Ioskeha Belt",
		legs="Odyssean Cuisses",
		feet="Valorous Greaves"}
	sets.TP.Ragnarok.MidACC = set_combine(sets.TP.Ragnarok,{
		neck="Combatant's Torque",
		ammo="Ginsen",
		body="Emicho Haubert",
		ring1="Cacoethic Ring +1",
		ring2="Ramuh Ring +1"})
	sets.TP.Ragnarok.HighACC = set_combine(sets.TP.Ragnarok.MidACC,{
		ear1="Zennaroi Earring",
		ear2="Digni. Earring",
		ammo="Seething Bomblet +1",
		waist="Olseni Belt"})
	sets.TP.Ragnarok.MaxACC = set_combine(sets.TP.Ragnarok.HighACC,{})

	-- Ragnarok(Restraint) TP Sets --
	sets.TP.Ragnarok.Restraint = set_combine(sets.TP.Ragnarok,{
		ammo="Yetshila",
		head="Boii Mask +1",
		neck="Lissome Necklace",
		ear1="Brutal Earring",
		ear2="Cessance Earring",
		body="Odyss. Chestplate",
		hands="Emicho Gauntlets",
		ring1="Rajas Ring",
		ring2="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Ioskeha Belt",
		legs="Odyssean Cuisses",
		feet="Valorous Greaves"})
	sets.TP.Ragnarok.MidACC.Restraint = set_combine(sets.TP.Ragnarok.MidACC,{
		neck="Combatant's Torque",
		ammo="Ginsen",
		body="Emicho Haubert",
		ring1="Cacoethic Ring +1",
		ring2="Ramuh Ring +1"})
	sets.TP.Ragnarok.HighACC.Restraint = set_combine(sets.TP.Ragnarok.HighACC,{
		ear1="Zennaroi Earring",
		ear2="Digni. Earring",
		ammo="Seething Bomblet +1",
		waist="Olseni Belt"})
	sets.TP.Ragnarok.MaxACC.Restraint = set_combine(sets.TP.Ragnarok.MaxACC,{})

	-- Ragnarok(Ionis) TP Sets --
	sets.TP.Ragnarok.Ionis = set_combine(sets.TP.Ragnarok,{
		ammo="Yetshila",
		head="Boii Mask +1",
		neck="Lissome Necklace",
		ear1="Brutal Earring",
		ear2="Cessance Earring",
		body="Odyss. Chestplate",
		hands="Emicho Gauntlets",
		ring1="Rajas Ring",
		ring2="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Ioskeha Belt",
		legs="Odyssean Cuisses",
		feet="Valorous Greaves"})
	sets.TP.Ragnarok.MidACC.Ionis = set_combine(sets.TP.Ragnarok.MidACC,{
		neck="Combatant's Torque",
		ammo="Ginsen",
		body="Emicho Haubert",
		ring1="Cacoethic Ring +1",
		ring2="Ramuh Ring +1"})
	sets.TP.Ragnarok.HighACC.Ionis = set_combine(sets.TP.Ragnarok.HighACC,{
		ear1="Zennaroi Earring",
		ear2="Digni. Earring",
		ammo="Seething Bomblet +1",
		waist="Olseni Belt"})
	sets.TP.Ragnarok.MaxACC.Ionis = set_combine(sets.TP.Ragnarok.MaxACC,{})

	-- Ragnarok(Restraint + Ionis) TP Sets --
	sets.TP.Ragnarok.Restraint.Ionis = set_combine(sets.TP.Ragnarok,{
		ammo="Yetshila",
		head="Boii Mask +1",
		neck="Lissome Necklace",
		ear1="Brutal Earring",
		ear2="Cessance Earring",
		body="Odyss. Chestplate",
		hands="Emicho Gauntlets",
		ring1="Rajas Ring",
		ring2="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Ioskeha Belt",
		legs="Odyssean Cuisses",
		feet="Valorous Greaves"})
	sets.TP.Ragnarok.MidACC.Restraint.Ionis = set_combine(sets.TP.Ragnarok.MidACC,{
		neck="Combatant's Torque",
		ammo="Ginsen",
		body="Emicho Haubert",
		ring1="Cacoethic Ring +1",
		ring2="Ramuh Ring +1"})
	sets.TP.Ragnarok.HighACC.Restraint.Ionis = set_combine(sets.TP.Ragnarok.HighACC,{
		ear1="Zennaroi Earring",
		ear2="Digni. Earring",
		ammo="Seething Bomblet +1",
		waist="Olseni Belt"})
	sets.TP.Ragnarok.MaxACC.Restraint.Ionis = set_combine(sets.TP.Ragnarok.MaxACC,{})

	-- Ragnarok(SAM Roll) TP Sets --
	sets.TP.Ragnarok.STP = set_combine(sets.TP.Ragnarok,{
		ammo="Yetshila",
		head="Boii Mask +1",
		neck="Lissome Necklace",
		ear1="Brutal Earring",
		ear2="Cessance Earring",
		body="Odyss. Chestplate",
		hands="Emicho Gauntlets",
		ring1="Rajas Ring",
		ring2="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Ioskeha Belt",
		legs="Odyssean Cuisses",
		feet="Valorous Greaves"})
	sets.TP.Ragnarok.MidACC.STP = set_combine(sets.TP.Ragnarok.MidACC,{
		neck="Combatant's Torque",
		ammo="Ginsen",
		body="Emicho Haubert",
		ring1="Cacoethic Ring +1",
		ring2="Ramuh Ring +1"})
	sets.TP.Ragnarok.HighACC.STP = set_combine(sets.TP.Ragnarok.HighACC,{
		ear1="Zennaroi Earring",
		ear2="Digni. Earring",
		ammo="Seething Bomblet +1",
		waist="Olseni Belt"})
	sets.TP.Ragnarok.MaxACC.STP = set_combine(sets.TP.Ragnarok.MaxACC,{})

	-- Ragnarok(Restraint + SAM Roll) TP Sets --
	sets.TP.Ragnarok.Restraint.STP = set_combine(sets.TP.Ragnarok,{
		ammo="Yetshila",
		head="Boii Mask +1",
		neck="Lissome Necklace",
		ear1="Brutal Earring",
		ear2="Cessance Earring",
		body="Odyss. Chestplate",
		hands="Emicho Gauntlets",
		ring1="Rajas Ring",
		ring2="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Ioskeha Belt",
		legs="Odyssean Cuisses",
		feet="Valorous Greaves"})
	sets.TP.Ragnarok.MidACC.Restraint.STP = set_combine(sets.TP.Ragnarok.MidACC,{
		neck="Combatant's Torque",
		ammo="Ginsen",
		body="Emicho Haubert",
		ring1="Cacoethic Ring +1",
		ring2="Ramuh Ring +1"})
	sets.TP.Ragnarok.HighACC.Restraint.STP = set_combine(sets.TP.Ragnarok.HighACC,{
		ear1="Zennaroi Earring",
		ear2="Digni. Earring",
		ammo="Seething Bomblet +1",
		waist="Olseni Belt"})
	sets.TP.Ragnarok.MaxACC.Restraint.STP = set_combine(sets.TP.Ragnarok.MaxACC,{})

	-- Ragnarok(Ionis + SAM Roll) TP Sets --
	sets.TP.Ragnarok.Ionis.STP = set_combine(sets.TP.Ragnarok,{
		ammo="Yetshila",
		head="Boii Mask +1",
		neck="Lissome Necklace",
		ear1="Brutal Earring",
		ear2="Cessance Earring",
		body="Odyss. Chestplate",
		hands="Emicho Gauntlets",
		ring1="Rajas Ring",
		ring2="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Ioskeha Belt",
		legs="Odyssean Cuisses",
		feet="Valorous Greaves"})
	sets.TP.Ragnarok.MidACC.Ionis.STP = set_combine(sets.TP.Ragnarok.MidACC,{
		neck="Combatant's Torque",
		ammo="Ginsen",
		body="Emicho Haubert",
		ring1="Cacoethic Ring +1",
		ring2="Ramuh Ring +1"})
	sets.TP.Ragnarok.HighACC.Ionis.STP = set_combine(sets.TP.Ragnarok.HighACC,{
		ear1="Zennaroi Earring",
		waist="Olseni Belt"})
	sets.TP.Ragnarok.MaxACC.Ionis.STP = set_combine(sets.TP.Ragnarok.MaxACC,{})

	-- Ragnarok(Restraint + Ionis + SAM Roll) TP Sets --
	sets.TP.Ragnarok.Restraint.Ionis.STP = set_combine(sets.TP.Ragnarok,{
		ammo="Yetshila",
		head="Boii Mask +1",
		neck="Lissome Necklace",
		ear1="Brutal Earring",
		ear2="Cessance Earring",
		body="Odyss. Chestplate",
		hands="Emicho Gauntlets",
		ring1="Rajas Ring",
		ring2="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Ioskeha Belt",
		legs="Odyssean Cuisses",
		feet="Valorous Greaves"})
	sets.TP.Ragnarok.MidACC.Restraint.Ionis.STP = set_combine(sets.TP.Ragnarok.MidACC,{
		neck="Combatant's Torque",
		ammo="Ginsen",
		body="Emicho Haubert",
		ring1="Cacoethic Ring +1",
		ring2="Ramuh Ring +1"})
	sets.TP.Ragnarok.HighACC.Restraint.Ionis.STP = set_combine(sets.TP.Ragnarok.HighACC,{
		ear1="Zennaroi Earring",
		ear2="Digni. Earring",
		ammo="Seething Bomblet +1",
		waist="Olseni Belt"})
	sets.TP.Ragnarok.MaxACC.Restraint.Ionis.STP = set_combine(sets.TP.Ragnarok.MaxACC,{})

	-- Bravura(AM Down) TP Sets --
	sets.TP.Bravura = {}
	sets.TP.Bravura.MidACC = set_combine(sets.TP.Bravura,{})
	sets.TP.Bravura.HighACC = set_combine(sets.TP.Bravura.MidACC,{})
	sets.TP.Bravura.MaxACC = set_combine(sets.TP.Bravura.HighACC,{})

	-- Bravura(AM Up) TP Sets --
	sets.TP.Bravura.AM = set_combine(sets.TP.Bravura,{})
	sets.TP.Bravura.MidACC.AM = set_combine(sets.TP.Bravura.MidACC,{})
	sets.TP.Bravura.HighACC.AM = set_combine(sets.TP.Bravura.HighACC,{})
	sets.TP.Bravura.MaxACC.AM = set_combine(sets.TP.Bravura.MaxACC,{})

	-- Bravura(AM Down: Restraint) TP Sets --
	sets.TP.Bravura.Restraint = set_combine(sets.TP.Bravura,{})
	sets.TP.Bravura.MidACC.Restraint = set_combine(sets.TP.Bravura.MidACC,{})
	sets.TP.Bravura.HighACC.Restraint = set_combine(sets.TP.Bravura.HighACC,{})
	sets.TP.Bravura.MaxACC.Restraint = set_combine(sets.TP.Bravura.MaxACC,{})

	-- Bravura(AM Up: Restraint) TP Sets --
	sets.TP.Bravura.AM.Restraint = set_combine(sets.TP.Bravura.AM,{})
	sets.TP.Bravura.MidACC.AM.Restraint = set_combine(sets.TP.Bravura.MidACC.AM,{})
	sets.TP.Bravura.HighACC.AM.Restraint = set_combine(sets.TP.Bravura.HighACC.AM,{})
	sets.TP.Bravura.MaxACC.AM.Restraint = set_combine(sets.TP.Bravura.MaxACC.AM,{})

	-- Bravura(AM Down: Ionis) TP Sets --
	sets.TP.Bravura.Ionis = set_combine(sets.TP.Bravura,{})
	sets.TP.Bravura.MidACC.Ionis = set_combine(sets.TP.Bravura.MidACC,{})
	sets.TP.Bravura.HighACC.Ionis = set_combine(sets.TP.Bravura.HighACC,{})
	sets.TP.Bravura.MaxACC.Ionis = set_combine(sets.TP.Bravura.MaxACC,{})

	-- Bravura(AM Up: Ionis) TP Sets --
	sets.TP.Bravura.AM.Ionis = set_combine(sets.TP.Bravura.AM,{})
	sets.TP.Bravura.MidACC.AM.Ionis = set_combine(sets.TP.Bravura.MidACC.AM,{})
	sets.TP.Bravura.HighACC.AM.Ionis = set_combine(sets.TP.Bravura.HighACC.AM,{})
	sets.TP.Bravura.MaxACC.AM.Ionis = set_combine(sets.TP.Bravura.MaxACC.AM,{})

	-- Bravura(AM Down: Restraint + Ionis) TP Sets --
	sets.TP.Bravura.Restraint.Ionis = set_combine(sets.TP.Bravura,{})
	sets.TP.Bravura.MidACC.Restraint.Ionis = set_combine(sets.TP.Bravura.MidACC,{})
	sets.TP.Bravura.HighACC.Restraint.Ionis = set_combine(sets.TP.Bravura.HighACC,{})
	sets.TP.Bravura.MaxACC.Restraint.Ionis = set_combine(sets.TP.Bravura.MaxACC,{})

	-- Bravura(AM Up: Restraint + Ionis) TP Sets --
	sets.TP.Bravura.AM.Restraint.Ionis = set_combine(sets.TP.Bravura.AM,{})
	sets.TP.Bravura.MidACC.AM.Restraint.Ionis = set_combine(sets.TP.Bravura.MidACC.AM,{})
	sets.TP.Bravura.HighACC.AM.Restraint.Ionis = set_combine(sets.TP.Bravura.HighACC.AM,{})
	sets.TP.Bravura.MaxACC.AM.Restraint.Ionis = set_combine(sets.TP.Bravura.MaxACC.AM,{})

	-- Bravura(AM Down: SAM Roll) TP Sets --
	sets.TP.Bravura.STP = set_combine(sets.TP.Bravura,{})
	sets.TP.Bravura.MidACC.STP = set_combine(sets.TP.Bravura.MidACC,{})
	sets.TP.Bravura.HighACC.STP = set_combine(sets.TP.Bravura.HighACC,{})
	sets.TP.Bravura.MaxACC.STP = set_combine(sets.TP.Bravura.MaxACC,{})

	-- Bravura(AM Up: SAM Roll) TP Sets --
	sets.TP.Bravura.AM.STP = set_combine(sets.TP.Bravura.AM,{})
	sets.TP.Bravura.MidACC.AM.STP = set_combine(sets.TP.Bravura.MidACC.AM,{})
	sets.TP.Bravura.HighACC.AM.STP = set_combine(sets.TP.Bravura.HighACC.AM,{})
	sets.TP.Bravura.MaxACC.AM.STP = set_combine(sets.TP.Bravura.MaxACC.AM,{})

	-- Bravura(AM Down: Restraint + SAM Roll) TP Sets --
	sets.TP.Bravura.Restraint.STP = set_combine(sets.TP.Bravura,{})
	sets.TP.Bravura.MidACC.Restraint.STP = set_combine(sets.TP.Bravura.MidACC,{})
	sets.TP.Bravura.HighACC.Restraint.STP = set_combine(sets.TP.Bravura.HighACC,{})
	sets.TP.Bravura.MaxACC.Restraint.STP = set_combine(sets.TP.Bravura.MaxACC,{})

	-- Bravura(AM Up: Restraint + SAM Roll) TP Sets --
	sets.TP.Bravura.AM.Restraint.STP = set_combine(sets.TP.Bravura.AM,{})
	sets.TP.Bravura.MidACC.AM.Restraint.STP = set_combine(sets.TP.Bravura.MidACC.AM,{})
	sets.TP.Bravura.HighACC.AM.Restraint.STP = set_combine(sets.TP.Bravura.HighACC.AM,{})
	sets.TP.Bravura.MaxACC.AM.Restraint.STP = set_combine(sets.TP.Bravura.MaxACC.AM,{})

	-- Bravura(AM Down: Ionis + SAM Roll) TP Sets --
	sets.TP.Bravura.Ionis.STP = set_combine(sets.TP.Bravura,{})
	sets.TP.Bravura.MidACC.Ionis.STP = set_combine(sets.TP.Bravura.MidACC,{})
	sets.TP.Bravura.HighACC.Ionis.STP = set_combine(sets.TP.Bravura.HighACC,{})
	sets.TP.Bravura.MaxACC.Ionis.STP = set_combine(sets.TP.Bravura.MaxACC,{})

	-- Bravura(AM Up: Ionis + SAM Roll) TP Sets --
	sets.TP.Bravura.AM.Ionis.STP = set_combine(sets.TP.Bravura.AM,{})
	sets.TP.Bravura.MidACC.AM.Ionis.STP = set_combine(sets.TP.Bravura.MidACC.AM,{})
	sets.TP.Bravura.HighACC.AM.Ionis.STP = set_combine(sets.TP.Bravura.HighACC.AM,{})
	sets.TP.Bravura.MaxACC.AM.Ionis.STP = set_combine(sets.TP.Bravura.MaxACC.AM,{})

	-- Bravura(AM Down: Restraint + Ionis + SAM Roll) TP Sets --
	sets.TP.Bravura.Restraint.Ionis.STP = set_combine(sets.TP.Bravura,{})
	sets.TP.Bravura.MidACC.Restraint.Ionis.STP = set_combine(sets.TP.Bravura.MidACC,{})
	sets.TP.Bravura.HighACC.Restraint.Ionis.STP = set_combine(sets.TP.Bravura.HighACC,{})
	sets.TP.Bravura.MaxACC.Restraint.Ionis.STP = set_combine(sets.TP.Bravura.MaxACC,{})

	-- Bravura(AM Up: Restraint + Ionis + SAM Roll) TP Sets --
	sets.TP.Bravura.AM.Restraint.Ionis.STP = set_combine(sets.TP.Bravura.AM,{})
	sets.TP.Bravura.MidACC.AM.Restraint.Ionis.STP = set_combine(sets.TP.Bravura.MidACC.AM,{})
	sets.TP.Bravura.HighACC.AM.Restraint.Ionis.STP = set_combine(sets.TP.Bravura.HighACC.AM,{})
	sets.TP.Bravura.MaxACC.AM.Restraint.Ionis.STP = set_combine(sets.TP.Bravura.MaxACC.AM,{})

	-- Mighty Strikes TP Set --
	sets.TP.MS = {}

	-- Retaliation Set --
	sets.TP.Retaliation = {hands="Pumm. Mufflers +1",feet="Boii Calligae +1"}

	-- AM3 Rancor ON Mantle --
	sets.TP.Rancor = {back="Rancorous Mantle"}

	-- PDT/MDT Sets --
	sets.PDT = {
		head="Sulevia's mask +1",
		ammo="Staunch tathlum",
		body="Sulevia's Plate. +1",
		hands="Sulev. Gauntlets +1",
		legs="Sulevia's Cuisses +1",
		feet="Sulevia's leggings +1",
		ear1="Genmei Earring",
		ear2="Cessance Earring",
		neck="Loricate Torque +1",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Tempus Fugit",
		ring1="Dark Ring",
		ring2="Defending Ring"}

	sets.MDT = set_combine(sets.PDT,{})

	-- Hybrid/Kiting Sets --
	sets.TP.Hybrid = set_combine(sets.PDT,{
		head="Sulevia's mask +1",
		ammo="Staunch tathlum",
		body="Sulevia's Plate. +1",
		hands="Sulev. Gauntlets +1",
		legs="Sulevia's Cuisses +1",
		feet="Sulevia's leggings +1",
		ear1="Genmei Earring",
		ear2="Cessance Earring",
		neck="Loricate Torque +1",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Tempus Fugit",
		ring1="Dark Ring",
		ring2="Defending Ring"})
	sets.TP.Hybrid.MidACC = set_combine(sets.TP.Hybrid,{})
	sets.TP.Hybrid.HighACC = set_combine(sets.TP.Hybrid.MidACC,{})
	sets.TP.Hybrid.MaxACC = set_combine(sets.TP.Hybrid.HighACC,{})

	sets.Kiting = set_combine(sets.PDT,{feet="Hermes' Sandals +1"})

	-- WS Base Set --
	sets.WS = {
		head="Sulevia's mask +1",
		ammo="Seething Bomblet +1",
		body="Argosy Hauberk",
		hands="Argosy Mufflers",
		legs="Argosy Breeches",
		feet="Sulevia's leggings +1",
		ear1="Brutal Earring",
		ear2="Moonshade Earring",
		neck="Fotia Gorget",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Fotia Belt",
		ring1="Ifrit Ring +1",
		ring2="Shukuyu Ring"}

	-- Upheaval Sets --
	sets.WS.Upheaval = {
		head="Sulevia's mask +1",
		ammo="Seething Bomblet +1",
		body="Sulevia's Plate. +1",
		hands="Sulev. Gauntlets +1",
		legs="Sulevia's Cuisses +1",
		feet="Sulevia's leggings +1",
		ear1="Brutal Earring",
		ear2="Moonshade Earring",
		neck="Fotia Gorget",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Fotia Belt",
		ring1="Ifrit Ring +1",
		ring2="Petrov Ring"}
	sets.WS.Upheaval.MidACC = set_combine(sets.WS.Upheaval,{})
	sets.WS.Upheaval.HighACC = set_combine(sets.WS.Upheaval.MidACC,{})
	sets.WS.Upheaval.MaxACC = set_combine(sets.WS.Upheaval.HighACC,{})

	-- Upheaval(Attack) Set --
	sets.WS.Upheaval.ATT = set_combine(sets.WS.Upheaval,{})

	-- Ukko's Fury Sets --
	sets.WS["Ukko's Fury"] = {
		head="Boii mask +1",
		ammo="Yetshila",
		body="Argosy Hauberk",
		hands="Argosy Mufflers",
		legs="Argosy Breeches",
		feet="Boii calligae +1",
		ear1="Brutal Earring",
		ear2="Moonshade Earring",
		neck="Fotia Gorget",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Fotia Belt",
		ring1="Ifrit Ring +1",
		ring2="Shukuyu Ring"}
	sets.WS["Ukko's Fury"].MidACC = set_combine(sets.WS["Ukko's Fury"],{})
	sets.WS["Ukko's Fury"].HighACC = set_combine(sets.WS["Ukko's Fury"].MidACC,{})
	sets.WS["Ukko's Fury"].MaxACC = set_combine(sets.WS["Ukko's Fury"].HighACC,{})

	-- Ukko's Fury(Attack) Set --
	sets.WS["Ukko's Fury"].ATT = set_combine(sets.WS["Ukko's Fury"],{})

	-- King's Justice Sets --
	sets.WS["King's Justice"] = {
		head="Sulevia's mask +1",
		ammo="Seething Bomblet +1",
		body="Argosy Hauberk",
		hands="Argosy Mufflers",
		legs="Argosy Breeches",
		feet="Sulevia's leggings +1",
		ear1="Brutal Earring",
		ear2="Moonshade Earring",
		neck="Fotia Gorget",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Fotia Belt",
		ring1="Ifrit Ring +1",
		ring2="Shukuyu Ring"}
	sets.WS["King's Justice"].MidACC  = set_combine(sets.WS["King's Justice"],{})
	sets.WS["King's Justice"].HighACC = set_combine(sets.WS["King's Justice"].MidACC,{})
	sets.WS["King's Justice"].MaxACC = set_combine(sets.WS["King's Justice"].HighACC,{})

	
	-- Resolution Sets --
	sets.WS["Resolution"] = {
		head="Sulevia's mask +1",
		ammo="Seething Bomblet +1",
		body="Argosy Hauberk",
		hands="Argosy Mufflers",
		legs="Argosy Breeches",
		feet="Sulevia's leggings +1",
		ear1="Brutal Earring",
		ear2="Moonshade Earring",
		neck="Fotia Gorget",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		waist="Fotia Belt",
		ring1="Ifrit Ring +1",
		ring2="Shukuyu Ring"}
	sets.WS["Resolution"].MidACC  = set_combine(sets.WS["Resolution"],{})
	sets.WS["Resolution"].HighACC = set_combine(sets.WS["Resolution"].MidACC,{})
	sets.WS["Resolution"].MaxACC = set_combine(sets.WS["Resolution"].HighACC,{})
	
	-- Savage Blade Sets --
	sets.WS["Savage Blade"] = {
		head="Sulevia's mask +1",
		ammo="Seething Bomblet +1",
		body="Odyss. Chestplate",
		hands="Sulev. Gauntlets +1",
		legs="Sulevia's Cuisses +1",
		feet="Sulevia's leggings +1",
		ear1="Ishvara Earring",
		ear2="Moonshade Earring",
		neck="Fotia Gorget",
		back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
		waist="Fotia Belt",
		ring1="Ifrit Ring +1",
		ring2="Shukuyu Ring"}
	sets.WS["Savage Blade"].MidACC  = set_combine(sets.WS["Savage Blade"],{})
	sets.WS["Savage Blade"].HighACC = set_combine(sets.WS["Savage Blade"].MidACC,{})
	sets.WS["Savage Blade"].MaxACC = set_combine(sets.WS["Savage Blade"].HighACC,{})
	
	-- Black Halo Sets --
	sets.WS["Black Halo"] = {
		head="Sulevia's mask +1",
		ammo="Seething Bomblet +1",
		body="Sulevia's Plate. +1",
		hands="Sulev. Gauntlets +1",
		legs="Sulevia's Cuisses +1",
		feet="Sulevia's leggings +1",
		ear1="Ishvara Earring",
		ear2="Moonshade Earring",
		neck="Fotia Gorget",
		back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
		waist="Fotia Belt",
		ring1="Ifrit Ring +1",
		ring2="Shukuyu Ring"}
	sets.WS["Black Halo"].MidACC  = set_combine(sets.WS["Black Halo"],{})
	sets.WS["Black Halo"].HighACC = set_combine(sets.WS["Black Halo"].MidACC,{})
	sets.WS["Black Halo"].MaxACC = set_combine(sets.WS["Black Halo"].HighACC,{})
	
	-- Cloudsplitter Sets --
	sets.WS["Cloudsplitter"] = {
		head="Jumalik helm",
		ammo="Seething Bomblet +1",
		ammo="Seething Bomblet +1",
		body="Odyss. Chestplate",
		hands="Sulev. Gauntlets +1",
		legs="Sulevia's Cuisses +1",
		feet="Odyssean Greaves",
		ear1="Friomisi Earring",
		ear2="Moonshade Earring",
		neck="Sanctity necklace",
		back="Argocham. Mantle",
		waist="Eschan Stone",
		ring1="Shiva Ring +1",
		ring2="Shiva Ring +1"}
	sets.WS["Cloudsplitter"].MidACC  = set_combine(sets.WS["Cloudsplitter"],{})
	sets.WS["Cloudsplitter"].HighACC = set_combine(sets.WS["Cloudsplitter"].MidACC,{})
	sets.WS["Cloudsplitter"].MaxACC = set_combine(sets.WS["Cloudsplitter"].HighACC,{})
	
	-- Ground Strike --
	sets.WS["Ground Strike"] = {
		head="Sulevia's mask +1",
		ammo="Seething Bomblet +1",
		body="Odyss. Chestplate",
		hands="Argosy Mufflers",
		legs="Argosy Breeches",
		feet="Sulevia's leggings +1",
		ear1="Brutal Earring",
		ear2="Moonshade Earring",
		neck="Fotia Gorget",
		back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
		waist="Fotia Belt",
		ring1="Ifrit Ring +1",
		ring2="Shukuyu Ring"}
	sets.WS["Ground Strike"].MidACC  = set_combine(sets.WS["Ground Strike"],{})
	sets.WS["Ground Strike"].HighACC = set_combine(sets.WS["Ground Strike"].MidACC,{})
	sets.WS["Ground Strike"].MaxACC = set_combine(sets.WS["Ground Strike"].HighACC,{})
	
	
	-- Scourge Sets --
	sets.WS.Scourge = {
		head="Sulevia's mask +1",
		ammo="Seething Bomblet +1",
		body="Argosy Hauberk",
		hands="Argosy Mufflers",
		legs="Argosy Breeches",
		feet="Sulevia's leggings +1",
		ear1="Brutal Earring",
		ear2="Ishvara Earring",
		neck="Fotia Gorget",
		back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
		waist="Fotia Belt",
		ring1="Ifrit Ring +1",
		ring2="Shukuyu Ring"}
	sets.WS.Scourge.MidACC  = set_combine(sets.WS.Scourge,{})
	sets.WS.Scourge.HighACC = set_combine(sets.WS.Scourge.MidACC,{})
	sets.WS.Scourge.MaxACC = set_combine(sets.WS.Scourge.HighACC,{})
	
	-- Judgment Sets --
	sets.WS.Judgment = {
		head="Sulevia's mask +1",
		ammo="Seething Bomblet +1",
		body="Argosy Hauberk",
		hands="Argosy Mufflers",
		legs="Argosy Breeches",
		feet="Sulevia's leggings +1",
		ear1="Isvara Earring",
		ear2="Moonshade Earring",
		neck="Fotia Gorget",
		back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
		waist="Fotia Belt",
		ring1="Ifrit Ring +1",
		ring2="Shukuyu Ring"}
	sets.WS.Judgment.MidACC  = set_combine(sets.WS.Judgment,{})
	sets.WS.Judgment.HighACC = set_combine(sets.WS.Judgment.MidACC,{})
	sets.WS.Judgment.MaxACC = set_combine(sets.WS.Judgment.HighACC,{})
	-- Fell Cleave Set --
	
	
	sets.WS["Fell Cleave"] = {}

	-- Mighty Strikes WS Set --
	sets.MS_WS = {}

	-- JA Sets --
	sets.JA = {}
	sets.JA.Berserk = {body="Pumm. Lorica +1",back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},feet="Agoge Calligae +1"}
	sets.JA.Restraint = {hands="Boii mufflers +1"}
	sets.JA.Aggressor = {head="Pumm. Mask +1",body="Agoge Lorica +1"}
	sets.JA["Blood Rage"] = {body="Boii Lorica +1"}
	sets.JA.Warcry = {head="Agoge Mask +1"}
	sets.JA.Tomahawk = {ammo="Thr. Tomahawk",feet="Agoge Calligae +1"}
	sets.JA["Mighty Strikes"] = {hands="Agoge Mufflers +1"}

	-- Waltz Set --
	sets.Waltz = {}

	sets.Precast = {}
	-- Fastcast Set --
	sets.Precast.FastCast = {}

	sets.Midcast = {}
	-- Magic Haste Set --
	sets.Midcast.Haste = set_combine(sets.PDT,{})
end

function pretarget(spell,action)
	if spell.action_type == 'Magic' and buffactive.silence then -- Auto Use Echo Drops If You Are Silenced --
		cancel_spell()
		send_command('input /item "Echo Drops" <me>')
	elseif spell.english == "Berserk" and buffactive.Berserk then -- Change Berserk To Aggressor If Berserk Is On --
		cancel_spell()
		send_command('Aggressor')
	elseif spell.english == "Seigan" and buffactive.Seigan then -- Change Seigan To Third Eye If Seigan Is On --
		cancel_spell()
		send_command('ThirdEye')
	elseif spell.english == "Meditate" and player.tp > 2900 then -- Cancel Meditate If TP Is Above 2900 --
		cancel_spell()
		add_to_chat(123, spell.name .. ' Canceled: ['..player.tp..' TP]')
	elseif spell.type == 'WeaponSkill' and player.status == 'Engaged' then
		if spell.english ~= 'Bora Axe' and spell.name ~= 'Mistral Axe' and spell.target.distance > target_distance then -- Cancel WS If You Are Out Of Range --
			cancel_spell()
			add_to_chat(123, spell.name..' Canceled: [Out of Range]')
			return
		end
	end
end

function precast(spell,action)
	if spell.type == "WeaponSkill" then
		if player.status ~= 'Engaged' then -- Cancel WS If You Are Not Engaged. Can Delete It If You Don't Need It --
			cancel_spell()
			add_to_chat(123,'Unable To Use WeaponSkill: [Disengaged]')
			return
		else
			equipSet = sets.WS
			if equipSet[spell.english] then
				equipSet = equipSet[spell.english]
			end
			if Attack == 'ON' then
				equipSet = equipSet["ATT"]
			end
			if equipSet[AccArray[AccIndex]] then
				equipSet = equipSet[AccArray[AccIndex]]
			end
			if elements[spell.name] and elements[spell.name]:contains(world.day_element) then
				equipSet = set_combine(equipSet,elements.equip)
			end
			if buffactive["Mighty Strikes"] then -- Equip MS_WS Set When You Have Mighty Strikes On --
				equipSet = set_combine(equipSet,sets.MS_WS)
			end
			if buffactive['Reive Mark'] then -- Equip Ygnas's Resolve +1 During Reive --
				equipSet = set_combine(equipSet,{neck="Ygnas's Resolve +1"})
			end
			if (spell.english == "Ukko's Fury" or spell.english == "King's Justice") and (player.tp > 2990 or buffactive.Sekkanoki) then
				if world.time <= (7*60) or world.time >= (17*60) then -- 3000 TP or Sekkanoki: Equip Lugra Earring +1 From Dusk To Dawn --
					equipSet = set_combine(equipSet,{ear1="Lugra Earring +1"})
				else
					equipSet = set_combine(equipSet,{ear1="Kokou's Earring"}) -- 3000 TP or Sekkanoki: Equip Kokou's Earring --
				end
			end
			if spell.english == "Upheaval" then 
				if world.day_element == 'Dark' then -- Equip Shadow Mantle On Darksday --
					equipSet = set_combine(equipSet,{back="Shadow Mantle"})
				end
				if player.tp > 2990 or buffactive.Sekkanoki then
					if world.time <= (7*60) or world.time >= (17*60) then -- 3000 TP or Sekkanoki: Equip Lugra Earring +1 From Dusk To Dawn --
						equipSet = set_combine(equipSet,{ear1="Lugra Earring +1"})
					else
						equipSet = set_combine(equipSet,{ear1="Terra's Pearl"}) -- 3000 TP or Sekkanoki: Equip Terra's Earring --
					end
				end
			end
			equip(equipSet)
		end
	elseif spell.type == "JobAbility" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		end
	elseif spell.action_type == 'Magic' then
		if spell.english == 'Utsusemi: Ni' then
			if buffactive['Copy Image (3)'] then
				cancel_spell()
				add_to_chat(123, spell.name .. ' Canceled: [3 Images]')
				return
			else
				equip(sets.Precast.FastCast)
			end
		else
			equip(sets.Precast.FastCast)
		end
	elseif spell.type == "Waltz" then
		refine_waltz(spell,action)
		equip(sets.Waltz)
	elseif spell.english == 'Spectral Jig' and buffactive.Sneak then
		cast_delay(0.2)
		send_command('cancel Sneak')
	end
	if Twilight == 'Twilight' then
		equip(sets.Twilight)
	end
end

function midcast(spell,action)
	if spell.action_type == 'Magic' then
		if spell.english:startswith('Utsusemi') then
			if spell.english == 'Utsusemi: Ichi' and (buffactive['Copy Image'] or buffactive['Copy Image (2)'] or buffactive['Copy Image (3)']) then -- Cancel Copy Image 1, 2 & 3 For Utsusemi: Ichi --
				send_command('@wait 1.7;cancel Copy Image*')
			end
			equip(sets.Midcast.Haste)
		elseif spell.english == 'Monomi: Ichi' then -- Cancel Sneak --
			if buffactive['Sneak'] then
				send_command('@wait 1.7;cancel sneak')
			end
			equip(sets.Midcast.Haste)
		else
			equip(sets.Midcast.Haste)
		end
	end
end

function aftercast(spell,action)
	if not spell.interrupted then
		if spell.type == "WeaponSkill" then
			send_command('wait 0.2;gs c TP')
		elseif spell.english == "Blood Rage" then -- Blood Rage Timer/Countdown --
			timer_blood_rage()
			send_command('wait 50;input /echo '..spell.name..': [WEARING OFF IN 10 SEC.];wait 10;input /echo '..spell.name..': [OFF]')
		elseif spell.english == "Tomahawk" then -- Tomahawk Timer/Countdown --
			timer_tomahawk()
			send_command('wait 80;input /echo '..spell.name..': [WEARING OFF IN 10 SEC.];wait 10;timers delete "Tomahawk";input /echo '..spell.name..': [OFF]')
		end
	end
	status_change(player.status)
end

function status_change(new,old)
	check_equip_lock()
	if Armor == 'PDT' then
		equip(sets.PDT)
	elseif Armor == 'MDT' then
		equip(sets.MDT)
	elseif Armor == 'Kiting' then
		equip(sets.Kiting)
	elseif new == 'Engaged' then
		equipSet = sets.TP
		if Armor == 'Hybrid' and equipSet["Hybrid"] then
			equipSet = equipSet["Hybrid"]
		end
		if equipSet[WeaponArray[WeaponIndex]] then
			equipSet = equipSet[WeaponArray[WeaponIndex]]
		end
		if equipSet[AccArray[AccIndex]] then
			equipSet = equipSet[AccArray[AccIndex]]
		end
		if buffactive["Aftermath: Lv.3"] and equipSet["AM3"] then
			if Rancor == 'ON' then -- Default Rancor Toggle Is Rancorous Mantle --
				equipSet = set_combine(equipSet["AM3"],sets.TP.Rancor)
			else -- Use Rancor Toggle For Atheling Mantle --
				equipSet = equipSet["AM3"]
			end
		end
		if buffactive.Aftermath and equipSet["AM"] then
			equipSet = equipSet["AM"]
		end
		if buffactive.Restraint and equipSet["Restraint"] then -- Restraint TP Set --
			equipSet = equipSet["Restraint"]
		end
		if buffactive.Ionis and equipSet["Ionis"] then -- Ionis TP Set --
			equipSet = equipSet["Ionis"]
		end
		if buffactive["Mighty Strikes"] then -- Mighty Strikes TP Set --
			equipSet = set_combine(equipSet,sets.TP.MS)
		end
		if buffactive.Retaliation and Retaliation == 'ON' then -- Use Retaliation Toggle For Retaliation TP Set --
			equipSet = set_combine(equipSet,sets.TP.Retaliation)
		end
		equip(equipSet)
	else
		equipSet = sets.Idle
		if equipSet[IdleArray[IdleIndex]] then
			equipSet = equipSet[IdleArray[IdleIndex]]
		end
		if equipSet[WeaponArray[WeaponIndex]] then
			equipSet = equipSet[WeaponArray[WeaponIndex]]
		end
		if buffactive['Reive Mark'] then -- Equip Ygnas's Resolve +1 During Reive --
			equipSet = set_combine(equipSet,{neck="Ygnas's Resolve +1"})
		end
		if world.area:endswith('Adoulin') then
			equipSet = set_combine(equipSet,{body="Councilor's Garb"})
		end
		equip(equipSet)
	end
	if Twilight == 'Twilight' then
		equip(sets.Twilight)
	end
end

function buff_change(buff,gain)
	buff = string.lower(buff)
	if buff == "aftermath: lv.3" then -- AM3 Timer/Countdown --
		if gain then
			send_command('timers create "Aftermath: Lv.3" 180 down;wait 150;input /echo Aftermath: Lv.3 [WEARING OFF IN 30 SEC.];wait 15;input /echo Aftermath: Lv.3 [WEARING OFF IN 15 SEC.];wait 5;input /echo Aftermath: Lv.3 [WEARING OFF IN 10 SEC.]')
		else
			send_command('timers delete "Aftermath: Lv.3"')
			add_to_chat(123,'AM3: [OFF]')
		end
	elseif buff == "blood rage" and not gain then
		send_command('timers delete "Blood Rage"')
	elseif buff == 'weakness' then -- Weakness Timer --
		if gain then
			send_command('timers create "Weakness" 300 up')
		else
			send_command('timers delete "Weakness"')
		end
	end
	if buff == "sleep" and gain and player.hp > 200 and player.status == "Engaged" then -- Equip Berserker's Torque When You Are Asleep & Have 200+ HP --
		equip({neck="Berserker's Torque"})
	else
		if not midaction() then
			status_change(player.status)
		end
	end
end

-- In Game: //gs c (command), Macro: /console gs c (command), Bind: gs c (command) --
function self_command(command)
	if command == 'C1' then -- Accuracy Toggle --
		AccIndex = (AccIndex % #AccArray) + 1
		add_to_chat(158,'Accuracy Level: ' .. AccArray[AccIndex])
		status_change(player.status)
	elseif command == 'C17' then -- Main Weapon Toggle --
		WeaponIndex = (WeaponIndex % #WeaponArray) + 1
		add_to_chat(158,'Main Weapon: '..WeaponArray[WeaponIndex])
		status_change(player.status)
	elseif command == 'C5' then -- Auto Update Gear Toggle --
		status_change(player.status)
		add_to_chat(158,'Auto Update Gear')
	elseif command == 'C2' then -- Hybrid Toggle --
		if Armor == 'Hybrid' then
			Armor = 'None'
			add_to_chat(123,'Hybrid Set: [Unlocked]')
		else
			Armor = 'Hybrid'
			add_to_chat(158,'Hybrid Set: '..AccArray[AccIndex])
		end
		status_change(player.status)
	elseif command == 'C7' then -- PDT Toggle --
		if Armor == 'PDT' then
			Armor = 'None'
			add_to_chat(123,'PDT Set: [Unlocked]')
		else
			Armor = 'PDT'
			add_to_chat(158,'PDT Set: [Locked]')
		end
		status_change(player.status)
	elseif command == 'C15' then -- MDT Toggle --
		if Armor == 'MDT' then
			Armor = 'None'
			add_to_chat(123,'MDT Set: [Unlocked]')
		else
			Armor = 'MDT'
			add_to_chat(158,'MDT Set: [Locked]')
		end
		status_change(player.status)
	elseif command == 'C12' then -- Kiting Toggle --
		if Armor == 'Kiting' then
			Armor = 'None'
			add_to_chat(123,'Kiting Set: [Unlocked]')
		else
			Armor = 'Kiting'
			add_to_chat(158,'Kiting Set: [Locked]')
		end
		status_change(player.status)
	elseif command == 'C10' then -- Retaliation Toggle --
		if Retaliation == 'ON' then
			Retaliation = 'OFF'
			add_to_chat(123,'Retaliation Set: [Unlocked]')
		else
			Retaliation = 'ON'
			add_to_chat(158,'Retaliation Set: [Locked]')
		end
		status_change(player.status)
	elseif command == 'C16' then -- Rancor Toggle --
		if Rancor == 'ON' then
			Rancor = 'OFF'
			add_to_chat(123,'Rancor: [OFF]')
		else
			Rancor = 'ON'
			add_to_chat(158,'Rancor: [ON]')
		end
		status_change(player.status)
	elseif command == 'C18' then -- SAM Roll Toggle --
		if Samurai_Roll == 'ON' then
			Samurai_Roll = 'OFF'
			add_to_chat(123,'SAM Roll: [OFF]')
		else
			Samurai_Roll = 'ON'
			add_to_chat(158,'SAM Roll: [ON]')
		end
		status_change(player.status)
	elseif command == 'C9' then -- Attack Toggle --
		if Attack == 'ON' then
			Attack = 'OFF'
			add_to_chat(123,'Attack: [OFF]')
		else
			Attack = 'ON'
			add_to_chat(158,'Attack: [ON]')
		end
		status_change(player.status)
	elseif command == 'C3' then -- Twilight Toggle --
		if Twilight == 'Twilight' then
			Twilight = 'None'
			add_to_chat(123,'Twilight Set: [Unlocked]')
		else
			Twilight = 'Twilight'
			add_to_chat(158,'Twilight Set: [locked]')
		end
		status_change(player.status)
	elseif command == 'C8' then -- Distance Toggle --
		if player.target.distance then
			target_distance = math.floor(player.target.distance*10)/10
			add_to_chat(158,'Distance: '..target_distance)
		else
			add_to_chat(123,'No Target Selected')
		end
	elseif command == 'C6' then -- Idle Toggle --
		IdleIndex = (IdleIndex % #IdleArray) + 1
		add_to_chat(158,'Idle Set: ' .. IdleArray[IdleIndex])
		status_change(player.status)
	elseif command == 'TP' then
		add_to_chat(158,'TP Return: ['..tostring(player.tp)..']')
	elseif command:match('^SC%d$') then
		send_command('//' .. sc_map[command])
	end
end

function check_equip_lock() -- Lock Equipment Here --
	
end

function timer_blood_rage()
	local duration = 60
	send_command('timers create "Blood Rage" '..tostring(duration)..' down')
end

function timer_tomahawk()
	local duration = 90
	send_command('timers create "Tomahawk" '..tostring(duration)..' down')
end

function refine_waltz(spell,action)
	if spell.type ~= 'Waltz' then
		return
	end

	if spell.name == "Healing Waltz" or spell.name == "Divine Waltz" or spell.name == "Divine Waltz II" then
		return
	end

	local newWaltz = spell.english
	local waltzID

	local missingHP

	if spell.target.type == "SELF" then
		missingHP = player.max_hp - player.hp
	elseif spell.target.isallymember then
		local target = find_player_in_alliance(spell.target.name)
		local est_max_hp = target.hp / (target.hpp/100)
		missingHP = math.floor(est_max_hp - target.hp)
	end

	if missingHP ~= nil then
		if player.sub_job == 'DNC' then
			if missingHP < 40 and spell.target.name == player.name then
				add_to_chat(8,'Full HP!')
				cancel_spell()
				return
			elseif missingHP < 150 then
				newWaltz = 'Curing Waltz'
				waltzID = 190
			elseif missingHP < 300 then
				newWaltz = 'Curing Waltz II'
				waltzID = 191
			else
				newWaltz = 'Curing Waltz III'
				waltzID = 192
			end
		else
			return
		end
	end

	local waltzTPCost = {['Curing Waltz'] = 20, ['Curing Waltz II'] = 35, ['Curing Waltz III'] = 50}
	local tpCost = waltzTPCost[newWaltz]

	local downgrade

	if player.tp < tpCost and not buffactive.trance then

		if player.tp < 20 then
			add_to_chat(8, 'Insufficient TP ['..tostring(player.tp)..']. Cancelling.')
			cancel_spell()
			return
		elseif player.tp < 35 then
			newWaltz = 'Curing Waltz'
		elseif player.tp < 50 then
			newWaltz = 'Curing Waltz II'
		end

		downgrade = 'Insufficient TP ['..tostring(player.tp)..']. Downgrading to '..newWaltz..'.'
	end

	if newWaltz ~= spell.english then
		send_command('@input /ja "'..newWaltz..'" '..tostring(spell.target.raw))
		if downgrade then
			add_to_chat(158, downgrade)
		end
		cancel_spell()
		return
	end

	if missingHP > 0 then
		add_to_chat(158,'Trying to cure '..tostring(missingHP)..' HP using '..newWaltz..'.')
	end
end

function find_player_in_alliance(name)
	for i,v in ipairs(alliance) do
		for k,p in ipairs(v) do
			if p.name == name then
				return p
			end
		end
	end
end

function sub_job_change(newSubjob, oldSubjob)
	select_default_macro_book()
end

function set_macro_page(set,book)
	if not tonumber(set) then
		add_to_chat(123,'Error setting macro page: Set is not a valid number ('..tostring(set)..').')
		return
	end
	if set < 1 or set > 10 then
		add_to_chat(123,'Error setting macro page: Macro set ('..tostring(set)..') must be between 1 and 10.')
		return
	end

	if book then
		if not tonumber(book) then
			add_to_chat(123,'Error setting macro page: book is not a valid number ('..tostring(book)..').')
			return
		end
		if book < 1 or book > 20 then
			add_to_chat(123,'Error setting macro page: Macro book ('..tostring(book)..') must be between 1 and 20.')
			return
		end
		send_command('@input /macro book '..tostring(book)..';wait .1;input /macro set '..tostring(set))
	else
		send_command('@input /macro set '..tostring(set))
	end
end

function select_default_macro_book()
	-- Default macro set/book
	if player.sub_job == 'SAM' then
		set_macro_page(1, 2)
	elseif player.sub_job == 'DNC' then
		set_macro_page(1, 2)
	elseif player.sub_job == 'NIN' then
		set_macro_page(1, 2)
	else
		set_macro_page(1, 2)
	end
end