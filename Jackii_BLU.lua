function get_sets()
	AccIndex = 1
	AccArray = {"LowACC","MidACC","HighACC"} -- 3 Levels Of Accuracy Sets For TP/WS/Hybrid. Default ACC Set Is LowACC. The First TP Set Of Your Main Weapon Is LowACC. Add More ACC Sets If Needed Then Create Your New ACC Below --
	IdleIndex = 1
	IdleArray = {"Movement","Refresh"} -- Default Idle Set Is Movement --
	Armor = 'None'
	target_distance = 6 -- Set Default Distance Here --
    MagicBurst = false
	TH = 'OFF' -- Set Default Full TH ON or OFF Here --
	Cure_Spells = {"Cure","Cure II","Cure III","Cure IV"} -- Cure Degradation --
	Curaga_Spells = {"Curaga","Curaga II"} -- Curaga Degradation --
	select_default_macro_book() -- Change Default Macro Book At The End --
    Obi = 'ON' -- Set Default Obi ON or OFF Here --
	Non_Obi_Spells = S{
	         '1000 Needles','Chant du Cygne','Expiacion','Requiescat','Savage Blade','Black Halo','Realmrazer','Absolute Terror','Cruel Joke','Actinic Burst','Auroral Drape','Awful Eye',
			'Blank Gaze','Blistering Roar','Blood Drain','Blood Saber','Chaotic Eye',
			'Barrier Tusk','Carcharian Verve','Diamondhide','Metallic Body','Magic Barrier',
			"Occultation",'Orcish Counterstance','Nature\'s Meditation','Plasma Charge',
			'Pyric Bulwark','Reactor Cool','Amplification','Cocoon','Exuviation','Feather Barrier','Harden Shell','Memento Mori','Mighty Guard',
			'Metallic Body','Plasma Charge','Reactor Cool','Refueling','Erratic Flutter','Saline Coat','Animating Wail','Warm-Up',
			'Zephyr Mantle','Battery Charge','Refresh',
			'Cimicine Discharge','Cold Wave','Corrosive Ooze','Demoralizing Roar',
			'Dream Flower','Enervation','Feather Tickle','Filamented Hold','Frightful Roar',
			'Geist Wall','Hecatomb Wave','Infrasonics','Jettatura','Light of Penance','Lowing',
			'Mortal Ray','Osmosis','Reaving Wind','Sandspin','Diaga','Poisonga',
			'Sandspray','Sheep Song','Soporific','Sound Blast','Stinking Gas','Sub-zero Smash',
			'Triumphant Roar','Venom Shell','Voracious Trunk','Yawn',
			'Burn','Choke','Drown','Frost','Rasp','Shock','Impact','Anemohelix','Cryohelix',
			'Geohelix','Hydrohelix','Ionohelix','Luminohelix','Noctohelix','Pyrohelix'}
	sc_map = {SC1="ChantduCygne", SC2="Berserk", SC3="HeadButt"} -- 3 Additional Binds. Can Change Whatever JA/WS/Spells You Like Here. Remember Not To Use Spaces. --

	PhysicalBlueMagic = S{
			'Asuran Claws','Bludgeon','Body Slam','Feather Storm','Mandibular Bite',
			'Queasyshroom','Power Attack','Ram Charge','Screwdriver','Sickle Slash',
			'Smite of Rage','Spinal Cleave','Spiral Spin','Terror Touch'}

	PhysicalBlueMagic_STR = S{
			'Battle Dance','Bloodrake','Death Scissors','Dimensional Death','Empty Thrash',
			'Quadrastrike','Uppercut','Vertical Cleave'}
	
	PhysicalBlueMagic_STRAcc = S{
			'Heavy Strike'}
			


	PhysicalBlueMagic_DEX = S{
			'Amorphic Spikes','Thrashing Assault','Barbed Crescent','Claw Cyclone','Disseverment','Foot Kick',
			'Frenetic Rip','Goblin Rush','Hysteric Barrage','Paralyzing Triad','Seedspray',
			'Vanity Dive'}

	PhysicalBlueMagic_VIT = S{
			'Cannonball','Delta Thrust','Glutinous Dart','Grand Slam','Sinker Drill','Quad. Continuum',
			'Sprout Smack'}

	PhysicalBlueMagic_AGI = S{
			'Benthic Typhoon','Helldive','Hydro Shot','Whirl of Rage','Jet Stream','Pinecone Bomb',
			'Wild Oats'}

	MagicalBlueMagic = S{
			'Acrid Stream','Blazing Bound','Cesspool','Tearing Gust','Searing Tempest','Blinding Fulgor','Spectral Floe','Scouring Spate','Anvil Lightning','Silent Storm','Nectarous Deluge','Mind Blast','Rail Cannon','Diffusion Ray','Uproot','Molting Plumage','Crashing Thunder','Polar Roar','Subduction','Droning Whirlwind',
			'Firespit','Foul Waters','Gates of Hades','Leafstorm','Fire','Fire II','Blizzard','Blizzard II','Aero','Aero II','Thunder','Water','Water II','Blastbomb','Ice Break','Retinal Glare','Cursed Sphere','Maelstrom','Corrosive Ooze','Mysterious Light','Magic Hammer',
			'Regurgitation','Rending Deluge','Tem. Upheaval','Thermal Pulse','Water Bomb'}

	BlueMagic_Accuracy = S{
			'1000 Needles','Absolute Terror','Cruel Joke','Actinic Burst','Auroral Drape','Awful Eye',
			'Blank Gaze','Blistering Roar','Blood Drain','Blood Saber','Chaotic Eye',
			'Cimicine Discharge','Cold Wave','Corrosive Ooze','Demoralizing Roar',
			'Dream Flower','Enervation','Feather Tickle','Filamented Hold','Frightful Roar',
			'Geist Wall','Hecatomb Wave','Infrasonics','Jettatura','Light of Penance','Lowing',
			'Mortal Ray','Osmosis','Reaving Wind','Sandspin',
			'Sandspray','Sheep Song','Soporific','Sound Blast','Stinking Gas','Sub-zero Smash',
			'Triumphant Roar','Venom Shell','Voracious Trunk','Yawn'}

	BlueMagic_Breath = S{
			'Bad Breath','Flying Hip Press','Final Sting','Frost Breath','Heat Breath',
			'Magnetite Cloud','Poison Breath','Radiant Breath','Self Destruct','Thunder Breath',
			'Wind Breath'}

	BlueMagic_Buff = S{
			'Barrier Tusk','Carcharian Verve','Diamondhide','Metallic Body','Magic Barrier',
			"Occultation",'Orcish Counterstance','Nature\'s Meditation','Plasma Charge',
			'Pyric Bulwark','Reactor Cool'}

	BlueMagic_Diffusion = S{
			'Amplification','Cocoon','Exuviation','Feather Barrier','Harden Shell','Memento Mori','Mighty Guard',
			'Metallic Body','Plasma Charge','Reactor Cool','Refueling','Erratic Flutter','Saline Coat','Animating Wail','Warm-Up',
			'Zephyr Mantle'}

	BlueMagic_Healing = S{
			'Healing Breeze','Magic Fruit','Restoral','Plenilune Embrace','Pollen','Cure III','Cure II','Cure','Cure IV',
			'Wild Carrot'}
			
	BlueMagic_WWind = S{
	'White Wind'}
	
	BlueMagic_Dark = S{
			'Mp Drainkiss','Digest','Atra. Libations'}
			
	BlueMagic_Refresh = S{
			'Battery Charge','Refresh'}
	
	BlueMagic_DarkNuke = S{
			'Tenebral Crush','Palling Salvo','Evryone. Grudge','Dark Orb','Eyes on me'}
			
	BlueMagic_EarthNuke = S{
			'Sandspin','Embalming Earth','Entomb','Stone','Stone II'}
	

	BlueMagic_Stun = S{
			'Blitzstrahl','Frypan','Saurian Slide','Head Butt','Sudden Lunge','Sweeping Gouge','Tourbillion','Tail slap','Temporal Shift',
			'Thunderbolt'}

	BlueMagic_Unbridled = S{
			'Absolute Terror','Tearing Gust','Bilgestorm','Cesspool','Blistering Roar','Bloodrake','Carcharian Verve','Mighty Guard','Cruel Joke',
			'Droning Whirlwind','Uproot','Crashing Thunder','Polar Roar','Harden Shell','Gates of Hades','Pyric Bulwark','Thunderbolt',
			'Tourbillion'}

	-- Idle/Town Sets --
	sets.Idle = {}
	sets.Idle.Regen = {
			ammo="Staunch Tathlum",
			ear1="Infused Earring",
			ear2="Etiolation Earring",
			body="Vrikodara Jupon",
			hands="Assim. Bazu. +2",
			waist="Flume Belt +1",}
	sets.Idle.Movement = set_combine(sets.Idle.Regen,{
	        ammo="Staunch Tathlum",
			head="Rawhide Mask",
			neck="Loricate Torque +1",
			ear1="Infused Earring",
			ear2="Genmei Earring",
			body="Amalric Doublet +1",
			hands="Assim. Bazu. +2",
			ring1="Defending Ring",
			ring2="Dark Ring",
			back="Moonbeam Cape",
			waist="Flume Belt +1",
			legs="Carmine Cuisses +1",
			feet="Hippomenes Socks +1"})
	sets.Idle.Refresh = set_combine(sets.Idle.Regen,{
	        ammo="Staunch Tathlum",
			ear1="Infused Earring",
			ear2="Etiolation Earring",
			body="Vrikodara Jupon",
			hands="Assim. Bazu. +2",
			waist="Flume Belt +1",})
	sets.Resting = set_combine(sets.Idle.Regen)

	-- TP Sets --
	sets.TP = {
	        ammo="Ginsen",
			head="Adhemar Bonnet +1",
			neck="Ainia Collar",
			ear1="Suppanomimi",
			ear2="Eabani Earring",
			body="Adhemar Jacket +1",
			hands="Adhemar Wristbands +1",
			ring1="Epona's Ring",
			ring2="Hetairoi Ring",
			back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dual Wield"+10',}},
			waist="Reiki Yotai",
			legs="Taeon Tights",
			feet="Taeon Boots"}
	sets.TP.MidACC = set_combine(sets.TP,{
			head="Dampening Tam",
			neck="Combatant's Torque",
			legs="Samnuha Tights"})
	sets.TP.HighACC = set_combine(sets.TP.MidACC,{
			ammo="Falcon Eye",
			head="Carmine Mask +1",
			ear1="Zennaroi Earring",
			ring1="Ramuh Ring +1",
			ring2="Cacoethic Ring +1",
			waist="Olseni Belt",
			legs="Carmine Cuisses +1"})

	-- March x2 + (Embrava or Haste) --
	sets.TP.HighHaste =  set_combine(sets.TP,{
			ear1="Dedition Earring",
			ear2="Eabani Earring",
			body={ name="Herculean Vest", augments={'Attack+21','"Triple Atk."+4','Accuracy+15',}},
			waist="Reiki Yotai",
			legs="Samnuha Tights",
			feet={ name="Herculean Boots", augments={'Accuracy+15 Attack+15','"Triple Atk."+4','DEX+7','Attack+3',}},})
	sets.TP.MidACC.HighHaste = set_combine(sets.TP.HighHaste,{
			head="Taeon Chapeau",
			--head="Dampening Tam",
			neck="Combatant's Torque",
			ear1="Telos Earring",
			waist="Kentarch Belt +1"})
	sets.TP.HighACC.HighHaste = set_combine(sets.TP.MidACC.HighHaste,{
			ammo="Falcon Eye",
			head="Carmine Mask +1",
			ear2="Zennaroi Earring",
			legs="Carmine Cuisses +1",
			ring1="Ramuh Ring +1",
			ring2="Cacoethic Ring +1",
		    waist="Olseni Belt"})
			
	-- Full TH TP Set --
	sets.TP.TH = {
	        hands={ name="Herculean Gloves", augments={'DEX+10','INT+7','"Treasure Hunter"+2',}},
			head={ name="Herculean Helm", augments={'"Store TP"+1','"Dbl.Atk."+2','"Treasure Hunter"+2','Accuracy+10 Attack+10','Mag. Acc.+3 "Mag.Atk.Bns."+3',}}}

	-- PDT/MDT Sets --
	sets.PDT = {
			ammo="Falcon Eye",
			head="Iuitl Headgear +1",
			neck="Loricate Torque +1",
			ear1="Genmei Earring",
			ear2="Etiolation Earring",
			body="Onca Suit",
			ring1="Defending Ring",
			ring2="Gelatinous Ring +1",
			back="Moonbeam Cape",
			waist="Flume Belt +1"}

	sets.MDT = set_combine(sets.PDT,{
			ear1="Merman's Earring",
			ring1="Shadow Ring",
			back="Engulfer Cape +1"})

	-- Hybrid Sets --
	

	-- WS Base Set --
	sets.WS = {}

	-- WS Sets --
	sets.WS["Chant du Cygne"] = {
			ammo="Falcon Eye",
			head="Adhemar Bonnet +1",
			neck="Fotia Gorget",
			ear1="Brutal Earring",
			ear2="Moonshade Earring",
			body="Abnoba Kaftan",
			hands={ name="Herculean Gloves", augments={'Accuracy+22 Attack+22','Weapon skill damage +3%','DEX+4','Accuracy+5',}},
			ring1="Epona's Ring",
			ring2="Hetairoi Ring",
			back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}},
			waist="Fotia Belt",
			legs="Samnuha Tights",
			feet="Thereoid Greaves"}
	sets.WS["Chant du Cygne"].MidACC = set_combine(sets.WS["Chant du Cygne"],{})
	sets.WS["Chant du Cygne"].HighACC = set_combine(sets.WS["Chant du Cygne"].MidACC,{
			head="Carmine Mask +1",
			body="Adhemar Jacket +1",
			ring2="Ramuh Ring +1"})

	sets.WS.Requiescat = {
			ammo="Falcon Eye",
			head={ name="Herculean Helm", augments={'Attack+27','Weapon skill damage +4%','Accuracy+14',}},
			neck="Fotia Gorget",
			ear1="Ishvara Earring",
			ear2="Moonshade Earring",
			body="Assim. Jubbah +2",
			hands="Jhakri Cuffs +2",
			lring="Epona's Ring",
			ring2="Ifrit Ring +1",
			back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
			waist="Fotia Belt",
			legs={ name="Herculean Trousers", augments={'Accuracy+28','Weapon skill damage +3%','STR+7','Attack+11',}},
			feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','Weapon skill damage +3%','STR+5','Accuracy+13',}},}
	sets.WS.Requiescat.MidACC = set_combine(sets.WS.Requiescat,{})
	sets.WS.Requiescat.HighACC = set_combine(sets.WS.Requiescat.MidACC,{
			--head="Dampening Tam",
			})
			
	sets.WS["Sanguine Blade"] = {
			ammo="Pemphredo Tathlum",
			head="Pixie Hairpin +1",
			neck="Sanctity Necklace",
			ear1="Crematio Earring",
			ear2="Friomisi Earring",
			body="Amalric Doublet +1",
			hands="Jhakri Cuffs +2",
			ring1="Archon Ring",
			ring2="Shiva Ring +1",
			back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
			waist="Yamabuki-no-Obi",
			legs="Amalric Slops +1",
			feet="Amalric Nails +1"}
			
	sets.WS["Flash Nova"] = {
			ammo="Pemphredo Tathlum",
			head="Jhakri Coronal +2",
			neck="Sanctity Necklace",
			ear1="Crematio Earring",
			ear2="Friomisi Earring",
			body="Amalric Doublet +1",
			hands="Jhakri Cuffs +2",
			ring1="Shiva Ring +1",
			ring2="Shiva Ring +1",
			back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
			waist="Yamabuki-no-Obi",
			legs="Amalric Slops +1",
			feet="Amalric Nails +1"}
			
	sets.WS.Realmrazer = {
			ammo="Falcon Eye",
			head="Adhemar Bonnet +1",
			neck="Fotia Gorget",
			ear1="Mache Earring",
			ear2="Cessance Earring",
			body="Adhemar Jacket +1",
			hands="Adhemar Wristbands +1",
			ring1="Ifrit Ring +1",
			ring2="Shukuyu Ring",
			back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}},
			waist="Fotia Belt",
			legs="Samnuha Tights",
			feet="Thereoid Greaves",}
			
			
	sets.WS["Savage Blade"] = {
			ammo="Falcon Eye",
			ammo="Floestone",
			head={ name="Herculean Helm", augments={'Attack+27','Weapon skill damage +4%','Accuracy+14',}},
			neck="Fotia Gorget",
			ear1="Ishvara Earring",
			ear2="Moonshade Earring",
			body={ name="Herculean Vest", augments={'Rng.Atk.+2','Pet: "Store TP"+1','Weapon skill damage +9%','Accuracy+11 Attack+11',}},
			hands="Jhakri Cuffs +2",
			ring1="Epona's Ring",
			ring2="Shukuyu Ring",
			back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
			waist="Fotia Belt",
			legs={ name="Herculean Trousers", augments={'Accuracy+28','Weapon skill damage +3%','STR+7','Attack+11',}},
			feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','Weapon skill damage +3%','STR+5','Accuracy+13',}},}
	sets.WS["Savage Blade"].MidACC = set_combine(sets.WS["Savage Blade"],{
			ammo="Falcon Eye",
			body="Assim. Jubbah +2",
			legs="Samnuha Tights"})
	sets.WS["Savage Blade"].HighACC = set_combine(sets.WS["Savage Blade"].MidACC,{
			head="Jhakri Coronal +2",
			ring2="Ramuh Ring +1",
			ring1="Cacoethic Ring +1",
			legs="Jhakri Slops +1",
			feet="Jhakri Pigaches +1"})
			
	sets.WS["Black Halo"] = {
			ammo="Falcon Eye",
			ammo="Floestone",
			head={ name="Herculean Helm", augments={'Attack+27','Weapon skill damage +4%','Accuracy+14',}},
			neck="Fotia Gorget",
			ear1="Ishvara Earring",
			ear2="Moonshade Earring",
			body="Assim. Jubbah +2",
			hands="Jhakri Cuffs +2",
			ring1="Epona's Ring",
			ring2="Shukuyu Ring",
			back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
			waist="Fotia Belt",
			legs={ name="Herculean Trousers", augments={'Accuracy+28','Weapon skill damage +3%','STR+7','Attack+11',}},
			feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','Weapon skill damage +3%','STR+5','Accuracy+13',}},}
			
			
	sets.WS["Circle Blade"] = {
			ammo="Falcon Eye",
			head="Adhemar Bonnet +1",
			neck="Fotia Gorget",
			ear1="Brutal Earring",
			ear2="Moonshade Earring",
			body="Abnoba Kaftan",
			hands="Adhemar Wristbands +1",
			ring1="Epona's Ring",
			ring2="Ifrit Ring +1",
			back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
			waist="Fotia Belt",
			legs="Samnuha Tights",
			feet="Thereoid Greaves"}

	sets.WS.Expiacion = {
	        ammo="Falcon Eye",
			ammo="Floestone",
			head={ name="Herculean Helm", augments={'Attack+27','Weapon skill damage +4%','Accuracy+14',}},
			neck="Fotia Gorget",
			ear1="Ishvara Earring",
			ear2="Moonshade Earring",
			body={ name="Herculean Vest", augments={'Rng.Atk.+2','Pet: "Store TP"+1','Weapon skill damage +9%','Accuracy+11 Attack+11',}},
			hands="Jhakri Cuffs +2",
			ring1="Epona's Ring",
			ring2="Shukuyu Ring",
			back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
			waist="Fotia Belt",
			legs={ name="Herculean Trousers", augments={'Accuracy+28','Weapon skill damage +3%','STR+7','Attack+11',}},
			feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','Weapon skill damage +3%','STR+5','Accuracy+13',}},}
	sets.WS.Expiacion.MidACC = set_combine(sets.WS.Expiacion,{
	        ammo="Falcon Eye",
			body="Assim. Jubbah +2",
			legs="Samnuha Tights"})
	sets.WS.Expiacion.HighACC = set_combine(sets.WS.Expiacion.MidACC,{
	        ammo="Falcon Eye",
			head="Jhakri Coronal +2",
			hands="Jhakri Cuffs +2",
			ring1="Ramuh Ring +1",
			ring2="Cacoethic Ring +1",
			legs="Jhakri Slops +1",
			feet="Jhakri Pigaches +1"})
	
	-- JA Sets --
	sets.JA = {}
	sets.JA['Azure Lore'] = {hands="Mrg. Bazubands +2"}

	-- Waltz Set --
	sets.Waltz = {}
	
	-- Swipe Set --
	sets.Swipe = {
	        ammo="Pemphredo Tathlum",
			head="Pixie Hairpin +1",
			neck="Sanctity Necklace",
			ear1="Crematio Earring",
			ear2="Friomisi Earring",
			body="Amalric Doublet +1",
			hands="Amalric Gages +1",
			ring1="Archon Ring",
			ring2="Shiva Ring +1",
			back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
			waist="Yamabuki-no-Obi",
			legs="Amalric Slops +1",
			feet="Amalric Nails +1"}
	
	-- Step Set --
	sets.Step = {
	        ammo="Falcon Eye",
			head="Carmine Mask +1",
			neck="Combatant's Torque",
			ear1="Mache Earring",
			ear2="Zennaroi Earring",
			--ear2="Telos Earring",
			body={ name="Herculean Vest", augments={'Attack+21','"Triple Atk."+4','Accuracy+15',}},
			hands={ name="Herculean Gloves", augments={'DEX+10','INT+7','"Treasure Hunter"+2',}},
			ring1="Ramuh Ring +1",
			ring2="Petrov Ring",
			back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}},
			waist="Chaac Belt",
			legs="Jhakri Slops +1",
			feet="Jhakri Pigaches +1",}
			
	
			
	sets.Flourish = {
	        ammo="Falcon Eye",
			head="Carmine Mask +1",
			neck="Combatant's Torque",
			ear1="Mache Earring",
			ear2="Zennaroi Earring",
			--ear2="Telos Earring",
			body={ name="Herculean Vest", augments={'Attack+21','"Triple Atk."+4','Accuracy+15',}},
			hands={ name="Herculean Gloves", augments={'DEX+10','INT+7','"Treasure Hunter"+2',}},
			ring1="Ramuh Ring +1",
			ring2="Petrov Ring",
			back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dual Wield"+10',}},
			waist="Chaac Belt",
			legs="Jhakri Slops +1",
			feet="Jhakri Pigaches +1",}

	sets.Precast = {}
	-- Fastcast Set --
	sets.Precast.FastCast = { --60% FC +10% QM
			ammo="Impatiens", -- +2% QM
			head="Carmine Mask +1", --14% FC
			neck="Orunmila's Torque", --5% FC
			ear1="Loquac. Earring", --2% FC
			ear2="Enchntr. Earring +1", --2% FC
			body="Dread Jupon", --7% FC
			hands="Leyline Gloves", --8% FC
			ring1="Kishar Ring", --4% FC
			ring2="Lebeche Ring", -- +2% QM
			back="Perimede Cape", -- +4% QM
			waist="Witful Belt", --3% FC +3% QM
			legs="Psycloth Lappas", --7% FC
		    feet="Carmine Greaves +1"} --8% FC

	-- Precast Enhancing Magic --
	sets.Precast['Enhancing Magic'] = set_combine(sets.Precast.FastCast,{waist="Siegel Sash"})
	
	-- Precast Enhancing Magic --
	sets.Precast['Blue Magic'] = set_combine(sets.Precast.FastCast,{body="Hashishin Mintan +1"})

	-- Midcast Base Set --
	sets.Midcast = {}

	-- Magic Haste Set --
	sets.Midcast.Haste = set_combine(sets.Precast.FastCast,{
	        hands="Leyline Gloves"})

	-- Enhancing Magic Base Set --
	sets.Midcast['Enhancing Magic'] = {  
	        ammo="Impatiens",
			head="Telchine Cap",
			neck="Incanter's Torque",
			ear1="Loquac. Earring",
			ear2="Enchntr. Earring +1",
			body="Telchine Chas.",
			hands="Telchine Gloves",
			ring1="Kishar Ring",
			ring2="Lebeche Ring",
			back="Perimede Cape",
			waist="Witful Belt",
			legs="Telchine Braconi",
			feet="Telchine Pigaches"}
			
			
	sets.Midcast['Enfeebling Magic'] = {  
	        ammo="Pemphredo Tathlum",
			head="Carmine Mask +1",
			neck="Incanter's Torque",
			ear1="Gwati Earring",
			ear2="Digni. Earring",
			body="Amalric Doublet +1",
			hands="Leyline Gloves",
			ring1="Stikini Ring +1",
			ring2="Sangoma Ring",
			back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
			waist="Eschan Stone",
			legs="Psycloth Lappas",
			feet="Medium's Sabots"}
	
	
	
	-- Elemental Magic Base Set --
	
	-- Stoneskin Set --
	sets.Midcast.Stoneskin = set_combine(sets.Midcast['Enhancing Magic'],{})
	
	sets.Midcast.Diaga = {
			ammo="Impatiens",
			head={ name="Herculean Helm", augments={'"Store TP"+1','"Dbl.Atk."+2','"Treasure Hunter"+2','Accuracy+10 Attack+10','Mag. Acc.+3 "Mag.Atk.Bns."+3',}},
			neck="Orunmila's Torque",
			ear1="Loquac. Earring",
			ear2="Enchntr. Earring +1",
			body="Dread Jupon",
			hands={ name="Herculean Gloves", augments={'DEX+10','INT+7','"Treasure Hunter"+2',}},
			ring1="Kishar Ring",
			ring2="Lebeche Ring",
			back="Perimede Cape",
			waist="Chaac Belt",
			legs="Psycloth Lappas",
		    feet="Carmine Greaves +1"}
			
	sets.Midcast.Poisonga = {
			ammo="Impatiens",
			head={ name="Herculean Helm", augments={'"Store TP"+1','"Dbl.Atk."+2','"Treasure Hunter"+2','Accuracy+10 Attack+10','Mag. Acc.+3 "Mag.Atk.Bns."+3',}},
			neck="Orunmila's Torque",
			ear1="Loquac. Earring",
			ear2="Enchntr. Earring +1",
			body="Dread Jupon",
			hands={ name="Herculean Gloves", augments={'DEX+10','INT+7','"Treasure Hunter"+2',}},
			ring1="Kishar Ring",
			ring2="Lebeche Ring",
			back="Perimede Cape",
			waist="Chaac Belt",
			legs="Psycloth Lappas",
		    feet="Carmine Greaves +1"}

	-- For Cure Spells & The Listed Healing Blue Magic --
	sets.Midcast.Cure = {
	        ammo="Impatiens",
			head="Telchine Cap",
			--neck="Phalaina Locket",
			ear1="Mendi. Earring",
			ear2="Lifestorm earring",
			body="Vrikodara Jupon",
			hands="Telchine Gloves",
			--ring1="Kunaji Ring",
			ring2="Stikini Ring +1",
			back="Solemnity Cape",
			waist="Gishdubar Sash",
			legs="Telchine Braconi",
			feet="Medium's Sabots"}
			
	sets.Midcast.Cursna = {
	        ammo="Impatiens",
			head="Telchine Cap",
			neck="Debilis Medallion",
			ear1="Loquac. Earring",
			ear2="Enchntr. Earring +1",
			body="Vrikodara Jupon",
			hands="Hieros Mittens",
			ring1="Haoma's Ring",
			ring2="Haoma's Ring",
			back="Moonbeam Cape",
			waist="Gishdubar Sash",
			legs="Telchine Braconi",
			feet="Telchine Pigaches"}

	-- For The Listed Physical Type Blue Magic --
	sets.Midcast.PhysicalBlueMagic = {
			ammo="Floestone",
			head="Adhemar Bonnet +1",
			ear1="Vulcan's Pearl",
			ear2="Zennaroi Earring",
			body="Adhemar Jacket +1",
			hands="Rawhide Gloves",
			ring1="Ifrit Ring +1",
			ring2="Shukuyu Ring",
			back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
			waist="Grunfeld Rope",
			legs="Jhakri Slops +1",
			feet="Jhakri Pigaches +1",}

	-- Blue Magic STR Set --
	sets.Midcast.PhysicalBlueMagic_STR = set_combine(sets.Midcast.PhysicalBlueMagic,{})
	
	-- Blue Magic Heavy Set --
	sets.Midcast.PhysicalBlueMagic_STRAcc = set_combine(sets.Midcast.PhysicalBlueMagic,{
	        ammo="Falcon Eye",
			head={ name="Herculean Helm", augments={'"Store TP"+1','"Dbl.Atk."+2','"Treasure Hunter"+2','Accuracy+10 Attack+10','Mag. Acc.+3 "Mag.Atk.Bns."+3',}},
			hands={ name="Herculean Gloves", augments={'DEX+10','INT+7','"Treasure Hunter"+2',}},})

	-- Blue Magic STR/DEX Set --
	sets.Midcast.PhysicalBlueMagic_DEX = set_combine(sets.Midcast.PhysicalBlueMagic,{
	      ear2="Mache Earring",
		  ring1="Ramuh Ring +1",
		  back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dual Wield"+10',}},})

	-- Blue Magic STR/VIT Set --
	sets.Midcast.PhysicalBlueMagic_VIT = set_combine(sets.Midcast.PhysicalBlueMagic,{
		  ring2="Petrov Ring",
	      waist="Grunfeld Rope"})

	-- Blue Magic STR/AGI Set --
	sets.Midcast.PhysicalBlueMagic_AGI = set_combine(sets.Midcast.PhysicalBlueMagic,{
		head={ name="Herculean Helm", augments={'"Store TP"+1','"Dbl.Atk."+2','"Treasure Hunter"+2','Accuracy+10 Attack+10','Mag. Acc.+3 "Mag.Atk.Bns."+3',}},
	    hands={ name="Herculean Gloves", augments={'DEX+10','INT+7','"Treasure Hunter"+2',}},})

	-- For The Listed Magical Type Blue Magic --
	sets.Midcast.MagicalBlueMagic = {
			ammo="Pemphredo Tathlum",
			head="Jhakri Coronal +2",
			neck="Sanctity Necklace",
			ear1="Crematio Earring",
			ear2="Friomisi Earring",
			body="Amalric Doublet +1",
			hands="Amalric Gages +1",
			ring1="Shiva Ring +1",
			ring2="Shiva Ring +1",
			back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
			waist="Yamabuki-no-Obi",
			legs="Amalric Slops +1",
			feet="Amalric Nails +1"}
			
    sets.Midcast.MagicalBlueMagic.MagicBurst = {
        ammo="Pemphredo Tathlum",
        head="Jhakri Coronal +2",
        neck="Sanctity Necklace",
        ear1="Static Earring",
        ear2="Friomisi Earring",
        body="Samnuha Coat",
        hands="Amalric Gages +1",
        ring1="Mujin Band",
        ring2="Locus Ring",
        back="Seshaw cape +1",
        waist="Yamabuki-no-Obi",
        legs="Amalric Slops +1",
        feet="Jhakri Pigaches +1"}
			
	sets.Midcast.BlueMagic_Dark = {
			ammo="Mavi Tathlum",
			head="Pixie Hairpin +1",
			neck="Incanter's Torque",
			ear1="Crematio Earring",
			ear2="Friomisi Earring",
			body="Assim. Jubbah +2",
			hands="Rawhide Gloves",
			ring1="Archon Ring",
			ring2="Shiva Ring +1",
			back="Cornflower Cape",
			waist="Yamabuki-no-Obi",
			legs="Hashishin Tayt +1",
			feet="Luhlaza Charqus +1"}
			
	sets.Midcast.BlueMagic_Refresh = {
			ammo="Impatiens",
			--head="Amalric Coif",
			neck="Orunmila's Torque",
			ear1="Loquac. Earring",
			ear2="Enchntr. Earring +1",
			body="Telchine Chas.",
			hands="Telchine Gloves",
			ring1="Kishar Ring",
			ring2="Lebeche Ring",
			back="Grapevine Cape",
			waist="Gishdubar Sash",
			legs="Telchine Braconi",
			feet="Telchine Pigaches"}

    sets.Midcast.BlueMagic_EarthNuke = {
			ammo="Pemphredo Tathlum",
			head="Jhakri Coronal +2",
			--neck="Quanpur Necklace",
			ear1="Crematio Earring",
			ear2="Friomisi Earring",
			body="Amalric Doublet +1",
			hands="Amalric Gages +1",
			ring1="Shiva Ring +1",
			ring2="Shiva Ring +1",
			back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
			waist="Yamabuki-no-Obi",
			legs="Amalric Slops +1",
			feet="Amalric Nails +1"}	

    sets.Midcast.BlueMagic_EarthNuke.MagicBurst = {
		ammo="Pemphredo Tathlum",
        head="Jhakri Coronal +2",
        --neck="Quanpur Necklace",
        ear1="Static Earring",
        ear2="Friomisi Earring",
        body="Samnuha Coat",
        hands="Amalric Gages +1",
        ring1="Mujin Band",
        ring2="Locus Ring",
        back="Seshaw cape +1",
        waist="Yamabuki-no-Obi",
        legs="Amalric Slops +1",
        feet="Jhakri Pigaches +1"}		
	
	sets.Midcast.BlueMagic_DarkNuke = {
			ammo="Pemphredo Tathlum",
			head="Pixie Hairpin +1",
			neck="Sanctity Necklace",
			ear1="Crematio Earring",
			ear2="Friomisi Earring",
			body="Amalric Doublet +1",
			hands="Amalric Gages +1",
			ring1="Shiva Ring +1",
			ring2="Archon Ring",
			back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
			waist="Yamabuki-no-Obi",
			legs="Amalric Slops +1",
			feet="Amalric Nails +1"}
			
	sets.Midcast.BlueMagic_DarkNuke.MagicBurst = {
			ammo="Pemphredo Tathlum",
			head="Pixie Hairpin +1",
			neck="Sanctity Necklace",
			ear1="Static Earring",
			ear2="Friomisi Earring",
			body="Samnuha Coat",
			hands="Amalric Gages +1",
			ring1="Mujin Band",
            ring2="Archon Ring",
			back="Seshaw cape +1",
			waist="Yamabuki-no-Obi",
			legs="Amalric Slops +1",
			feet="Jhakri Pigaches +1"}
			
	sets.Obi = {}
	sets.Obi.Thunder = {back="Twilight Cape",waist='Hachirin-no-Obi'}
	sets.Obi.Water = {back="Twilight Cape",waist='Hachirin-no-Obi'}
	sets.Obi.Fire = {back="Twilight Cape",waist='Hachirin-no-Obi'}
	sets.Obi.Ice = {back="Twilight Cape",waist='Hachirin-no-Obi'}
	sets.Obi.Wind = {back="Twilight Cape",waist='Hachirin-no-Obi'}
	sets.Obi.Earth = {back="Twilight Cape",waist='Hachirin-no-Obi'}
	sets.Obi.Light = {back="Twilight Cape",waist='Hachirin-no-Obi'}
	sets.Obi.Dark = {back="Twilight Cape",waist='Hachirin-no-Obi'}

	-- Magic Accuracy For The Listed Blue Magic --
	sets.Midcast.BlueMagic_Accuracy = {
			ammo="Mavi Tathlum",
			head="Carmine Mask +1",
			neck="Incanter's Torque",
			ear1="Gwati Earring",
			ear2="Digni. Earring",
			body="Jhakri Robe +1",
			hands="Leyline Gloves",
			ring1="Stikini Ring +1",
			ring2="Sangoma Ring",
			back="Cornflower Cape",
			waist="Eschan Stone",
			legs="Psycloth Lappas",
			feet="Jhakri Pigaches +1"}
			
	-- White Wind --		
	sets.Midcast.BlueMagic_WWind = {
	        --ammo="Egoist's Tathlum",
			head="Telchine Cap",
			--neck="Phalaina Locket",
			ear1="Mendi. Earring",
			ear2="Etiolation Earring",
			body="Vrikodara Jupon",
			hands="Telchine Gloves",
			--ring1="Kunaji Ring",
			ring2="Etana Ring",
			--back="Reiki Cloak",
			waist="Gishdubar Sash",
			legs="Telchine Braconi",
			feet="Medium's Sabots"}

	-- Stun Set For The Listed Blue Magic --
	sets.Midcast.BlueMagic_Stun = set_combine(sets.Midcast.BlueMagic_Accuracy,{
			ammo="Falcon Eye",
			head="Carmine Mask +1",
			neck="Sanctity Necklace",
			ear1="Gwati Earring",
			ear2="Digni. Earring",
			body="Jhakri Robe +1",
			hands="Leyline Gloves",
			ring1="Etana Ring",
			ring2="Stikini Ring +1",
			back="Cornflower Cape",
			waist="Tempus Fugit",
			legs="Jhakri Slops +1",
			feet="Jhakri Pigaches +1"})

	-- Buff Set For The Listed Blue Magic --
	sets.Midcast.BlueMagic_Buff = {
	        ammo="Mavi Tathlum",
			head="Luh. Keffiyeh +1",
			neck="Incanter's Torque",
			ear1="Loquac. Earring",
			ear2="Enchntr. Earring +1",
			body="Assim. Jubbah +2",
			hands="Rawhide Gloves",
			ring1="Stikini Ring +1",
			ring2="Lebeche Ring",
			back="Cornflower cape",
			waist="Witful Belt",
			legs="Hashishin Tayt +1",
			feet="Luhlaza charuqs +1"}

	-- Breath Set For The Listed Blue Magic --
	sets.Midcast.BlueMagic_Breath = {}

	-- BlueMagic Base Set For Any Non Listed Blue Magic --
	sets.Midcast['Blue Magic'] = {}

	-- Charged Whisker --
	sets.Midcast['Charged Whisker'] = set_combine(sets.Midcast.MagicalBlueMagic,{})
end

function pretarget(spell,action)
	if (spell.type:endswith('Magic') or spell.type == "Ninjutsu") and buffactive.silence then -- Auto Use Echo Drops If You Are Silenced --
		cancel_spell()
		send_command('input /item "Echo Drops" <me>')
	elseif spell.english == "Berserk" and buffactive.Berserk then -- Change Berserk To Aggressor If Berserk Is On --
		cancel_spell()
		send_command('Aggressor')
    	elseif BlueMagic_Unbridled:contains(spell.english) and not buffactive['Unbridled Learning'] then
		if windower.ffxi.get_ability_recasts()[81] < 1 and not buffactive.amnesia and not buffactive.charm then -- Auto Use Unbridled Learning When You Cast One of The Unbridled Spells.
			cancel_spell()
			send_command('input /ja "Unbridled Learning" <me>;wait 1.5;input /ma "'..spell.english..'" '..spell.target.name)
		end
	elseif spell.english:ifind("Cure") and player.mp<actualCost(spell.mp_cost) then
		degrade_spell(spell,Cure_Spells)
	elseif spell.english:ifind("Curaga") and player.mp<actualCost(spell.mp_cost) then
		degrade_spell(spell,Curaga_Spells)
	elseif spell.type == "WeaponSkill" and spell.target.distance > target_distance and player.status == 'Engaged' then -- Cancel WS If You Are Out Of Range --
		cancel_spell()
		add_to_chat(123, spell.name..' Canceled: [Out of Range]')
		return
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
			if equipSet[AccArray[AccIndex]] then
				equipSet = equipSet[AccArray[AccIndex]]
			end
			if spell.english == "Chant du Cygne" and player.tp > 2999 then
				equipSet = set_combine(equipSet,{ear2="Mache Earring +1"})
			end
			equip(equipSet)
		end
	elseif spell.type == "JobAbility" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		end
	elseif spell.type:endswith('Magic') or spell.type == "Ninjutsu" then
		if buffactive.silence or spell.target.distance > 16+target_distance then -- Cancel Magic or Ninjutsu If You Are Silenced or Out of Range --
			cancel_spell()
			add_to_chat(123, spell.name..' Canceled: [Silenced or Out of Casting Range]')
			return
		else
			if string.find(spell.english,'Utsusemi') then
				if buffactive['Copy Image (3)'] or buffactive['Copy Image (4)'] then
					cancel_spell()
					add_to_chat(123, spell.english .. ' Canceled: [3+ Images]')
					return
				else
					equip(sets.Precast.Utsusemi)
				end
			elseif sets.Precast[spell.skill] then
				equip(sets.Precast[spell.skill])
			else
				equip(sets.Precast.FastCast)
			end
		end
	elseif spell.type == "Waltz" then
		equip(sets.Waltz)
	elseif spell.type == "Step" then
		equip(sets.Step)
	elseif spell.type == "Swipe" then
		equip(sets.Swipe)
	elseif spell.type == "Lunge" then
		equip(sets.Swipe)
	elseif spell.type == "Flourish" then
		equip(sets.Flourish)
	elseif spell.english == 'Spectral Jig' and buffactive.Sneak then
		cast_delay(0.2)
		send_command('cancel Sneak')
	end
end

function midcast(spell,action)
	equipSet = {}
	if spell.type:endswith('Magic') or spell.type == 'Ninjutsu' then
		equipSet = sets.Midcast
		if equipSet[spell.english] then
			equipSet = equipSet[spell.english]
		elseif (string.find(spell.english,'Cursna') or BlueMagic_Healing:contains(spell.english)) and spell.english ~= "Cursna" then
			if string.find(spell.english,'Cure') or BlueMagic_Healing:contains(spell.english) then
				equipSet = equipSet.Cure
		elseif spell.skill == 'Elemental Magic' and MagicBurst == 'ON' then
			equipSet = set_combine(equipSet,sets.MB)
			elseif string.find(spell.english,'Cura') then
				equipSet = equipSet.Curaga
			end
      
			
		elseif PhysicalBlueMagic:contains(spell.english) or PhysicalBlueMagic_STR:contains(spell.english) or PhysicalBlueMagic_STRAcc:contains(spell.english) or PhysicalBlueMagic_DEX:contains(spell.english) or PhysicalBlueMagic_VIT:contains(spell.english) or PhysicalBlueMagic_AGI:contains(spell.english) then
			if PhysicalBlueMagic_STR:contains(spell.english) then
				equipSet = equipSet.PhysicalBlueMagic_STR
			elseif PhysicalBlueMagic_DEX:contains(spell.english) then
				equipSet = equipSet.PhysicalBlueMagic_DEX
			elseif PhysicalBlueMagic_STRAcc:contains(spell.english) then
				equipSet = equipSet.PhysicalBlueMagic_STRAcc
			elseif PhysicalBlueMagic_VIT:contains(spell.english) then
				equipSet = equipSet.PhysicalBlueMagic_VIT
			elseif PhysicalBlueMagic_AGI:contains(spell.english) then
				equipSet = equipSet.PhysicalBlueMagic_AGI
			elseif PhysicalBlueMagic:contains(spell.english) then
				equipSet = equipSet.PhysicalBlueMagic
			end
			if buffactive['Chain Affinity'] then
				equipSet = set_combine(equipSet,{feet="Assim. charuqs +1",head="Hashishin Kavuk +1"})
			end
			if buffactive.Efflux then
				equipSet = set_combine(equipSet,{back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}},legs="Hashishin Tayt +1"})
			end
		elseif MagicalBlueMagic:contains(spell.english) or spell.english == "Charged Whisker" then
			if MagicalBlueMagic:contains(spell.english) then
				equipSet = equipSet.MagicalBlueMagic
			elseif spell.english == "Charged Whisker" then
				equipSet = equipSet[spell.name]
			end
			if buffactive['Burst Affinity'] then
				equipSet = set_combine(equipSet,{"Jhakri Pigaches +1"})
			end
			if buffactive.Convergence then
				equipSet = set_combine(equipSet,{head="Mirage Keffiyeh +2"})
			end
		equipSet = (MagicBurst and equipSet['MagicBurst']) and equipSet['MagicBurst'] or equipSet
        elseif BlueMagic_DarkNuke:contains(spell.english) then
		equipSet = equipSet.BlueMagic_DarkNuke
		equipSet = (MagicBurst and equipSet['MagicBurst']) and equipSet['MagicBurst'] or equipSet
		elseif BlueMagic_EarthNuke:contains(spell.english) then
		equipSet = equipSet.BlueMagic_EarthNuke
		equipSet = (MagicBurst and equipSet['MagicBurst']) and equipSet['MagicBurst'] or equipSet
		elseif BlueMagic_Accuracy:contains(spell.english) then
			equipSet = equipSet.BlueMagic_Accuracy
		elseif BlueMagic_Accuracy:contains(spell.english) then
			equipSet = equipSet.BlueMagic_Accuracy
		elseif BlueMagic_Stun:contains(spell.english) then
			equipSet = equipSet.BlueMagic_Stun
		elseif BlueMagic_WWind:contains(spell.english) then
			equipSet = equipSet.BlueMagic_WWind
		elseif BlueMagic_Buff:contains(spell.english) then
			equipSet = equipSet.BlueMagic_Buff
		elseif BlueMagic_Dark:contains(spell.english) then
			equipSet = equipSet.BlueMagic_Dark
		elseif BlueMagic_Refresh:contains(spell.english) then
			equipSet = equipSet.BlueMagic_Refresh
		elseif BlueMagic_Diffusion:contains(spell.english) and buffactive.Diffusion then
			equipSet = set_combine(equipSet,{feet="Luhlaza Charuqs +1"})
		elseif BlueMagic_Breath:contains(spell.english) then
			equipSet = equipSet.BlueMagic_Breath
		elseif spell.english == "Stoneskin" then
			if buffactive.Stoneskin then
				send_command('@wait 2.8;cancel stoneskin')
			end
			equipSet = equipSet.Stoneskin
		elseif spell.english == "Cursna" then
			equipSet = equipSet.Cursna
		elseif spell.english == "Sneak" then
			if spell.target.name == player.name and buffactive['Sneak'] then
				send_command('cancel sneak')
			end
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
		elseif equipSet[spell.skill] then
			equipSet = equipSet[spell.skill]
		end
    
	end
if (spell.skill == 'Elemental Magic' or 'Blue Magic' or string.find(spell.english,'Cur') or string.find(spell.english,'Bio') or string.find(spell.english,'Dia')) and not Non_Obi_Spells:contains(spell.english) and (world.day_element == spell.element or world.weather_element == spell.element) and sets.Obi[spell.element] and Obi == 'ON' then -- Use Obi Toggle To Equip Normal Waist Gear --
				equipSet = set_combine(equipSet,sets.Obi[spell.element])
	elseif equipSet[spell.english] then
		equipSet = equipSet[spell.english]
	end
	equip(equipSet)
end

function aftercast(spell,action)
	if spell.type == "WeaponSkill" and not spell.interrupted then
		send_command('wait 0.2;gs c TP')
	end
	status_change(player.status)
end

function status_change(new,old)
	if Armor == 'PDT' then
		equip(sets.PDT)
	elseif Armor == 'MDT' then
		equip(sets.MDT)
	elseif new == 'Engaged' then
		equipSet = sets.TP
		if Armor == 'Hybrid' and equipSet["Hybrid"] then
			equipSet = equipSet["Hybrid"]
		end
		if equipSet[AccArray[AccIndex]] then
			equipSet = equipSet[AccArray[AccIndex]]
		end
		if buffactive.March == 2 or buffactive.March == 1 or buffactive[580] or buffactive['Mighty Guard'] and (buffactive.Embrava or buffactive.Haste) and equipSet["HighHaste"] then
			equipSet = equipSet["HighHaste"]
		end
		if TH == 'ON' then -- Use TH Toggle To Lock Full TH Set --
			equipSet = set_combine(equipSet,sets.TP.TH)
		end
		equip(equipSet)
	else
	equipSet = sets.Idle
                if equipSet[IdleArray[IdleIndex]] then
                        equipSet = equipSet[IdleArray[IdleIndex]]
                end
                if buffactive['Reive Mark'] then -- Equip Ygnas's Resolve +1 During Reive --
                        equipSet = set_combine(equipSet,{neck="Ygnas's Resolve +1"})
                end
                if world.time >= (7*60) and world.time <= (17*60) then -- Equip Lycopodium Sash From Dusk To Dawn --
                        equipSet = set_combine(equipSet,{waist="Lycopodium Sash"})
                end
                if world.area:endswith('Adoulin') then
                        equipSet = set_combine(equipSet,{body="Councilor's Garb"})
                end
                equip(equipSet)
				end
	
	if new == 'Resting' then
		equip(sets.Resting)
	end
end

function buff_change(buff,gain)
	buff = string.lower(buff)
	if buff == "aftermath: lv.3" then -- AM3 Timer/Countdown --
		if gain then
			send_command('timers create "Aftermath: Lv.3" 180 down;wait 120;input /echo Aftermath: Lv.3 [WEARING OFF IN 60 SEC.];wait 30;input /echo Aftermath: Lv.3 [WEARING OFF IN 30 SEC.];wait 20;input /echo Aftermath: Lv.3 [WEARING OFF IN 10 SEC.]')
		else
			send_command('timers delete "Aftermath: Lv.3"')
			add_to_chat(123,'AM3: [OFF]')
		end
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
	if command == 'C1' then -- Accuracy Level Toggle --
		AccIndex = (AccIndex % #AccArray) + 1
		add_to_chat(158,'Accuracy Level: ' .. AccArray[AccIndex])
		status_change(player.status)
	elseif command == 'C5' then -- Auto Update Gear Toggle --
		status_change(player.status)
		add_to_chat(158,'Auto Update Gear')
	elseif command == 'C3' then -- Obi Toggle --
                if Obi == 'ON' then
                        Obi = 'OFF'
                        add_to_chat(123,'Obi: [OFF]')
                else
                        Obi = 'ON'
                        add_to_chat(158,'Obi: [ON]')
                end
	 elseif command == 'C2' then -- Magic Burst Toggle --
        MagicBurst = not MagicBurst
                add_to_chat(158,'Magic Burst: ' .. (MagicBurst and '[Activated]' or '[Deactivated]'))
	elseif command == 'C7' then -- PDT Toggle --
		if Armor == 'PDT' then
			Armor = 'None'
			add_to_chat(123,'PDT Set: [Unlocked]')
		else
			Armor = 'PDT'
			add_to_chat(158,'PDT Set: [Locked]')
		end
		status_change(player.status)
	elseif command == 'C9' then -- Full TH Set Toggle --
		if TH == 'ON' then
			TH = 'OFF'
			add_to_chat(123,'Full TH Set: [Unlocked]')
		else
			TH = 'ON'
			add_to_chat(158,'Full TH Set: [Locked]')
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
	if player.sub_job == 'WAR' then
		set_macro_page(10, 16)
	elseif player.sub_job == 'RDM' then
		set_macro_page(10, 16)
	elseif player.sub_job == 'WHM' then
		set_macro_page(10, 16)
	elseif player.sub_job == 'NIN' then
		set_macro_page(10, 16)
	elseif player.sub_job == 'DNC' then
		set_macro_page(10, 16)
	elseif player.sub_job == 'THF' then
		set_macro_page(10, 16)
	elseif player.sub_job == 'RUN' then
		set_macro_page(10, 16)
	elseif player.sub_job == 'SCH' then
		set_macro_page(10, 16)	
	elseif player.sub_job == 'BLM' then
		set_macro_page(10, 16)
	else
		set_macro_page(10, 16)
	end
end	