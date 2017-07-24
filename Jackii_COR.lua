

function get_sets()
	AccIndex = 1
	AccArray = {"LowACC","MidACC","HighACC"} -- 3 Levels Of Accuracy Sets For TP/WS/Hybrid. Default ACC Set Is LowACC. The First TP Set Of Your Main Weapon Is LowACC. Add More ACC Sets If Needed Then Create Your New ACC Below --
	WeaponIndex = 1
	WeaponArray = {"Fettering Blade","Sandung"} -- Default Sub Weapon Is Fettering Blade. Can Delete Any Weapons/Sets That You Don't Need Or Replace/Add The New Weapons That You Want To Use. --
	IdleIndex = 1
	IdleArray = {"Movement","Regen"} -- Default Idle Set Is Movement --
	TH = 'ON' -- Set Default Full TH ON or OFF Here --
	target_distance = 6 -- Set Default Distance Here --
	select_default_macro_book() -- Change Default Macro Book At The End --

	sc_map = {SC1="Exenterator", SC2="HasteSamba", SC3="Ranged"} -- 3 Additional Binds. Can Change Whatever JA/WS/Spells You Like Here. Remember Not To Use Spaces. --
	
		-- JA Sets --
	sets.JA = {}
	sets.JA['Random Deal'] = {body="Lanun Frac +1"}
	sets.JA['Wild Card'] = {feet="Lanun Bottes +1"}
	sets.JA['Snake Eye'] = {legs="Lanun Culottes +1"}
	sets.JA['Fold'] = {hands="Lanun Gants +1"}
	sets.JA['Triple Shot'] = {body="Chasseur's Frac +1"}
	sets.JA['Phantom Roll'] = {head="Lanun Tricorne +1",hands="Chasseur's Gants +1",legs="Desultor Tassets",neck="Regal Necklace",back="Camulus's Mantle"}
	sets.JA['Double-Up'] = {head="Lanun Tricorne +1",hands="Chasseur's Gants +1",legs="Desultor Tassets",neck="Regal Necklace",back="Camulus's Mantle"}
	sets.JA['Tactician\'s Roll'] ={head="Lanun Tricorne +1",body="Chasseur's Frac +1",hands="Chasseur's Gants +1",legs="Desultor Tassets",neck="Regal Necklace",back="Camulus's Mantle"}
	sets.JA['Courser\'s Roll'] = {head="Lanun Tricorne +1",hands="Chasseur's Gants +1",legs="Desultor Tassets",feet="Chasseur's Bottes +1",neck="Regal Necklace",back="Camulus's Mantle"}
	sets.JA['Blitzer\'s Roll'] = {head="Chasseur's Tricorne +1",hands="Chasseur's Gants +1",neck="Regal Necklace",back="Camulus's Mantle"}
	sets.JA['Caster\'s Roll'] = {head="Lanun Tricorne +1",hands="Chasseur's Gants +1",legs="Chasseur's Culottes +1",neck="Regal Necklace",back="Camulus's Mantle"}

	-- Idle/Town Sets --
	sets.Idle = {}
	sets.Idle.Regen = {
			head="Oce. Headpiece +1",
			neck="Bathy Choker +1",
			ear1="Infused Earring",
			ear2="Etiolation Earring",
			ring1="Defending Ring",
			ring2="Sheltered Ring",
			back="Solemnity Cape",
			waist="Flume Belt"}
	sets.Idle.Regen.FetteringBlade = set_combine(sets.Idle.Regen,{})
	sets.Idle.Regen.Sandung = set_combine(sets.Idle.Regen,{})

	sets.Idle.Movement = set_combine(sets.Idle.Regen,{
			ammo="Chrono Bullet",
			head="Iuitl Headgear +1",
			neck="Loricate Torque +1",
			ear1="Genmei Earring",
			ear2="Etiolation Earring",
			body="Mekosu. Harness",
			hands={ name="Herculean Gloves", augments={'Accuracy+20 Attack+20','Damage taken-2%','Accuracy+6','Attack+7',}},
			ring1="Defending Ring",
			ring2={ name="Dark Ring", augments={'Phys. dmg. taken -4%','Magic dmg. taken -6%',}},
			back="Moonbeam Cape",
			waist="Flume Belt",
			legs="Carmine Cuisses +1",
			feet="Lanun bottes +1"})
	sets.Idle.Movement.FetteringBlade = set_combine(sets.Idle.Movement,{})
	sets.Idle.Movement.Sandung = set_combine(sets.Idle.Movement,{})

	-- Preshot --
	sets.Preshot = { --Snapshot cap is 70% (Currently +33)
			body="Oshosi Vest", -- Snapshot +12
			head="Chass. Tricorne +1",
			hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}}, -- Snapshot +8
			legs="Laksa. Trews +2", -- Snapshot +8
			feet="Meg. Jam. +2", -- Snapshot +10
			waist="Impulse Belt", -- Snapshot +3
			}
			
	-- Normal TP Sets --
	sets.TP = {  -- Ninja sub is DW3 with 25% DW, with haste you need 42 DW to cap
			ammo="Chrono Bullet",
			head="Taeon Chapeau", -- DW +5
			neck="Asperity Necklace",
			ear1="Cessance Earring",
			ear2="Suppanomimi", -- DW +5
			body="Adhemar Jacket",  -- DW +5
			hands="Adhemar Wristbands",
			ring1="Epona's ring",
			ring2="Petrov Ring",
			back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10',}}, -- DW +10
			waist="Reiki Yotai", -- DW +7
			legs="Samnuha Tights",
			feet="Taeon Boots" -- DW +9
			}
	sets.TP.MidACC = set_combine(sets.TP,{
			head="Adhemar Bonnet",
			neck="Combatant's Torque",
			ring2="Ramuh Ring +1"})
	sets.TP.HighACC = set_combine(sets.TP.MidACC,{
			head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
			body={ name="Herculean Vest", augments={'Attack+21','"Triple Atk."+4','Accuracy+15',}},
			legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
			feet={ name="Herculean Boots", augments={'Accuracy+15 Attack+15','"Triple Atk."+4','DEX+7','Attack+3',}},
			waist="Olseni Belt",
			ear1="Telos Earring",
			ear2="Zennaroi Earring",
			ring1="Cacoethic Ring +1",
			})
			

	-- March x2 + Haste --
	sets.TP.MidHaste = set_combine(sets.TP,{
			head="Adhemar Bonnet",
			neck="Iskur Gorget",
			ear2="Dedition Earring",
			body={ name="Herculean Vest", augments={'Attack+21','"Triple Atk."+4','Accuracy+15',}},
			feet={ name="Herculean Boots", augments={'Accuracy+15 Attack+15','"Triple Atk."+4','DEX+7','Attack+3',}},})
	sets.TP.MidACC.MidHaste = set_combine(sets.TP.MidHaste,{
			neck="Combatant's Torque",
			ring2="Ramuh Ring +1"})
	sets.TP.HighACC.MidHaste = set_combine(sets.TP.MidACC.MidHaste,{
			head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
			legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
			waist="Olseni Belt",
			ear1="Telos Earring",
			ear2="Zennaroi Earring",
			ring1="Cacoethic Ring +1",
			})

	-- March x2 + Haste + Samba --
	sets.TP.HighHaste = set_combine(sets.TP.MidHaste,{})
	sets.TP.MidACC.HighHaste = set_combine(sets.TP.HighHaste,{
			neck="Combatant's Torque",
			ring2="Ramuh Ring +1"})
	sets.TP.HighACC.HighHaste = set_combine(sets.TP.MidACC.HighHaste,{
			head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
			legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
			waist="Olseni Belt",
			ear1="Telos Earring",
			ear2="Zennaroi Earring",
			ring1="Cacoethic Ring +1",
			})

	-- Full TH TP Set --

	sets.TP.RangedTH = {
			head="Meghanada Visor +1",
			body="Oshosi Vest",
			hands={ name="Adhemar Wristbands", augments={'DEX+10','AGI+10','Accuracy+15',}},
			legs="Laksa. Trews +2",
			feet="Meg. Jam. +2",
			neck="Iskur Gorget",
			waist="Kwahu Kachina Belt",
			ear1="Enervating Earring",
			ear2="Telos Earring",
			ring1="Regal Ring",
			ring2="Ilabrat Ring",
			back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
			}
			
	sets.TP.StepsTH = set_combine(sets.TP.MidACC,{
			head={ name="Herculean Helm", augments={'"Store TP"+1','"Dbl.Atk."+2','"Treasure Hunter"+2','Accuracy+10 Attack+10','Mag. Acc.+3 "Mag.Atk.Bns."+3',}},
			hands={ name="Herculean Gloves", augments={'DEX+10','INT+7','"Treasure Hunter"+2',}},
			})
			

	-- PDT/MDT Sets --
	sets.PDT = {
			main="Fettering Blade",sub="",ammo="Chrono Bullet",
			head={ name="Herculean Helm", augments={'Accuracy+25 Attack+25','Damage taken-2%','DEX+6','Attack+10',}},
			neck="Loricate Torque +1",
			ear1="Genmei earring",
			ear2="Etiolation earring", 
			body={ name="Herculean Vest", augments={'Accuracy+19','Damage taken-3%','STR+5','Attack+11',}},
			hands={ name="Herculean Gloves", augments={'Accuracy+20 Attack+20','Damage taken-2%','Accuracy+6','Attack+7',}},
			ring1="Defending ring",
			ring2={ name="Dark Ring", augments={'Phys. dmg. taken -4%','Magic dmg. taken -6%',}},
			back="Moonbeam Cape",
			waist="Flume Belt",
			legs="Mummu Kecks +1",
			feet={ name="Herculean Boots", augments={'Accuracy+23 Attack+23','Damage taken-2%','DEX+5','Attack+6',}},
			}

	sets.MDT = set_combine(sets.PDT,{
			ear2="Etiolation Earring",
			})

	-- Hybrid/Evasion Sets --
	sets.TP.Hybrid = set_combine(sets.PDT,{})
	sets.TP.Hybrid.MidACC = set_combine(sets.TP.Hybrid,{})
	sets.TP.Hybrid.HighACC = set_combine(sets.TP.Hybrid.MidACC,{})

	sets.Evasion = set_combine(sets.PDT,{})

	-- WS Base Set --
	sets.WS = {}

	-- WS Sets --
	
	-- Melee Weapon Skills --
	sets.WS.Requiescat = {
			head={ name="Herculean Helm", augments={'Attack+27','Weapon skill damage +4%','Accuracy+14',}},
			neck="Fotia Gorget",
			ear1="Moonshade Earring",
			ear2="Brutal Earring",
			body={ name="Herculean Vest", augments={'Accuracy+15 Attack+15','Weapon skill damage +4%','STR+4','Accuracy+8',}},
			hands="Meg. Gloves +2",
			ring1="Epona's ring",
			ring2="Regal ring",
			back={ name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
			waist="Grunfeld Rope",
			legs={ name="Herculean Trousers", augments={'Weapon skill damage +2%','DEX+9','Accuracy+12','Attack+10',}},
			feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','Weapon skill damage +3%','STR+5','Accuracy+13',}},
			}

	sets.WS["Savage Blade"] = {
			head={ name="Herculean Helm", augments={'Attack+27','Weapon skill damage +4%','Accuracy+14',}},
			neck="Caro Necklace",
			ear2="Ishvara Earring",
			ear1="Moonshade Earring",
			body={ name="Herculean Vest", augments={'Accuracy+15 Attack+15','Weapon skill damage +4%','STR+4','Accuracy+8',}},
			hands="Meg. Gloves +2",
			ring1="Epona's Ring",
			ring2="Shukuyu Ring",
			back={ name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
			waist="Fotia Belt",
			legs={ name="Herculean Trousers", augments={'Weapon skill damage +2%','DEX+9','Accuracy+12','Attack+10',}},
			feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','Weapon skill damage +3%','STR+5','Accuracy+13',}},
			}

	sets.WS.Exenterator = {
			head="Adhemar Bonnet",
			neck="Fotia Gorget",
			ear2="Brutal Earring",
			ear1="Cessance Earring",
			body={ name="Herculean Vest", augments={'Attack+21','"Triple Atk."+4','Accuracy+15',}},
			hands="Adhemar wristbands",
			ring1="Epona's ring",
			ring2="Hetairoi ring",
			back={ name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
			waist="Fotia Belt",
			legs="Samnuha Tights",
			feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','Weapon skill damage +3%','STR+5','Accuracy+13',}},
			}

	sets.WS.Evisceration = {
			head="Adhemar Bonnet",
			neck="Fotia Gorget",
			ear2="Brutal Earring",
			ear1="Moonshade Earring",
			body="Abnoba Kaftan",
			hands="Meg. Gloves +2",
			ring1="Hetairoi Ring",
			feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','Weapon skill damage +3%','STR+5','Accuracy+13',}},
			ring2="Ramuh Ring +1",
			waist="Fotia Belt",
			legs="Samnuha Tights",
			back={ name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
			}
			
	-- Ranged Weapon Skills --
	sets.WS["Last Stand"] = {
			ammo="Chrono Bullet",
			head="Chass. Tricorne +1",
			neck="Fotia Gorget",
			ear1="Enervating Earring",
			ear2="Moonshade Earring",
			body="Meg. Cuirie +2",
			hands="Meg. Gloves +2",
			ring1="Garuda Ring +1",
			ring2="Garuda Ring +1",
			back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
			waist="Fotia Belt",
			legs={ name="Herculean Trousers", augments={'Rng.Acc.+23 Rng.Atk.+23','Enmity-3','DEX+4','Rng.Acc.+5','Rng.Atk.+7',}},
			feet={ name="Herculean Boots", augments={'Rng.Acc.+21 Rng.Atk.+21','Enmity-2','STR+1','Rng.Acc.+9','Rng.Atk.+11',}},
			}

	sets.WS.Detonator = {
			ammo="Chrono Bullet",
			head="Chass. Tricorne +1",
			neck="Fotia Gorget",
			ear1="Enervating Earring",
			ear2="Moonshade Earring",
			body="Meg. Cuirie +2",
			hands="Meg. Gloves +2",
			ring1="Garuda Ring +1",
			ring2="Garuda Ring +1",
			back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
			waist="Fotia Belt",
			legs={ name="Herculean Trousers", augments={'Rng.Acc.+23 Rng.Atk.+23','Enmity-3','DEX+4','Rng.Acc.+5','Rng.Atk.+7',}},
			feet={ name="Herculean Boots", augments={'Rng.Acc.+21 Rng.Atk.+21','Enmity-2','STR+1','Rng.Acc.+9','Rng.Atk.+11',}},
			}
			
	sets.WS["Leaden Salute"] = {
			ammo="Orichalcum Bullet",
			head="Pixie Hairpin +1",
			neck="Baetyl Pendant",
			ear1="Moonshade Earring",
			ear2="Friomisi earring",    
			body="Carm. Sc. Mail +1",
			hands="Carmine Fin. Ga. +1",
			ring1="Archon Ring",
			ring2="Dingir Ring",
			back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
			waist="Eschan stone",
			legs={ name="Herculean Trousers", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +3%','MND+9','Mag. Acc.+9',}},
			feet={ name="Herculean Boots", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +2%','INT+9','Mag. Acc.+11','"Mag.Atk.Bns."+11',}},
			}
			
	sets.WS["Wildfire"] = {
			ammo="Orichalcum Bullet",
			head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Enmity-1','INT+8','Mag. Acc.+13','"Mag.Atk.Bns."+7',}},
			neck="Baetyl Pendant",
			ear1="Crematio earring",
			ear2="Friomisi earring",    
			body="Carm. Sc. Mail +1",
			hands="Carmine Fin. Ga. +1",
			ring1="Garuda Ring +1",
			ring2="Dingir Ring",
			back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
			waist="Eschan stone",
			legs={ name="Herculean Trousers", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +3%','MND+9','Mag. Acc.+9',}},
			feet={ name="Herculean Boots", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +2%','INT+9','Mag. Acc.+11','"Mag.Atk.Bns."+11',}},
			}

	-- Step Set --
	sets.Step = set_combine({},sets.TP.StepsTH)

	-- Flourish Set --
	sets.Flourish = set_combine({},sets.TP.StepsTH)

	-- Waltz Set --
	sets.Waltz = {}

	sets.Precast = {}
	-- Fastcast Set --
	sets.Precast.FastCast = {
			head="Carmine Mask +1", --14% FC
			neck="Orunmila's Torque", --5% FC
			ear1="Loquac. Earring", --2% FC
			ear2="Enchntr. Earring +1", --2% FC
			body="Dread Jupon", --7% FC
			hands="Leyline Gloves", --8% FC
			ring1="Kishar Ring", --4% FC
			ring2="Lebeche Ring", -- +2% QM
			--back="Perimede Cape", -- +4% QM
			--waist="Witful Belt", --3% FC +3% QM
		    feet="Carmine Greaves +1" --8% FC
			}
	-- Utsusemi Precast Set --
	sets.Precast.Utsusemi = set_combine(sets.Precast.FastCast,{
			--neck="Magoraga Beads"
			})

	sets.Midcast = {}
	
	sets.Midcast['Elemental Magic'] = {
	        ammo="Pemphredo Tathlum",
			head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Fast Cast"+5','MND+11','"Mag.Atk.Bns."+11',}},
			neck="Sanctity Necklace",
			ear1="Crematio Earring",
            ear2="Friomisi Earring",
            body={ name="Samnuha Coat", augments={'Mag. Acc.+10','"Mag.Atk.Bns."+9','"Fast Cast"+2',}},
            hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
			ring1="Shiva Ring +1",
            ring2="Shiva Ring +1",
			back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
			waist="Eschan Stone",
            legs={ name="Herculean Trousers", augments={'Enmity+1','"Cure" potency +8%','"Treasure Hunter"+1','Accuracy+17 Attack+17','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
            feet={ name="Herculean Boots", augments={'Enmity+1','Pet: "Dbl.Atk."+1 Pet: Crit.hit rate +1','Quadruple Attack +3','Accuracy+20 Attack+20','Mag. Acc.+9 "Mag.Atk.Bns."+9',}}}
	-- Magic Haste Set --
	sets.Midcast.Haste = set_combine(sets.PDT,{})
end

function pretarget(spell,action)
	if (spell.type:endswith('Magic') or spell.type == "Ninjutsu") and buffactive.silence then -- Auto Use Echo Drops If You Are Silenced --
		cancel_spell()
		send_command('input /item "Echo Drops" <me>')
	elseif spell.english == "Berserk" and buffactive.Berserk then -- Change Berserk To Aggressor If Berserk Is On --
		cancel_spell()
		send_command('Aggressor')
	elseif (spell.english == 'Ranged' and spell.target.distance > 24.9) or (spell.type == "WeaponSkill" and spell.target.distance > target_distance and player.status == 'Engaged') then -- Cancel Ranged Attack or WS If You Are Out Of Range --
		cancel_spell()
		add_to_chat(123, spell.name..' Canceled: [Out of Range]')
		return
	end
end

function precast(spell,action)
    if spell.english == 'Ranged' then
		equip(sets.Preshot)
	end
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
			if spell.english == "Evisceration" and player.tp > 2999 then -- Equip Jupiter's Pearl When You Have 300 TP --
				equipSet = set_combine(equipSet,{ear1="Mache Earring"})
			end
			equip(equipSet)
		end
	elseif spell.type=="JobAbility" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		end
	elseif spell.type == 'CorsairRoll' or "Double-Up" then
		if Armor == 'Luzaf' then
			sets.JA.Phantom_Roll = set_combine(sets.JA['Phantom Roll'], {ring1="Roller's Ring"})
			equip(sets.JA.Phantom_Roll)
		else
			sets.JA.Phantom_Roll = set_combine(sets.JA['Phantom Roll'], {ring1="Luzaf's Ring"})
			equip(sets.JA.Phantom_Roll)
		end
	elseif spell.type:endswith('Magic') or spell.type == "Ninjutsu" then
		if string.find(spell.english,'Utsusemi') then
			if buffactive['Copy Image (3)'] or buffactive['Copy Image (4)'] then
				cancel_spell()
				add_to_chat(123, spell.name .. ' Canceled: [3+ Images]')
				return
			else
				equip(sets.Precast.Utsusemi)
			end
		else
			equip(sets.Precast.FastCast)
		end
	elseif spell.type == 'Step' then
		equip(sets.Step)
	elseif string.find(spell.type,'Flourish') then
		equip(sets.Flourish)
	elseif spell.type == "Waltz" then
		refine_waltz(spell,action)
		equip(sets.Waltz)
	elseif spell.english == 'Spectral Jig' and buffactive.Sneak then
		cast_delay(0.2)
		send_command('cancel Sneak')
	end
end

function midcast(spell,action)
	if spell.english == 'Ranged' then
		equip(sets.TP.RangedTH)
	if spell.type:endswith('Magic') or spell.type == 'Ninjutsu' then
		equipSet = sets.Midcast
		if equipSet[spell.english] then
			equipSet = equipSet[spell.english]
	
	
			if spell.english == 'Utsusemi: Ichi' and (buffactive['Copy Image'] or buffactive['Copy Image (2)']) then
				send_command('@wait 1.7;cancel Copy Image*')
			end
			
			end
	end
    
	
	end
	
	
end

function aftercast(spell,action)
	if spell.type == "WeaponSkill" and not spell.interrupted then
		send_command('wait 0.2;gs c TP')
	end
	status_change(player.status)
end

function status_change(new,old)
	if player.equipment.range ~= 'empty' then
		disable('range','ammo')
	else
		enable('range','ammo')
	end
	if Armor == 'PDT' then
		equip(sets.PDT)
	elseif Armor == 'MDT' then
		equip(sets.MDT)
	elseif Armor == 'EVA' then
		equip(sets.Evasion)
	elseif new == 'Engaged' then
		equipSet = sets.TP
		if Armor == 'Hybrid' and equipSet["Hybrid"] then
			equipSet = equipSet["Hybrid"]
		end
		if equipSet[AccArray[AccIndex]] then
			equipSet = equipSet[AccArray[AccIndex]]
		end
		if buffactive.March == 2 or buffactive.March == 1 or buffactive[580] and (buffactive.Embrava or buffactive.Haste) and equipSet["HighHaste"] then
			equipSet = equipSet["HighHaste"]
		end
		
		
		
        if buffactive['Reive Mark'] and player.hpp <= 50 then
            equip({neck="Adoulin's Refuge"})
        end
		if TA then
			equipSet = set_combine(equipSet,sets.JA["Trick Attack"])
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
		equip(equipSet)
	end
end

function buff_change(buff,gain)
     buff = string.lower(buff)
        if buff == "sneak attack" and player.status == 'Engaged' and not gain then
                equip(sets.TP)
        elseif buff == "trick attack" and player.status == 'Engaged' and not gain then
                equip(sets.TP)
        elseif buff == 'weakness' then -- Weakness Timer --
                if gain then
                        send_command('timers create "Weakness" 300 up')
                else
                        send_command('timers delete "Weakness"')
                end
        end
        if not midaction() then
                status_change(player.status)
        end
end

-- In Game: //gs c (command), Macro: /console gs c (command), Bind: gs c (command) --
function self_command(command)
	if command == 'C1' then -- Accuracy Level Toggle --
		AccIndex = (AccIndex % #AccArray) + 1
		status_change(player.status)
		add_to_chat(158,'Accuracy Level: ' .. AccArray[AccIndex])
	elseif command == 'C17' then -- Main Weapon Toggle --
		WeaponIndex = (WeaponIndex % #WeaponArray) + 1
		add_to_chat(158,'Main Weapon: '..WeaponArray[WeaponIndex])
		status_change(player.status)
	elseif command == 'C5' then -- Auto Update Gear Toggle --
		status_change(player.status)
		add_to_chat(158,'Auto Update Gear')
	elseif command == 'C2' then -- Luzaf Toggle --
		if Armor == 'Luzaf' then
			Armor = 'None'
			add_to_chat(123,'Luzaf: ON')
		else
			Armor = 'Luzaf'
			add_to_chat(158,'Luzaf: OFF')
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
	elseif command == 'C3' then -- Evasion Toggle --
		if Armor == 'EVA' then
			Armor = 'None'
			add_to_chat(123,'Evasion Set: [Unlocked]')
		else
			Armor = 'EVA'
			add_to_chat(158,'Evasion Set: [Locked]')
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
		status_change(player.status)
		add_to_chat(158,'Idle Set: ' .. IdleArray[IdleIndex])
	elseif command == 'TP' then
		add_to_chat(158,'TP Return: ['..tostring(player.tp)..']')
	elseif command:match('^SC%d$') then
		send_command('//' .. sc_map[command])
	end
end

function check_equip_lock() -- Lock Equipment Here --
	if player.equipment.left_ring == "Warp Ring" or player.equipment.left_ring == "Capacity Ring" or player.equipment.right_ring == "Warp Ring" or player.equipment.right_ring == "Capacity Ring" then
		disable('ring1','ring2')
	elseif player.equipment.back == "Mecisto. Mantle" or player.equipment.back == "Aptitude Mantle +1" or player.equipment.back == "Aptitude Mantle" then
		disable('back')
	else
		enable('ring1','ring2','back')
	end
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
				add_to_chat(123,'Full HP!')
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

	local waltzTPCost = {['Curing Waltz'] = 20, ['Curing Waltz II'] = 35, ['Curing Waltz III'] = 50, ['Curing Waltz IV'] = 65, ['Curing Waltz V'] = 80}
	local tpCost = waltzTPCost[newWaltz]

	local downgrade

	if player.tp < tpCost and not buffactive.trance then

		if player.tp < 200 then
			add_to_chat(123, 'Insufficient TP ['..tostring(player.tp)..']. Cancelling.')
			cancel_spell()
			return
		elseif player.tp < 350 then
			newWaltz = 'Curing Waltz'
		elseif player.tp < 500 then
			newWaltz = 'Curing Waltz II'
		elseif player.tp < 650 then
			newWaltz = 'Curing Waltz III'
		elseif player.tp < 800 then
			newWaltz = 'Curing Waltz IV'
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
	if player.sub_job == 'WAR' then
		set_macro_page(2, 11)
	elseif player.sub_job == 'DNC' then
		set_macro_page(2, 11)
	elseif player.sub_job == 'NIN' then
		set_macro_page(2, 11)
	else
		set_macro_page(2, 11)
	end
end