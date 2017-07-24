function get_sets()
 
--F9 = Luzaf Ring On/Off--
--F10 = TP Index Toggle--
--F11 = Ranged Attack Index Toggle--
--F12 = Idle Index Toggle--
 
	send_command('bind f9 gs c toggle Luz')
	send_command('bind f10 gs c toggle TP set')
	send_command('bind f11 gs c toggle RA set')
	send_command('bind f12 gs c toggle Idle set')
	send_command('bind ^w gs c warp')
 
--Job Ability Sets--
 
	sets.JA = {}
	sets.JA['Random Deal'] = {body="Lanun Frac +1"}
	sets.JA['Wild Card'] = {feet="Lanun Bottes +1"}
	sets.JA['Snake Eye'] = {legs="Lanun Culottes +1"}
	sets.JA['Fold'] = {hands="Lanun Gants +1"}
	sets.JA['Triple Shot'] = {body="Chasseur's Frac +1"}
	sets.JA['Phantom Roll'] = {head="Lanun Tricorne +1",body="Lanun Frac +1",hands="Chasseur's Gants +1", ring2="Barataria Ring", back="Camulus's Mantle"}
	sets.JA['Double-Up'] = {head="Lanun Tricorne +1",body="Lanun Frac +1",hands="Chasseur's Gants +1", ring2="Barataria Ring", back="Camulus's Mantle"}
	sets.JA['Tactician\'s Roll'] ={head="Lanun Tricorne +1",body="Chasseur's Frac +1",hands="Chasseur's Gants +1",ring2="Barataria Ring",back="Camulus's Mantle"}
	sets.JA['Courser\'s Roll'] = {head="Lanun Tricorne +1",body="Lanun Frac +1",hands="Chasseur's Gants +1",feet="Chasseur's Bottes +1",ring2="Barataria Ring",back="Camulus's Mantle"}
	sets.JA['Blitzer\'s Roll'] = {head="Chasseur's Tricorne +1",body="Lanun Frac +1",hands="Chasseur's Gants +1",ring2="Barataria Ring",back="Camulus's Mantle"}
	sets.JA['Castor\'s Roll'] = {head="Lanun Tricorne +1",body="Lanun Frac +1",hands="Chasseur's Gants +1",legs="Chasseur's Culottes +1",ring2="Barataria Ring",back="Camulus's Mantle"}
 
 
--Luzaf Ring index for Self Command toggle--
 
	sets.Luz = {}
	sets.Luz.index = {'Off','On'}
	Luz_Index = 1
 
	sets.Luz.Off = {ring1="Roller's Ring"}
	sets.Luz.On = {ring1="Luzaf's Ring"}
 
-- Idle sets--
 
	sets.Idle = {}
	sets.Idle.index = {'Reg','PDT','MDT'}
	Idle_Index = 1
 
	sets.Idle.Reg = {
		ammo="Chrono Bullet",
		head="Rawhide Mask",
		neck="Loricate Torque +1",
		ear1="Genmei Earring",
		ear2="Etiolation Earring",
		body="Mekosu. Harness",
		hands={ name="Herculean Gloves", augments={'DEX+10','INT+7','"Treasure Hunter"+2',}},
		ring1="Defending Ring",
		ring2={ name="Dark Ring", augments={'Phys. dmg. taken -4%','Magic dmg. taken -6%',}},
		back="Mecisto. Mantle",
		waist="Flume Belt",
		legs="Carmine Cuisses +1",
		feet="Lanun bottes +1"
	}
 
	sets.Idle.PDT = {
		main="Terra's Staff", 
		sub="Oneiros Grip",
		ammo="Chrono Bullet",
		head="Herculean Helm",
		neck="Loricate Torque +1",
		ear1="Genmei Earring",
		ear2="Colossus's Earring",
		body="Lanun frac +1",
		hands={ name="Herculean Gloves", augments={'DEX+10','INT+7','"Treasure Hunter"+2',}},
		ring1="Defending Ring",
		ring2={ name="Dark Ring", augments={'Phys. dmg. taken -4%','Magic dmg. taken -6%',}},
		back="Mubvum. Mantle",
		waist="Flume Belt",
		legs={ name="Herculean Trousers", augments={'Accuracy+18 Attack+18','Phys. dmg. taken -3%','DEX+14','Accuracy+10','Attack+8',}},
		feet="Lanun bottes +1"
	}
 
	sets.Idle.MDT = {
		ammo="Chrono Bullet",
		head="Lithelimb Cap",
		neck="Loricate Torque +1",
		ear1="Genmei Earring",
		ear2="Etiolation Earring",
		body="Mekosu. Harness",
		hands={ name="Herculean Gloves", augments={'DEX+10','INT+7','"Treasure Hunter"+2',}},
		ring1="Defending Ring",
		ring2={ name="Dark Ring", augments={'Phys. dmg. taken -4%','Magic dmg. taken -6%',}},
		back="Mubvum. Mantle",
		waist="Flume Belt",
		legs="Carmine Cuisses +1",
		feet="Lanun bottes +1"
	}
 
