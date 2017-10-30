

function get_sets()
    AccIndex = 1
	AccArray = {"LowACC","MidACC","HighACC"} -- 3 Levels Of Accuracy Sets For TP/WS/Hybrid. Default ACC Set Is LowACC. The First TP Set Of Your Main Weapon Is LowACC. Add More ACC Sets If Needed Then Create Your New ACC Below --
	IdleIndex = 1
	IdleArray = {"Refresh","Movement"} -- Default Idle Set Is Refresh --
	Armor = 'None'
	canceled = false
	DC = false
	Lock_Main = 'OFF' -- Set Default Main Weapon ON or OFF Here --
	Obi = 'ON' -- Turn Default Obi ON or OFF Here --
	MB = 'OFF' -- Set Default MB ON or OFF Here --
	Enmity = 'OFF' -- Set Default Enmity Set ON or OFF Here --
	Kiting = 'OFF' -- Set Default Sublimation Kiting ON or OFF Here --
	ElementalStaff = 'OFF' -- Set Default Precast Elemental Staff ON or OFF Here --
	target_distance = 5 -- Set Default Distance Here --
	select_default_macro_book() -- Change Default Macro Book At The End --
	
	Non_Obi_Spells = S{
			'Burn','Choke','Cursna','Paralyna','Viruna','Stona','Poisona','Blindna','Silena','Drown','Frost','Rasp','Shock','Impact','Anemohelix','Cryohelix',
			'Geohelix','Hydrohelix','Ionohelix','Luminohelix','Noctohelix','Pyrohelix'}

	Cure_Spells = {"Cure","Cure II","Cure III","Cure IV","Cure V","Cure VI"} -- Cure Degradation --
	Curaga_Spells = {"Curaga","Curaga II","Curaga III","Curaga IV","Curaga V"} -- Curaga Degradation --
	Na_Spells = S{"Paralyna","Silena","Poisona","Blindna","Viruna","Stona","Erase"} -- For Yagrush --
	sc_map = {SC1 = "LightArts", SC2 = "Celerity", SC3 = "Accession"} -- 3 Additional Binds. Can Change Whatever JA/WS/Spells You Like Here. Remember Not To Use Spaces. --

	sets.Idle = {}
	-- Idle Sets --
	sets.Idle.Refresh = {
			main="Queller Rod",
			sub="Genmei Shield",
			ammo="Homiliary",
			head={ name="Chironic Hat", augments={'"Store TP"+6','"Dbl.Atk."+1','"Refresh"+2','Mag. Acc.+14 "Mag.Atk.Bns."+14',}},
			neck="Loricate Torque +1",
			ear1="Etiolation Earring",
			ear2="Infused Earring",
			body="Gende. Bilaut +1",
			hands={ name="Chironic Gloves", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','DEX+9','"Refresh"+2',}},
			ring1="Defending Ring",
			ring2="Dark Ring",
			back="Moonbeam Cape",
			waist="Fucho-no-Obi",
			legs="Assiduity Pants +1",
			feet="Herald's Gaiters"}
	sets.Idle.Movement = set_combine(sets.Idle.Refresh,{
			--neck="Bathy Choker +1",
			--ring1="Sheltered Ring",
			--waist="Slipor Sash",
			})
	sets.Resting = {}

	-- PDT Set --
	sets.PDT = {
			main="Bolelabunga",
			sub="Genmei Shield",
			ammo="Staunch tathlum",
			head="Gende. Caubeen +1",
			neck="Loricate Torque +1",
			ear1="Etiolation Earring",
			ear2="Genmei Earring",
			body="Onca Suit",
			ring1="Defending Ring",
			ring2="Gelatinous Ring +1",
			back="Moonbeam Cape",
			waist="Fucho-no-Obi",
			}

	-- Sublimation Set --
	sets.Sublimation = {
			main="Bolelabunga",
			sub="Genmei Shield",
			ammo="Homiliary",
			head="Befouled Crown",
			ear1="Etiolation Earring",
			ear2="Infused Earring",
			body="Gende. Bilaut +1",
			hands={ name="Chironic Gloves", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','DEX+9','"Refresh"+2',}},
			waist="Fucho-no-Obi",
			legs="Assiduity Pants +1",}

	sets.Precast = {}
	-- Fastcast Set --
	sets.Precast.FastCast = { -- FC 66% 
			main="Sucellus", -- FC 5%
			sub="Chanter's Shield",  -- FC 3%
			ammo="Impatiens", 
			head="Vanya Hood", -- FC 10%
			neck="Orunmila's Torque", -- FC 5%
			ear1="Enchntr. Earring +1", -- FC 2%
			ear2="Loquacious Earring", -- FC 2%
			body="Inyanga Jubbah +1",  -- FC 13%
			hands="Gende. Gages +1", -- FC 7%
			ring1="Kishar Ring",  -- FC 4%
			ring2="Lebeche Ring", 
			back="Perimede cape", 
			waist="Witful Belt",  -- FC 3%
			legs={ name="Chironic Hose", augments={'Accuracy+7','STR+14','"Fast Cast"+7','Accuracy+17 Attack+17','Mag. Acc.+12 "Mag.Atk.Bns."+12',}},  -- FC 7%
			feet="Regal Pumps +1"} -- FC 5%

	-- Elemental Staves --
	sets.Precast.Wind = {}
	sets.Precast.Light = {}

	sets.Precast.Stoneskin = set_combine(sets.Precast.FastCast,{waist="Siegel Sash"})
	sets.Precast['Enhancing Magic'] = set_combine(sets.Precast.FastCast,{main="Yagrush",waist="Siegel Sash"})
	sets.Precast['Healing Magic'] = set_combine(sets.Precast.FastCast,{main="Yagrush",sub="Chanter's Shield",legs="Ebers Pantaloons +1"})

	-- Cure Precast Set --
	sets.Precast.Cure = {
			main={ name="Gada", augments={'"Fast Cast"+5','MND+2','DMG:+6',}},
			sub="Sors Shield",
			ammo="Impatiens",
			head="Theo. Cap +1",
			neck="Orunmila's Torque",
			ear1="Nourishing Earring +1",
			ear2="Mendicant's earring",
			body="Inyanga Jubbah +1",
			hands="Gende. Gages +1",
			ring1="Prolix Ring",
			ring2="Lebeche Ring",
			back="Perimede cape",
			waist="Witful Belt",
			legs="Ebers Pantaloons +1",
			feet="Regal Pumps +1"}

	-- Midcast Base Set --
	sets.Midcast = {
			main="Bolelabunga",
			ammo="Impatiens",
			head="Vanya Hood",
			neck="Orunmila's Torque",
			ear1="Loquac. Earring",
			ear2="Enchntr. Earring +1",
			body="Inyanga Jubbah +1",
			hands="Dynasty Mitts",
			ring1="Prolix Ring",
			ring2="Lebeche Ring",
			back="Perimede Cape",
			waist="Witful Belt",
			legs="Artsieq Hose", 
			feet="Regal Pumps +1"}

	-- Haste Set --
	sets.Midcast.Haste = set_combine(sets.Precast.FastCast,{
			main={ name="Gada", augments={'Enh. Mag. eff. dur. +6','STR+6','Mag. Acc.+18','"Mag.Atk.Bns."+7','DMG:+19',}},
			sub="Ammurapi Shield",
			ammo="Impatiens",
			head="Telchine Cap",
			neck="Orunmila's Torque",
			ear1="Loquac. Earring",
			ear2="Enchntr. Earring +1",
			body="Telchine Chas.",
			hands="Telchine Gloves",
			ring1="Prolix Ring",
			ring2="Lebeche Ring",
			back="Perimede Cape",
			waist="Witful Belt",
			legs="Telchine Braconi",
			feet="Theo. Duckbills +3",})
			
	sets.Midcast.Flurry = set_combine(sets.Precast.FastCast,{		
	        main={ name="Gada", augments={'Enh. Mag. eff. dur. +6','STR+6','Mag. Acc.+18','"Mag.Atk.Bns."+7','DMG:+19',}},
			sub="Ammurapi Shield",
			ammo="Impatiens",
			head="Telchine Cap",
			neck="Orunmila's Torque",
			ear1="Loquac. Earring",
			ear2="Enchntr. Earring +1",
			body="Telchine Chas.",
			hands="Telchine Gloves",
			ring1="Prolix Ring",
			ring2="Lebeche Ring",
			back="Perimede Cape",
			waist="Witful Belt",
			legs="Telchine Braconi",
            feet="Theo. Duckbills +3",})
			
	sets.Midcast.Aquaveil = set_combine(sets.Precast.FastCast,{		
	        main={ name="Gada", augments={'Enh. Mag. eff. dur. +6','STR+6','Mag. Acc.+18','"Mag.Atk.Bns."+7','DMG:+19',}},
			sub="Ammurapi Shield",
			ammo="Impatiens",
			head="Telchine Cap",
			neck="Orunmila's Torque",
			ear1="Loquac. Earring",
			ear2="Enchntr. Earring +1",
			body="Telchine Chas.",
			hands="Telchine Gloves",
			ring1="Prolix Ring",
			ring2="Lebeche Ring",
			back="Perimede Cape",
			waist="Witful Belt",
			legs="Telchine Braconi",
            feet="Theo. Duckbills +3",})
			
	-- Cure Set --
	sets.Midcast.Cure = { -- Haste +25%, FC +26%, Enmity-45, CP +50%, CPII +4%
			main="Queller Rod", -- Enmity-10, CP +15%, CPII +2%
			sub="Chanter's Shield", -- FC +3%
			ammo="Esper Stone +1", -- Enmity -5
			head="Vanya Hood", -- Haste +8%, FC +10%, CP +10%
			neck="Incanter's Torque",
			ear1="Glorious Earring", -- Enmity-5, CPII +2%
			ear2="Novia Earring", -- Enmity-7
			body="Ebers Bliaud +1", -- Haste +3%
			hands="Kaykaus Cuffs", -- Haste +3%, Enmity-5, CP +10%
			ring1="Kuchekula Ring", -- Enmity-7
			ring2="Lebeche Ring", -- Enmity-5, CP+ 3%
			back="Alaunus's Cape", -- FC +10%
			waist="Witful Belt", -- Haste +3%, FC +3%
			legs="Ebers Pantaloons +1", -- Haste +5%
			feet="Vanya Clogs" -- Haste +3%, Enmity-6, CP +12%
			}
	
	sets.Midcast.Cure.Weather = set_combine(sets.Midcast.Cure,{
			waist="Hachirin-no-Obi"})
	-- Cure Enmity Set --
	sets.Midcast.Cure.Enmity = set_combine(sets.Midcast.Cure,{})

	-- Curaga Set --
	sets.Midcast.Curaga = { -- Haste +25%, FC +23%, Enmity-46, CP +58%, CPII +10%
			main="Queller Rod", -- Enmity-10, CP +15%, CPII +2%
			sub="Sors Shield", -- Enmity-5, CP +3%
			ammo="Esper Stone +1",	-- Enmity-5
			head="Vanya Hood", -- Haste +8%, FC +10%, CP +10%
			neck="Incanter's Torque",
			ear1="Mendi. Earring", -- CP +5%
			ear2="Glorious Earring", -- Enmity-5, CPII +2%
			body="Theo. Briault +3", -- Haste +3%, Enmity-5, CPII +6%
			hands="Kaykaus Cuffs", -- Haste +3%, Enmity-5, CP +10%
			ring1="Kuchekula Ring", -- Enmity-7
			ring2="Lebeche Ring", -- Enmity-5, CP+ 3%
			back="Alaunus's Cape", -- FC +10%
			waist="Witful Belt", -- Haste +3%, FC +3%
			legs="Ebers Pantaloons +1", -- Haste +5%
			feet="Vanya Clogs" -- Haste +3%, Enmity-6, CP +12%
			}
	


	-- Curaga Enmity Set --
	sets.Midcast.Curaga.Enmity = set_combine(sets.Midcast.Curaga,{})

	sets.Midcast['Enhancing Magic'] = {
			main="Beneficus",
			sub="Ammurapi Shield",
			ammo="Impatiens",
			head="Befouled Crown",
			neck="Incanter's Torque",
			ear1="Andoaa Earring",
			ear2="Augmenting Earring",
			body="Telchine Chasuble",
			hands="Dynasty Mitts",
			ring1="Prolix Ring",
			ring2="Stikini Ring +1",
			back={ name="Mending Cape", augments={'Healing magic skill +10','Enha.mag. skill +10','"Cure" potency +2%',}},
			waist="Olympus Sash",
			legs="Piety Pantaloons +1",
			feet="Ebers Duckbills +1"}

	-- Barspells Set --
	sets.Midcast.Bar = {
			main="Beneficus",
			sub="Ammurapi Shield",
			ammo="Impatiens",
			head="Ebers Cap +1",
			neck="Incanter's Torque",
			ear1="Andoaa Earring",
			ear2="Augmenting Earring",
			body="Ebers Bliaud +1",
			hands="Ebers mitts +1",
			ring1="Prolix Ring",
			ring2="Stikini Ring +1",
			back="Alaunus's Cape",
			waist="Olympus Sash",
			legs="Piety Pantaloons +1",
			feet="Ebers Duckbills +1"}
	-- Boost Set --		
	sets.Midcast.Boost = {
			main="Beneficus",
			sub="Ammurapi Shield",
			ammo="Impatiens",
			head="Telchine Cap",
			neck="Incanter's Torque",
			ear1="Andoaa Earring",
			ear2="Augmenting Earring",
			body="Telchine Chas.",
			hands="Telchine Gloves",
			ring1="Prolix Ring",
			ring2="Stikini Ring +1",
			back={ name="Mending Cape", augments={'Healing magic skill +10','Enha.mag. skill +10','"Cure" potency +2%',}},
			waist="Olympus Sash",
			legs="Telchine Braconi",
			feet="Theo. Duckbills +3",}

	-- Regen Set --
	sets.Midcast.Regen = set_combine(sets.Midcast.Haste,{
			main="Bolelabunga",
			sub="Ammurapi Shield",
			head="Inyanga Tiara +1",
			body="Piety Briault +1",
			hands="Ebers Mitts +1",
			legs="Th. Pant. +3",})
	sets.Midcast.Repose = set_combine(sets.Midcast.Haste,{	
	        main="Yagrush",
	        sub="Ammurapi Shield",
			ammo="Pemphredo Tathlum",
			head="Befouled Crown",
			neck="Erra Pendant",
			ear1="Regal Earring",
			ear2="Digni. Earring",
			body="Theo. Briault +3",
			hands="Inyan. Dastanas +1",
			ring1="Stikini Ring +1",
			ring2="Sangoma Ring",
			back="Alaunus's Cape",
			waist="Luminary Sash",
			legs="Chironic Hose",
			feet="Theo. Duckbills +3",})

	-- Stoneskin Set --
	sets.Midcast.Stoneskin = set_combine(sets.Midcast.Haste,{
			})

	-- Na Set --
	sets.Midcast.Na = set_combine(sets.Midcast.Haste,{
			main="Yagrush",
			sub="Chanter's Shield",
			ammo="Impatiens",
			head="Vanya Hood",
			neck="Orunmila's Torque",
			ear1="Loquac. Earring",
			ear2="Enchntr. Earring +1",
			body="Inyanga Jubbah +1",
			hands="Gende. Gages +1",
			ring1="Prolix Ring",
			ring2="Lebeche Ring",
			back="Perimede Cape",
			waist="Witful Belt",
			legs="Ebers Pantaloons +1",
			feet="Regal Pumps +1"})

	-- Cursna Set --
	sets.Midcast.Cursna = {
	        main="Yagrush",
			sub="Chanter's Shield",
			ammo="Sapience Orb",
			head="Vanya Hood",
			neck="Debilis Medallion",
			ear1="Loquac. Earring",
			ear2="Enchntr. Earring +1",
			body="Inyanga Jubbah +1",
			hands="Fanatic Gloves",
			ring1="Haoma's Ring",
			ring2="Haoma's Ring",
			back="Alaunus's Cape",
			waist="Witful Belt",
			legs="Th. Pant. +3",
			feet="Gende. Galosh. +1"}

	sets.Midcast.Divine = {
			main="Nibiru Cudgel",
			sub="Ammurapi Shield",
			ammo="Pemphredo Tathlum",
			--head="Welkin Crown",
			neck="Sanctity Necklace",
			ear1="Friomisi Earring",
			ear2="Regal Earring",
			--body="Chironic Doublet",
			hands={ name="Chironic Gloves", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Cure" potency +6%','Mag. Acc.+8','"Mag.Atk.Bns."+15',}},
			ring1="Shiva ring +1",
			ring2="Shiva ring +1",
			back="Toro Cape",
			waist="Refoccilation Stone",
			legs={ name="Chironic Hose", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','"Resist Silence"+1','MND+14','Mag. Acc.+11','"Mag.Atk.Bns."+6',}},
			feet="Theo. Duckbills +3",}
			
	sets.Midcast.Drain = {
			main="Nibiru Cudgel",
			sub="Ammurapi Shield",
			ammo="Pemphredo Tathlum",
			head="Befouled Crown",
			neck="Erra Pendant",
			ear1="Regal Earring",
			ear2="Digni. Earring",
			body="Shango Robe",
			hands="Inyan. Dastanas +1",
			ring1="Evanescence Ring",
			ring2="Stikini Ring +1",
			back="Alaunus's Cape",
			waist="Fucho-no-Obi",
			legs={ name="Chironic Hose", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','"Resist Silence"+1','MND+14','Mag. Acc.+11','"Mag.Atk.Bns."+6',}},
			feet="Theo. Duckbills +3",}
			
	sets.Midcast['Elemental Magic'] = {
			main="Nibiru Cudgel",
			sub="Ammurapi Shield",
			ammo="Pemphredo Tathlum",
			--head="Welkin Crown",
			neck="Sanctity Necklace",
			ear1="Friomisi Earring",
			ear2="Regal Earring",
			--body="Chironic Doublet",
			hands={ name="Chironic Gloves", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Cure" potency +6%','Mag. Acc.+8','"Mag.Atk.Bns."+15',}},
			ring1="Shiva Ring +1",
			ring2="Shiva Ring +1",
			back="Toro Cape",
			waist="Refoccilation Stone",
			legs={ name="Chironic Hose", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','"Resist Silence"+1','MND+14','Mag. Acc.+11','"Mag.Atk.Bns."+6',}},
			feet="Theo. Duckbills +3",}
			
	sets.MB = {
			main="Nibiru Cudgel",
			sub="Ammurapi Shield",
			ammo="Pemphredo Tathlum",
			--head="Helios Band",
			neck="Mizu. Kubikazari",
			ear1="Static Earring",
			ear2="Friomisi Earring",
			--body="Chironic Doublet",
			hands={ name="Chironic Gloves", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Cure" potency +6%','Mag. Acc.+8','"Mag.Atk.Bns."+15',}},
			ring1="Mujin Band",
			ring2="Locus Ring",
			back="Seshaw cape +1",
			waist="Refoccilation Stone",
			legs={ name="Chironic Hose", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','"Resist Silence"+1','MND+14','Mag. Acc.+11','"Mag.Atk.Bns."+6',}},
			feet="Theo. Duckbills +3",}

	sets.Midcast['Enfeebling Magic'] = set_combine(sets.Midcast['Divine Magic'],{
			main="Yagrush",
	        sub="Ammurapi Shield",
			ammo="Pemphredo Tathlum",
			head="Befouled Crown",
			neck="Erra Pendant",
			ear1="Regal Earring",
			ear2="Digni. Earring",
			body="Theo. Briault +3",
			hands="Inyan. Dastanas +1",
			ring1="Stikini Ring +1",
			ring2="Kishar Ring",
			back="Alaunus's Cape",
			waist="Luminary Sash",
			legs={ name="Chironic Hose", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','"Resist Silence"+1','MND+14','Mag. Acc.+11','"Mag.Atk.Bns."+6',}},
			feet="Theo. Duckbills +3",})
			
	sets.Obi = {}
	sets.Obi.Thunder = {waist='Hachirin-no-Obi'}
	sets.Obi.Water = {waist='Hachirin-no-Obi'}
	sets.Obi.Fire = {waist='Hachirin-no-Obi'}
	sets.Obi.Ice = {waist='Hachirin-no-Obi'}
	sets.Obi.Wind = {waist='Hachirin-no-Obi'}
	sets.Obi.Earth = {waist='Hachirin-no-Obi'}
	sets.Obi.Light = {waist='Hachirin-no-Obi'}
	sets.Obi.Dark = {waist='Hachirin-no-Obi'}

	sets.Midcast['Dark Magic'] = set_combine(sets.Midcast['Enfeebling Magic'],{})

	sets.Midcast.Impact = {}

	-- JA Sets --
	sets.JA = {}
	sets.JA.Benediction = {body="Piety Briault +1"}
	--sets.JA.Martyr = {hands="Clr. Mitts +2"}
	--sets.JA.Devotion = {head="Piety Cap +1"}

	-- Divine Caress Set --
	sets['Divine Caress'] = {
			main="Yagrush",
			hands="Ebers Mitts +1",
			back="Mending Cape"}

	-- Melee Set --
	sets.TP = {
			--ammo="Hasty Pinion +1",
			head="Telchine Cap",
			neck="Lissome Necklace",
			ear1="Cessance Earring",
		    ear2="Telos Earring",
			body="Onca Suit",
		    ring1="Ilabrat Ring",
		    ring2="Petrov Ring",
			--back={ name="Alaunus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10',}},
			waist="Windbuffet Belt +1",}
	
	sets.TP.MidACC = set_combine(sets.TP,{
			neck="Combatant's Torque"})
	
	sets.TP.HighACC = set_combine(sets.TP.MidACC,{
	        ear1="Cessance Earring",
			ear2="Mache Earring",
			ring1="Ramuh Ring +1",
			ring2="Cacoethic Ring +1",
	        waist="Olseni Belt"})
			
	sets.TP.HighHaste =  set_combine(sets.TP,{
			})
	
	
	sets.TP.MidACC.HighHaste = set_combine(sets.TP.HighHaste,{
			neck="Combatant's Torque"})
	
	sets.TP.HighACC.HighHaste = set_combine(sets.TP.MidACC.HighHaste,{
			ear2="Mache Earring",
			ring1="Ramuh Ring +1",
			ring2="Cacoethic Ring +1",
	        waist="Olseni Belt"})
			
			
	sets.TP.DNC = {
			--ammo="Hasty Pinion +1",
			head="Telchine Cap",
			neck="Lissome Necklace",
			ear1="Suppanomimi",
			ear2="Eabani Earring",
			body="Onca Suit",
			ring1="Ilabrat Ring",
			ring2="Petrov Ring",
			--back={ name="Alaunus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10',}},
			waist="Shetal Stone",}
	
	sets.TP.MidACC.DNC = set_combine(sets.TP.DNC,{
			neck="Combatant's Torque"})
	
	sets.TP.HighACC.DNC = set_combine(sets.TP.MidACC.DNC,{
	        ear1="Cessance Earring",
			ear2="Mache Earring",
			ring1="Ramuh Ring +1",
			ring2="Cacoethic Ring +1",
	        waist="Olseni Belt"})
			
	sets.TP.HighHaste.DNC =  set_combine(sets.TP.DNC,{
			ear1="Suppanomimi",
			ear2="Brutal Earring",
			waist="Windbuffet Belt +1",})
	
	
	sets.TP.MidACC.HighHaste.DNC = set_combine(sets.TP.HighHaste.DNC,{
			neck="Combatant's Torque"})
	
	sets.TP.HighACC.HighHaste.DNC = set_combine(sets.TP.MidACC.HighHaste.DNC,{
	        ear1="Cessance Earring",
			ear2="Mache Earring",
			ring1="Ramuh Ring +1",
			ring2="Cacoethic Ring +1",
	        waist="Olseni Belt"})
			
	sets.TP.NIN = {
			--ammo="Hasty Pinion +1",
			head="Telchine Cap",
			neck="Lissome Necklace",
			ear1="Suppanomimi",
			ear2="Eabani Earring",
			body="Onca Suit",
			ring1="Ilabrat Ring",
			ring2="Petrov Ring",
			--back={ name="Alaunus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10',}},
			waist="Shetal Stone",}
	
	sets.TP.MidACC.NIN = set_combine(sets.TP.NIN,{
			neck="Combatant's Torque"})
	
	sets.TP.HighACC.NIN = set_combine(sets.TP.MidACC.NIN,{
	        ear1="Cessance Earring",
			ear2="Mache Earring",
			ring1="Ramuh Ring +1",
			ring2="Cacoethic Ring +1",
	        waist="Olseni Belt"})
			
	sets.TP.HighHaste.NIN =  set_combine(sets.TP.NIN,{
			ear1="Suppanomimi",
			ear2="Brutal Earring",
			waist="Shetal Stone",})
	
	
	sets.TP.MidACC.HighHaste.NIN = set_combine(sets.TP.HighHaste.NIN,{
			neck="Combatant's Torque"})
	
	sets.TP.HighACC.HighHaste.NIN = set_combine(sets.TP.MidACC.HighHaste.NIN,{
	        ear1="Cessance Earring",
			ear2="Mache Earring",
			ring1="Ramuh Ring +1",
			ring2="Cacoethic Ring +1",
	        waist="Olseni Belt"})

	-- Lock Main Weapon --
	sets.MainWeapon = {
			main="Yagrush",
			sub="Genmei Shield"}

	-- WS Base Set --
	sets.WS = {}
	sets.WS["Mystic Boon"] = {
			ammo="Floestone",
			head="Chironic Hat",
			--neck="Imbodla Necklace",
			ear1="Moonshade Earring",
			ear2="Brutal Earring",
			body="Onca Suit",
			--ring1="Rufescent Ring",
			ring2="Ifrit Ring +1",
			--back={ name="Alaunus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10',}},
			waist="Windbuffet Belt +1",}
	sets.WS["Hexa Strike"] = {
			ammo="Floestone",
			head="Chironic Hat",
			neck="Fotia gorget",
			ear1="Moonshade Earring",
			ear2="Brutal Earring",
			body="Onca Suit",
			--ring1="Rufescent Ring",
			ring2="Ifrit Ring +1",
			--back="Rancorous Mantle",
			waist="Fotia Belt",}
    sets.WS["Black Halo"] = {
			ammo="Floestone",
			head="Chironic Hat",
			neck="Fotia gorget",
			ear1="Moonshade Earring",
			ear2="Brutal Earring",
			body="Onca Suit",
			ring1="Ilabrat Ring",
			ring2="Ifrit Ring +1",
			--back={ name="Alaunus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10',}},
			waist="Fotia Belt",}
	sets.WS["True Strike"] = {
			ammo="Floestone",
			head="Chironic Hat",
			neck="Fotia gorget",
			ear1="Moonshade Earring",
			ear2="Brutal Earring",
			body="Onca Suit",
			ring1="Petrov Ring",
			ring2="Ifrit Ring +1",
			--back={ name="Alaunus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10',}},
			waist="Fotia Belt",}
	sets.WS["Judgement"] = {
			ammo="Floestone",
			head="Chironic Hat",
			neck="Fotia gorget",
			ear1="Moonshade Earring",
			ear2="Brutal Earring",
			body="Onca Suit",
			ring1="Petrov Ring",
			ring2="Ifrit Ring +1",
			--back={ name="Alaunus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10',}},
			waist="Fotia Belt",}
    sets.WS["Flash Nova"] = {
			ammo="Pemphredo Tathlum",
			--head="Welkin Crown",
			neck="Sanctity Necklace",
			ear1="Friomisi Earring",
			ear2="Crematio Earring",
			--body="Chironic Doublet",
			hands={ name="Chironic Gloves", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Cure" potency +6%','Mag. Acc.+8','"Mag.Atk.Bns."+15',}},
			ring1="Shiva Ring +1",
			ring2="Shiva Ring +1",
			back="Toro Cape",
			waist="Refoccilation Stone",
			--legs="Gyve Trousers",
			feet="Chironic Slippers"}
	sets.WS["Shining Strike"] = {
			ammo="Pemphredo Tathlum",
			--head="Welkin Crown",
			neck="Sanctity Necklace",
			ear1="Friomisi Earring",
			ear2="Crematio Earring",
			--body="Chironic Doublet",
			hands={ name="Chironic Gloves", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Cure" potency +6%','Mag. Acc.+8','"Mag.Atk.Bns."+15',}},
			ring1="Shiva Ring +1",
			ring2="Shiva Ring +1",
			back="Toro Cape",
			waist="Refoccilation Stone",
			--legs="Gyve Trousers",
			feet="Chironic Slippers"}
    sets.WS["Seraph Strike"] = {
			ammo="Pemphredo Tathlum",
			--head="Welkin Crown",
			neck="Sanctity Necklace",
			ear1="Friomisi Earring",
			ear2="Crematio Earring",
			--body="Chironic Doublet",
			hands={ name="Chironic Gloves", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Cure" potency +6%','Mag. Acc.+8','"Mag.Atk.Bns."+15',}},
			ring1="Shiva Ring +1",
			ring2="Shiva Ring +1",
			back="Toro Cape",
			waist="Refoccilation Stone",
			--legs="Gyve Trousers",
			feet="Chironic Slippers"}
	sets.WS.Realmrazer = {
			ammo="Floestone",
			head="Chironic Hat",
			neck="Fotia gorget",
			--ear1="Bladeborn Earring",
			--ear2="Steelflash Earring",
			body="Onca Suit",
			--ring1="Rufescent Ring",
			--ring2="Ifrit Ring +1",
			--back={ name="Alaunus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10',}},
			waist="Fotia Belt",}
end

function pretarget(spell,action)
	if midaction() then
		add_to_chat(123, '****** ['..spell.name..' CANCELED] ******')
		canceled = true
		return
	elseif spell.english == "Berserk" and buffactive.Berserk then -- Change Berserk To Aggressor If Berserk Is On --
		cancel_spell()
		send_command('Aggressor')
	elseif (spell.type:endswith('Magic') or spell.type == "Ninjutsu") and buffactive.silence then -- Auto Use Echo Drops If You Are Silenced --
		cancel_spell()
		send_command('input /item "Echo Drops" <me>')
	elseif spell.english:ifind("Cure") and player.mp<actualCost(spell.mp_cost) then
		degrade_spell(spell,Cure_Spells)
	elseif spell.english:ifind("Curaga") and player.mp<actualCost(spell.mp_cost) then
		degrade_spell(spell,Curaga_Spells)
	elseif Na_Spells:contains(spell.english) then -- Auto Divine Caress --
		if windower.ffxi.get_ability_recasts()[32] < 1 and (spell.target.type == 'PLAYER' or spell.target.name == player.name) and not buffactive.amnesia and not buffactive.charm and spell.english ~= "Erase" then
			cancel_spell()
			send_command('DivineCaress;wait 1.7;input /ma "'..spell.english..'" '..spell.target.name)
		end
	elseif buffactive['Light Arts'] or buffactive['Addendum: White'] then
		if spell.english == "Light Arts" and not buffactive['Addendum: White'] then
			cancel_spell()
			send_command('input /ja Addendum: White <me>')
		elseif spell.english == "Manifestation" then
			cancel_spell()
			send_command('input /ja Accession <me>')
		elseif spell.english == "Alacrity" then
			cancel_spell()
			send_command('input /ja Celerity <me>')
		elseif spell.english == "Parsimony" then
			cancel_spell()
			send_command('input /ja Penury <me>')
		end
	elseif buffactive['Dark Arts'] or buffactive['Addendum: Black'] then
		if spell.english == "Dark Arts" and not buffactive['Addendum: Black'] then
			cancel_spell()
			send_command('input /ja Addendum: Black <me>')
		elseif spell.english == "Accession" then
			cancel_spell()
			send_command('input /ja Manifestation <me>')
		elseif spell.english == "Celerity" then
			cancel_spell()
			send_command('input /ja Alacrity <me>')
		elseif spell.english == "Penury" then
			cancel_spell()
			send_command('input /ja Parsimony <me>')
		end
	end
end

function precast(spell,action)
	if canceled then
		return
	elseif spell.type:endswith('Magic') or spell.type == "Ninjutsu" then
		if buffactive.silence or spell.target.distance > 16+target_distance then -- Cancel Magic or Ninjutsu If You Are Silenced or Out of Range --
			cancel_spell()
			add_to_chat(123, spell.name..' Canceled: [Silenced or Out of Casting Range]')
			return
		else
			if string.find(spell.english,'Cur') and spell.english ~= "Cursna" then
				equip(sets.Precast.Cure)
			elseif spell.english == "Stoneskin" then
				equip(sets.Precast[spell.english])
			elseif spell.english == "Impact" then
				equip(set_combine(sets.Precast.FastCast,{body="Twilight Cloak"}))
			elseif string.find(spell.english,'Utsusemi') then
				if buffactive['Copy Image (3)'] or buffactive['Copy Image (4)'] then
					cancel_spell()
					add_to_chat(123, spell.name .. ' Canceled: [3+ Images]')
					return
				else
					equip(sets.Precast.FastCast)
				end
			elseif sets.Precast[spell.skill] then
				equip(sets.Precast[spell.skill])
			else
				equip(sets.Precast.FastCast)
			end
		end
	elseif spell.type == "JobAbility" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		end
	elseif spell.type == "WeaponSkill" then
		if player.status ~= 'Engaged' then -- Cancel WS If You Are Not Engaged. Can Delete It If You Don't Need It --
			cancel_spell()
			add_to_chat(123,'Unable To Use WeaponSkill: [Disengaged]')
			return
		else
			if sets.WS[spell.english] then
				equip(sets.WS[spell.english])
			end
		end
	elseif spell.english == 'Spectral Jig' and buffactive.Sneak then
		cast_delay(0.2)
		send_command('cancel Sneak')
	end
	if sets.Precast[spell.element] and not Na_Spells:contains(spell.english) and ElementalStaff == 'ON' then
		equip(sets.Precast[spell.element])
	end
	if Main == 'ON' then
		equip(sets.MainWeapon)
	end
end

function midcast(spell,action)
	 equipSet = {}
        if spell.action_type == 'Magic' then
                equipSet = sets.Midcast
                if Na_Spells:contains(spell.english) then
                        equipSet = equipSet.Na
                        if DC then
                                equipSet = set_combine(equipSet,sets['Divine Caress'])
                        end
                elseif spell.english:startswith('Cur') and spell.english ~= "Cursna" then
                        if spell.english:startswith('Cure') then
                                if Enmity == 'ON' then
                                        equipSet = equipSet.Cure.Enmity
                                else
                                        equipSet = equipSet.Cure
                                end
                        elseif spell.english:startswith('Cura') then
                                if Enmity == 'ON' then
                                        equipSet = equipSet.Curaga.Enmity
                                else
                                        equipSet = equipSet.Curaga
                                end
					end
                        if world.day_element == spell.element or world.weather_element == spell.element then
                                equipSet = set_combine(equipSet,{waist="Hachirin-no-Obi"})
                        end
		
		elseif spell.english == "Protectra V" then
			equipSet = set_combine(equipSet,{main={ name="Gada", augments={'Enh. Mag. eff. dur. +6','STR+6','Mag. Acc.+18','"Mag.Atk.Bns."+7','DMG:+19',}},sub="Ammurapi Shield",head="Telchine Cap",body="Telchine Chas.",hands="Telchine Gloves",legs="Telchine Braconi",feet="Piety Duckbills +1"})
		elseif spell.english == "Protect V" then
			equipSet = set_combine(equipSet,{main={ name="Gada", augments={'Enh. Mag. eff. dur. +6','STR+6','Mag. Acc.+18','"Mag.Atk.Bns."+7','DMG:+19',}},sub="Ammurapi Shield",head="Telchine Cap", body="Telchine Chas.",hands="Telchine Gloves",legs="Telchine Braconi",feet="Telchine Pigaches"})
		elseif spell.english == "Shell V" then
			equipSet = set_combine(equipSet,{main={ name="Gada", augments={'Enh. Mag. eff. dur. +6','STR+6','Mag. Acc.+18','"Mag.Atk.Bns."+7','DMG:+19',}},sub="Ammurapi Shield",head="Telchine Cap",body="Telchine Chas.",hands="Telchine Gloves",legs="Telchine Braconi",feet="Telchine Pigaches"})
		elseif spell.skill == 'Elemental Magic' and MB == 'ON' then
			 if Obi == 'ON' then
                equipSet = set_combine(equipSet,sets.MB,{waist="Hachirin-no-Obi"})
            else
                equipSet = set_combine(equipSet,sets.MB)   
            end
		elseif spell.skill == 'Divine Magic' and MB == 'ON' then
			 if Obi == 'ON' then
                equipSet = set_combine(equipSet,sets.MB,{waist="Hachirin-no-Obi"})
            else
                equipSet = set_combine(equipSet,sets.MB)   
            end
		elseif spell.english == "Refresh" then
			equipSet = set_combine(equipSet,{main={ name="Gada", augments={'Enh. Mag. eff. dur. +6','STR+6','Mag. Acc.+18','"Mag.Atk.Bns."+7','DMG:+19',}},sub="Ammurapi Shield",head="Telchine Cap",body="Telchine Chas.",hands="Telchine Gloves",back="Grapevine Cape",waist="Gishdubar Sash",feet="Inspirited boots"})
		elseif spell.english == "Refresh II" then
			equipSet = set_combine(equipSet,{main={ name="Gada", augments={'Enh. Mag. eff. dur. +6','STR+6','Mag. Acc.+18','"Mag.Atk.Bns."+7','DMG:+19',}},sub="Ammurapi Shield",head="Telchine Cap",body="Telchine Chas.",hands="Telchine Gloves",back="Grapevine Cape",waist="Gishdubar Sash",feet="Inspirited boots"})
		elseif spell.english == "Shellra V" then
			equipSet = set_combine(equipSet,{main={ name="Gada", augments={'Enh. Mag. eff. dur. +6','STR+6','Mag. Acc.+18','"Mag.Atk.Bns."+7','DMG:+19',}},sub="Ammurapi Shield",head="Telchine Cap",body="Telchine Chas.",hands="Telchine Gloves",feet="Telchine Pigaches",legs="Piety Pantaloons +1"})
		elseif spell.english:startswith('Banish') then
                        equipSet = equipSet.Divine
                        if world.day_element == spell.element or world.weather_element == spell.element then
                                equipSet = set_combine(equipSet,{back="Twilight Cape",waist="Hachirin-no-Obi"})
                        end
		elseif spell.english:startswith('Holy') then
                        equipSet = equipSet.Divine
                        if world.day_element == spell.element or world.weather_element == spell.element then
                                equipSet = set_combine(equipSet,{back="Twilight Cape",waist="Hachirin-no-Obi"})
                        end
		elseif spell.english == "Stoneskin" then
			if buffactive.Stoneskin then
				send_command('@wait 2.8;cancel stoneskin')
			end
			equipSet = equipSet.Stoneskin
		elseif spell.english == "Sneak" then
			if spell.target.name == player.name and buffactive['Sneak'] then
				send_command('cancel sneak')
			end
			equipSet = equipSet.Haste
		elseif string.find(spell.english,'Bar') then
			equipSet = equipSet.Bar
		elseif string.find(spell.english,'Boost') then
			equipSet = equipSet.Boost
		elseif string.find(spell.english,'Regen') then
			equipSet = equipSet.Regen
		elseif string.find(spell.english,'Repose') then
			equipSet = equipSet.Repose
		elseif string.find(spell.english,'Drain') then
			equipSet = equipSet.Drain
		
	elseif string.find(spell.english,'Aspir') then
			equipSet = equipSet.Drain
		elseif string.find(spell.english,'Cursna') then
			equipSet = equipSet.Cursna
		elseif string.find(spell.english,'storm') then
                equipSet = equipSet.Haste
		elseif string.find(spell.english,'Reraise') then
			equipSet = equipSet.Haste
		elseif string.find(spell.english,'Utsusemi') then
			if spell.english == 'Utsusemi: Ichi' and (buffactive['Copy Image'] or buffactive['Copy Image (2)']) then
				send_command('@wait 1.7;cancel Copy Image*')
			end
			equipSet = equipSet.Haste
		elseif spell.english == 'Monomi: Ichi' then
			if buffactive['Sneak'] then
				send_command('@wait 1.7;cancel sneak')
			end
			equipSet = equipSet.Haste
		else
			if equipSet[spell.english] then
				equipSet = equipSet[spell.english]
			end 
			
			
			
		
if equipSet[spell.skill] then
				equipSet = equipSet[spell.skill]
			end
			
			end
		if (spell.skill == 'Elemental Magic' or string.find(spell.english,'Cur') or string.find(spell.english,'Bio') or string.find(spell.english,'Dia')) and not Non_Obi_Spells:contains(spell.english) and (world.day_element == spell.element or world.weather_element == spell.element) and sets.Obi[spell.element] and Obi == 'ON' then -- Use Obi Toggle To Equip Normal Waist Gear --
				equipSet = set_combine(equipSet,sets.Obi[spell.element])
			if equipSet[spell.type] then
				equipSet = equipSet[spell.type]
			end
		end
	elseif equipSet[spell.english] then
		equipSet = equipSet[spell.english]
	end 
equip(equipSet)

	if Main == 'ON' then
		equip(sets.MainWeapon)
	end
	
end

function aftercast(spell,action)
	if canceled then
		canceled = false
		return
	else
		if not spell.interrupted then
			if spell.type == "WeaponSkill" then
				send_command('wait 0.2;gs c TP')
			elseif (spell.english == "Repose" or spell.english == "Sleep II") then -- Repose & Sleep II Countdown --
				send_command('wait 60;input /echo Sleep Effect: [WEARING OFF IN 30 SEC.];wait 15;input /echo Sleep Effect: [WEARING OFF IN 15 SEC.];wait 10;input /echo Sleep Effect: [WEARING OFF IN 5 SEC.]')
			elseif (spell.english == "Sleep" or spell.english == "Sleepga") then -- Sleep & Sleepga Countdown --
				send_command('wait 30;input /echo Sleep Effect: [WEARING OFF IN 30 SEC.];wait 15;input /echo Sleep Effect: [WEARING OFF IN 15 SEC.];wait 10;input /echo Sleep Effect: [WEARING OFF IN 5 SEC.]')
			elseif spell.english == "Banish III" then -- Banish III Countdown --
				send_command('wait 35;input /echo Banish Effect: [WEARING OFF IN 10 SEC.]')
			end
		end
		status_change(player.status)
	end
end

function status_change(new,old)
    check_equip_lock()
    if Armor == 'PDT' then
		equip(sets.PDT)
	elseif Armor == 'MDT' then
		equip(sets.MDT)
	elseif new == 'Engaged' then
		equipSet = sets.TP
		if equipSet[AccArray[AccIndex]] then
			equipSet = equipSet[AccArray[AccIndex]]
		end
	    if Main == 'ON' then
		equip(sets.MainWeapon)
	end
		if buffactive.March == 2 or buffactive.March == 1 or buffactive[580] or buffactive['Mighty Guard'] and (buffactive.Embrava or buffactive.Haste) and equipSet["HighHaste"] then
			equipSet = equipSet["HighHaste"]
	
		end
		if equipSet[player.sub_job] then
    equipSet = equipSet[player.sub_job]
end
		equip(equipSet)
	elseif new == 'Idle' then
		equipSet = sets.Idle
		if equipSet[IdleArray[IdleIndex]] then
			equipSet = equipSet[IdleArray[IdleIndex]]
		end
		if buffactive['Reive Mark'] then -- Equip Arciela's Grace +1 During Reive --
			equipSet = set_combine(equipSet,sets.Reive)
		end
		if world.time >= (7*60) and world.time <= (17*60) then -- Equip Lycopodium Sash From Dusk To Dawn --
                        equipSet = set_combine(equipSet,{waist="Lycopodium Sash"})
                end
		if world.area:endswith('Adoulin') then
			equipSet = set_combine(equipSet,{body="Councilor's Garb"})
		end
		equip(equipSet)
	elseif new == 'Resting' then
		equip(sets.Resting)
	end
	
	
		end



function buff_change(buff,gain)
	buff = string.lower(buff)
	if buff == "aftermath: lv.3" then -- AM3 Timer --
		if gain then
			send_command('timers create "Aftermath: Lv.3" 180 down AM3.png;wait 120;input /echo Aftermath: Lv.3 [WEARING OFF IN 60 SEC.];wait 30;input /echo Aftermath: Lv.3 [WEARING OFF IN 30 SEC.];wait 20;input /echo Aftermath: Lv.3 [WEARING OFF IN 10 SEC.]')
		else
			send_command('timers delete "Aftermath: Lv.3"')
			add_to_chat(123,'AM3: [OFF]')
		end
	elseif buff == 'divine caress' then
		DC = gain
	elseif buff == 'weakness' then -- Weakness Timer --
		if gain then
			send_command('timers create "Weakness" 300 up')
		else
			send_command('timers delete "Weakness"')
		end
	end
	
end

-- In Game: //gs c (command), Macro: /console gs c (command), Bind: gs c (command) --
function self_command(command)
	if command == 'C1' then -- MB Toggle --
		if MB == 'ON' then
			MB = 'OFF'
			add_to_chat(123,'MB: [OFF]')
		else
			MB = 'ON'
			add_to_chat(158,'MB: [ON]')
		end
		status_change(player.status)
	elseif command == 'C2' then -- Obi Toggle --
		if Obi == 'ON' then
			Obi = 'OFF'
			add_to_chat(123,'Obi: [OFF]')
		else
			Obi = 'ON'
			add_to_chat(158,'Obi: [ON]')
		end
		status_change(player.status)
	elseif command == 'C3' then -- Kiting Toggle --
		if Kiting == 'ON' then
			Kiting = 'OFF'
			add_to_chat(123,'Kiting Set: [Unlocked]')
		else
			Kiting = 'ON'
			add_to_chat(158,'Kiting Set: [Locked]')
		end
		status_change(player.status)
	elseif command == 'C5' then -- Auto Update Gear Toggle --
		status_change(player.status)
		add_to_chat(158,'Auto Update Gear')
	elseif command == 'C9' then -- Accuracy Level Toggle --
		AccIndex = (AccIndex % #AccArray) + 1
		add_to_chat(158,'Accuracy Level: ' .. AccArray[AccIndex])
		status_change(player.status)
	elseif command == 'C7' then
		if Armor == 'PDT' then -- PDT Toggle --
			Armor = 'None'
			add_to_chat(123,'PDT Set: [Unlocked]')
		else
			Armor = 'PDT'
			add_to_chat(158,'PDT Set: [Locked]')
		end
		status_change(player.status)
	elseif command == 'C17' then -- Main Weapon Toggle --
		if Lock_Main == 'ON' then
			Lock_Main = 'OFF'
			add_to_chat(123,'Main Weapon: [Unlocked]')
		else
			Lock_Main = 'ON'
			add_to_chat(158,'Main Weapon: [Locked]')
		end
		status_change(player.status)
	elseif command == 'C8' then -- Distance Toggle --
		if player.target.distance then
			target_distance = math.floor(player.target.distance*10)/10
			add_to_chat(158,'Distance: '..target_distance)
		else
			add_to_chat(123,'No Target Selected')
		end
	elseif command == 'C6' then -- Idle Toggle
		IdleIndex = (IdleIndex % #IdleArray) + 1
		add_to_chat(158,'Idle Set: '..IdleArray[IdleIndex])
		status_change(player.status)
	elseif command == 'TP' then
		add_to_chat(158,'TP Return: '..tostring(player.tp))
	elseif command:match('^SC%d$') then
		send_command('//' .. sc_map[command])
	end
end

function check_equip_lock() -- Lock Equipment Here --
       
        if Lock_Main == 'ON' then
                disable('main','sub')
        else
                enable('main','sub')
        end
end

function actualCost(originalCost)
	if buffactive["Penury"] then
		return originalCost*.5
	elseif buffactive["Light Arts"] then
		return originalCost*.9
	else
		return originalCost
	end
end

function degrade_spell(spell,degrade_array)
	spell_index = table.find(degrade_array,spell.name)
	if spell_index > 1 then
		new_spell = degrade_array[spell_index - 1]
		change_spell(new_spell,spell.target.raw)
		add_to_chat(8,spell.name..' Canceled: ['..player.mp..'/'..player.max_mp..'MP::'..player.mpp..'%] Casting '..new_spell..' instead.')
	end
end

function change_spell(spell_name,target)
	cancel_spell()
	send_command('//'..spell_name..' '..target)
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
	if player.sub_job == 'SCH' then
		set_macro_page(10, 6)
	elseif player.sub_job == 'BLM' then
		set_macro_page(10, 6)
	elseif player.sub_job == 'RDM' then
		set_macro_page(10, 6)
	elseif player.sub_job == 'DNC' then
		set_macro_page(10, 6)
	elseif player.sub_job == 'WAR' then
		set_macro_page(10, 6)
	elseif player.sub_job == 'NIN' then
		set_macro_page(10, 6)
	else
		set_macro_page(10, 6)
	end
end