--Melee TP sets--    31 Dual Wield needed /nin
 
	sets.TP = {}
	sets.TP.index = {'Acc','Atk','DT'}
	TP_Index = 1
 
	sets.TP.Acc = {
		main="Fettering Blade", sub="",ammo="Chrono Bullet",
		head="Adhemar Bonnet",
		neck="Combatant's Torque",
		ear1="Cessance earring",
		ear2="Brutal earring", 
		body="Adhemar Jacket",
		hands="Adhemar Wristbands",
		ring1="Epona's ring",
		ring2="Petrov Ring",
		back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10',}},
		waist="Kentarch Belt +1",
		legs="Carmine Cuisses +1",
		feet="Taeon Boots"
	}    
 
	sets.TP.Atk = {
		main="Fettering Blade", sub="",ammo="Chrono Bullet",
		head="Adhemar Bonnet",
		neck="Asperity Necklace",
		ear1="Steelflash earring",
		ear2="Bladeborn earring", 
		body="Adhemar Jacket",
		hands="Adhemar Wristbands",
		ring1="Epona's ring",
		ring2="Petrov Ring",
		back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10',}},
		waist="Kentarch Belt +1",
		legs="Samnuha Tights",
		feet="Taeon Boots"
	}    
 
	sets.TP.DT = {
		main="Fettering Blade",sub="",ammo="Chrono Bullet",
		head="Herculean Helm",
		neck="Wiglen Gorget",
		ear1="Dudgeon earring",
		ear2="Heartseeker earring", 
		body="Emet Harness",
		--hands={ name="Herculean Gloves", augments={'Accuracy+29','Attack+14','"Triple Atk."+2'}},
		ring1="Defending ring",
		ring2="Vertigo Ring",
		back="Mollusca mantle",
		waist="Flume Belt",
		--legs={ name="Herculean Trousers", augments={'CHR+3','Accuracy+14','Attack+19','"Triple Atk."+1'}},
		--feet={ name="Herculean Boots", augments={'DEX+8','Accuracy+28','Attack+10','"Triple Atk.+1"'}},
	}
 
--Ranged TP Sets--
 
	sets.RA = {}
	sets.RA.index = {'Acc','Atk'}
	RA_Index = 1
 
	sets.RA.Acc = {
		ammo="Chrono Bullet",
		--head={ name="Herculean Helm", augments={'Rng.Acc.+21 Rng.Atk.+21','STR+6','Rng.Acc.+9','Rng.Atk.+10'}},
		neck="Marked Gorget", 
		ear1="Enervating Earring", 
		ear2="Volley earring",
		body="Pursuer's Doublet", 
		--hands={ name="Herculean Gloves", augments={'Rng.Acc.+12 Rng.Atk.+12','Crit.hit rate+1','AGI+10','Rng.Acc.+13',}},
		ring1="Adoulin Ring", 
		ring2="Paqichikaji Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
		waist="Eschan stone", 
		legs="Adhemar Kecks", 
		feet={ name="Herculean Boots", augments={'Rng.Acc.+21 Rng.Atk.+21','Enmity-2','STR+1','Rng.Acc.+9','Rng.Atk.+11',}},
	}
 
	sets.RA.Atk = {
		ammo="Chrono Bullet",
		--head={ name="Herculean Helm", augments={'Rng.Acc.+21 Rng.Atk.+21','STR+6','Rng.Acc.+9','Rng.Atk.+10'}},
		neck="Marked Gorget", 
		ear1="Enervating Earring", 
		ear2="Volley earring",
		body="Pursuer's Doublet", 
		--hands={ name="Herculean Gloves", augments={'Rng.Acc.+12 Rng.Atk.+12','Crit.hit rate+1','AGI+10','Rng.Acc.+13',}},
		ring1="Adoulin Ring", 
		ring2="Paqichikaji Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
		waist="Eschan stone", 
		legs="Adhemar Kecks", 
		feet="Carmine Greaves +1",
	}
 
--Snapshot Set--
 
	sets.Snapshot = {}
	sets.Snapshot = {
		body="Lak. Frac +1",
		hands="Lanun gants +1",
		back="Navarch's mantle",
		waist="Impulse belt",
		legs="Adhemar Kecks",
		feet="Iuitl gaiters +1"
	}
 
--Quick Draw--
 
	sets.QD = {}
	sets.QD = {
		ammo="Chrono Bullet",
		head="Blood Mask",
		neck="Sanctity Necklace",
		ear1="Crematio earring",
		ear2="Friomisi earring",    
		body="Carm. Sc. Mail +1",
		hands="Carmine Fin. Ga. +1",
		ring1="Fenrir Ring +1",
		ring2="Fenrir Ring +1",
		back="Gunslinger's cape",
		waist="Eschan stone",
		legs={ name="Herculean Trousers", augments={'Accuracy+18 Attack+18','Phys. dmg. taken -3%','DEX+14','Accuracy+10','Attack+8',}},
		feet="Chasseur's Bottes +1"
	}
 
--Cure Sets--
 
	sets.Cure = {}
	sets.Cure= {
		main="Chatoyant Staff", 
		sub="Dominie's Grip",
		head="Herculean Helm",
		neck="Phalaina Locket",
		ear1="Mendicant's Earring",
		ring1="Lebeche Ring",
		back="Solemnity Cape",
		waist="Acerbic Sash +1",
		legs="Rawhide Trousers"
	}
 
--Weapon Skills Layout--
 
--Requiescat--
 
	sets.Req = {}
	sets.Req = {
		head="Whirlpool mask",
		neck="Breeze Gorget",
		ear1="Moonshade Earring",
		ear2="Brutal Earring",
		body="Rawhide Vest",
		hands="Adhemar wristbands",
		ring1="Epona's ring",
		ring2="Aquasoul ring",
		back="Atheling mantle",
		waist="Eschan stone",
		legs="Samnuha Tights",
		feet={ name="Herculean Boots", augments={'Mag. Acc.+17','Accuracy+22','Accuracy+14 Attack+14',}},
	}
 
--Savage Blade--

	sets.Sav = {}
	sets.Sav ={
		head="Adhemar Bonnet",
		neck="Fotia Gorget",
		ear2="Brutal Earring",
		ear1="Moonshade Earring",
		body="Adhemar Jacket",
		hands="Adhemar wristbands",
		ring1="Epona's Ring",
		feet={ name="Herculean Boots", augments={'Mag. Acc.+17','Accuracy+22','Accuracy+14 Attack+14',}},
		ring2="Shukuyu Ring",
		waist="Fotia Belt",
		legs="Samnuha Tights",
		back="Atheling mantle",
	}
			
--Exenterator--
 
	sets.Exen = {}
	sets.Exen = {
		head="Whirlpool mask",
		neck="Breeze Gorget",
		ear1="Moonshade Earring",
		ear2="Brutal Earring",
		body="Rawhide Vest",
		hands="Adhemar wristbands",
		ring1="Epona's ring",
		ring2="Aquasoul ring",
		back="Atheling mantle",
		waist="Eschan stone",
		legs="Samnuha Tights",
		feet={ name="Herculean Boots", augments={'Mag. Acc.+17','Accuracy+22','Accuracy+14 Attack+14',}},
	}
 
--Last Stand--  
 
	sets.LastS = {}
	sets.LastS = {
		ammo="Chrono Bullet",
		head="Chass. Tricorne +1",
		neck="Fotia Gorget",
		ear1="Clearview Earring",
		ear2="Moonshade Earring",
		body="Pursuer's Doublet",
		hands="Leyline Gloves",
		ring1="Garuda Ring +1",
		ring2="Garuda Ring +1",
		back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
		waist="Fotia Belt",
		legs={ name="Herculean Trousers", augments={'Rng.Acc.+23 Rng.Atk.+23','Enmity-3','DEX+4','Rng.Acc.+5','Rng.Atk.+7',}},
		feet={ name="Herculean Boots", augments={'Rng.Acc.+21 Rng.Atk.+21','Enmity-2','STR+1','Rng.Acc.+9','Rng.Atk.+11',}},
	}
 
--Detonator--
 
	sets.Det = {}
	sets.Det.Reg = {
		ammo="Chrono Bullet",
		head="Pursuer's Beret",
		neck="Marked Gorget",
		ear1="Clearview Earring",
		ear2="Volley Earring",
		body="Pursuer's Doublet",
		hands="Pursuer's Cuffs",
		ring1="Stormsoul Ring",
		ring2="Stormsoul Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
		waist="Fotia Belt",
		legs="Pursuer's Pants",
		feet="Pursuer's Gaiters"
	}
 
--Leaden Salute--
 
	sets.LSalute = {}
	sets.LSalute = {
		ammo="Orichalcum Bullet",
		head="Pixie Hairpin +1",
		neck="Baetyl Pendant",
		ear1="Moonshade Earring",
		ear2="Friomisi earring",    
		body="Carm. Sc. Mail +1",
		hands="Carmine Fin. Ga. +1",
		ring1="Archon Ring",
		ring2="Arvina Ringlet +1",
		back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
		waist="Eschan stone",
		legs={ name="Herculean Trousers", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +3%','MND+9','Mag. Acc.+9',}},
		feet={ name="Herculean Boots", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +2%','INT+9','Mag. Acc.+11','"Mag.Atk.Bns."+11',}},
	}
 
--Wildfire--
 
	sets.WFire = {}
	sets.WFire = {  
		ammo="Orichalcum Bullet",
		head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Enmity-1','INT+8','Mag. Acc.+13','"Mag.Atk.Bns."+7',}},
		neck="Baetyl Pendant",
		ear1="Crematio earring",
		ear2="Friomisi earring",    
		body="Carm. Sc. Mail +1",
		hands="Carmine Fin. Ga. +1",
		ring1="Garuda Ring +1",
		ring2="Arvina Ringlet +1",
		back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
		waist="Eschan stone",
		legs={ name="Herculean Trousers", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +3%','MND+9','Mag. Acc.+9',}},
		feet={ name="Herculean Boots", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +2%','INT+9','Mag. Acc.+11','"Mag.Atk.Bns."+11',}},
	}
	
--Trueflight--
 
	sets.TFlight = {}
	sets.TFlight = {  
		ammo="Orichalcum Bullet",
		head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Enmity-1','INT+8','Mag. Acc.+13','"Mag.Atk.Bns."+7',}},
		neck="Baetyl Pendant",
		ear1="Crematio earring",
		ear2="Friomisi earring",    
		body="Carm. Sc. Mail +1",
		hands="Carmine Fin. Ga. +1",
		ring1="Garuda Ring +1",
		ring2="Arvina Ringlet +1",
		back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
		waist="Eschan stone",
		legs={ name="Herculean Trousers", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +3%','MND+9','Mag. Acc.+9',}},
		feet={ name="Herculean Boots", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +2%','INT+9','Mag. Acc.+11','"Mag.Atk.Bns."+11',}},
	}
 
--Element--
 
	sets.Obi = {}
	sets.Obi.Fire = {waist='Hachirin-no-Obi',ring2='Zodiac Ring'}
	sets.Obi.Earth = {waist='Hachirin-no-Obi',ring2='Zodiac Ring'}
	sets.Obi.Water = {waist='Hachirin-no-Obi',ring2='Zodiac Ring'}
	sets.Obi.Wind = {waist='Hachirin-no-Obi',ring2='Zodiac Ring'}
	sets.Obi.Ice = {waist='Hachirin-no-Obi',ring2='Zodiac Ring'}
	sets.Obi.Thunder = {waist='Hachirin-no-Obi',ring2='Zodiac Ring'}
	sets.Obi.Light = {waist='Hachirin-no-Obi',ring2='Zodiac Ring'}
	sets.Obi.Dark = {waist='Hachirin-no-Obi',ring2='Zodiac Ring'}
end
--Precast Rules--
 
function precast(spell)
 
	if spell.type == 'JobAbility' then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		end
	end
	if spell.type == 'CorsairRoll' or "Double-Up" then
		if Luz_Index == 1 then
			sets.JA.Phantom_Roll = set_combine(sets.JA['Phantom Roll'], {ring1="Roller's Ring"})
			equip(sets.JA.Phantom_Roll)
		else
			sets.JA.Phantom_Roll = set_combine(sets.JA['Phantom Roll'], {ring1="Luzaf's Ring"})
			equip(sets.JA.Phantom_Roll)
		end
	end
	if spell.english == "Random Deal" then
		equip(sets.JA['Random Deal'])
	end
	if spell.english == "Wild Card" then
		equip(sets.JA['Wild Card'])
	end
	if spell.english == "Fold" then
		equip(sets.JA['Fold'])
	end
	if spell.english == "Snake Eye" then
		equip(sets.JA['Snake Eye'])
	end
	if spell.english == "Triple Shot" then
		equip(sets.JA['Triple Shot'])
	end
	if spell.english == "Blitzer's Roll" then
		equip(sets.JA['Blitzer\'s Roll'])
	end
	if spell.english == "Tactician's Roll" then
		equip(sets.JA['Tactician\'s Roll'])
	end
	if spell.english == "Courser's Roll" then
		equip(sets.JA['Courser\'s Roll'])
	end
	if spell.english == "Castor's Roll" then
		equip(sets.JA['Castor\'s Roll'])
	end
	if spell.english == 'Quick Draw' then
			equip(sets.QD)
		if spell.element == world.weather_element or spell.element == world.day_element then
			equip(sets.Obi[spell.element])
		end
	end
	if spell.name == "Ranged" then
		equip(sets.Snapshot)
	end
	if spell.english == "Double-Up" then
		equip(sets.JA['Double-Up'])
	end
	if spell.english == 'Requiescat' then
		equip(sets.Req)
	end
	if spell.english == 'Savage Blade' then
		equip(sets.Sav)
	end
	if spell.english == "Exenterator" then
		equip(sets.Exen)
	end
	if spell.english == 'Last Stand' then
		equip(sets.LastS)   
	end
	if spell.english == 'Detonator' then
		equip(sets.Det) 
	end
	if spell.english == 'Leaden Salute' then
			equip(sets.LSalute)
		if spell.element == world.weather_element or spell.element == world.day_element then
			equip(sets.Obi[spell.element])
		end
	end
	if spell.english == 'Wildfire' then
			equip(sets.WFire)
		if spell.element == world.weather_element or spell.element == world.day_element then
			equip(sets.Obi[spell.element])
		end
	end
	if spell.english == 'Trueflight' then
			equip(sets.TFlight)
		if spell.element == world.weather_element or spell.element == world.day_element then
			equip(sets.Obi[spell.element])
		end
	end
end 
 
--Midcast Functions--
 
 
--Aftercast function--
 
	function aftercast(spell,act)
		if player.status == 'Engaged' then
			equip(sets.TP[sets.TP.index[TP_Index]])
		else
			equip(sets.Idle[sets.Idle.index[Idle_Index]])
		end
		if spell.action_type == 'Weaponskill' then
			add_to_chat(158,'TP Return: ['..tostring(player.tp)..']')
		end
	end
	function status_change(new,old)
		if player.status == ('Idle' or 'Resting') then
			equip(sets.Idle[sets.Idle.index[Idle_Index]])
		elseif new == 'Engaged' then
			equip(sets.TP[sets.TP.index[TP_Index]])
		end
	end
	function self_command(command)
		if command == 'toggle Idle set' then
			Idle_Index = Idle_Index +1
		if Idle_Index > #sets.Idle.index then Idle_Index = 1 end
			send_command('@input /echo >>> Idle Set changed to '..sets.Idle.index[Idle_Index]..' ')
			equip(sets.Idle[sets.Idle.index[Idle_Index]])
		elseif command == 'toggle TP set' then
			TP_Index = TP_Index +1
		if TP_Index > #sets.TP.index then TP_Index = 1 end
			send_command('@input /echo >>> TP Set changed to '..sets.TP.index[TP_Index]..' ')
			equip(sets.TP[sets.TP.index[TP_Index]])
		elseif command == 'toggle RA set' then
			RA_Index = RA_Index +1
		if RA_Index > #sets.RA.index then RA_Index = 1 end
			send_command('@input /echo >>> Ranged TP Set changed to '..sets.RA.index[RA_Index]..' ')
			equip(sets.RA[sets.RA.index[RA_Index]])
		elseif command == 'toggle Luz' then
			Luz_Index = Luz_Index +1
		if Luz_Index > #sets.Luz.index then Luz_Index = 1 end
			send_command('@input /echo >>> Luzaf Ring: '..sets.Luz.index[Luz_Index]..' ')
			equip(sets.Luz[sets.Luz.index[Luz_Index]])
		elseif command == 'warp' then
		if (Warp_Ring_Equipped) then
			send_command("@input /item 'Warp Ring' <me>")
		else
			equip({ring1="Warp Ring"})
			disable('ring1')
			Warp_Ring_Equipped = true
			add_to_chat(121, ' --- Initializing Warp Ring ---')
			send_command('@wait 10; gs c warp')
		end
		end
	end