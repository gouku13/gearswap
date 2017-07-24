

function get_sets()
	AccIndex = 1
	AccArray = {"LowACC","MidACC","HighACC"} -- 3 Levels Of Accuracy Sets For TP/WS/Hybrid. Default ACC Set Is LowACC. The First TP Set Of Your Main Weapon Is LowACC. Add More ACC Sets If Needed Then Create Your New ACC Below --
	WeaponIndex = 1
	WeaponArray = {"Izhiikoh","Sandung"} -- Default Sub Weapon Is Izhiikoh. Can Delete Any Weapons/Sets That You Don't Need Or Replace/Add The New Weapons That You Want To Use. --
	IdleIndex = 1
	IdleArray = {"Movement","Regen"} -- Default Idle Set Is Movement --
	SA = false
	TA = false
	TH = 'ON' -- Set Default Full TH ON or OFF Here --
	Rancor = 'OFF' -- Set Default Rancor ON or OFF Here --
	target_distance = 6 -- Set Default Distance Here --
	select_default_macro_book() -- Change Default Macro Book At The End --

	sc_map = {SC1="Exenterator", SC2="HasteSamba", SC3="Ranged"} -- 3 Additional Binds. Can Change Whatever JA/WS/Spells You Like Here. Remember Not To Use Spaces. --

	-- Idle/Town Sets --
	sets.Idle = {}
	sets.Idle.Regen = {
			ammo="Staunch tathlum",
			head="Oce. Headpiece +1",
			neck="Bathy Choker +1",
			ear1="Infused Earring",
			ear2="Etiolation Earring",
			ring1="Defending Ring",
			ring2="Sheltered Ring",
			back="Solemnity Cape",
			waist="Flume Belt"}
	sets.Idle.Regen.Izhiikoh = set_combine(sets.Idle.Regen,{})
	sets.Idle.Regen.Sandung = set_combine(sets.Idle.Regen,{})

	sets.Idle.Movement = set_combine(sets.Idle.Regen,{
			ammo="Staunch tathlum",
			head="Meghanada Visor +1",
			neck="Loricate Torque +1",
			ear1="Infused Earring",
			ear2="Etiolation Earring",
			body="Mekosu. Harness",
			hands="Meg. Gloves +2",
			ring1="Defending Ring",
		    ring2="Dark Ring",
			back="Solemnity Cape",
			waist="Flume Belt",
			legs="Meg. Chausses +2",
			feet="Jute Boots +1"})
	sets.Idle.Movement.Izhiikoh = set_combine(sets.Idle.Movement,{})
	sets.Idle.Movement.Sandung = set_combine(sets.Idle.Movement,{})

	-- Preshot --
	sets.Preshot = {
			body="Pursuer's Doublet",
			hands="Iuitl Wristbands +1",
			legs="Nahtirah Trousers",
			feet="Meg. Jam. +2"}
			
	-- Normal TP Sets --
	sets.TP = {
	        ammo="Ginsen",
			head="Adhemar Bonnet",
			neck="Erudition Necklace",
			ear1="Cessance Earring",
			ear2="Suppanomimi",
			body="Adhemar Jacket",
			hands="Adhemar Wristbands",
			ring1="Epona's Ring",
			ring2="Petrov Ring",
			back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10',}},
			waist="Reiki Yotai",
			legs="Samnuha Tights",
			feet={ name="Taeon Boots", augments={'Accuracy+20 Attack+20','"Dual Wield"+5','STR+7 DEX+7',}},}
	sets.TP.MidACC = set_combine(sets.TP,{
			head="Dampening Tam",
			neck="Combatant's Torque",
			ring2="Ramuh Ring +1"})
	sets.TP.HighACC = set_combine(sets.TP.MidACC,{
			ammo="Falcon Eye",
			ear2="Digni. Earring",
			body="Adhemar Jacket",
			hands="Meg. Gloves +2",
			ring1="Cacoethic Ring +1",
			waist="Olseni Belt",
			legs="Meg. Chausses +2",
			feet={ name="Herculean Boots", augments={'Accuracy+15 Attack+15','"Triple Atk."+4','DEX+7','Attack+3',}},})
			

	-- March x2 + Haste --
	sets.TP.MidHaste = set_combine(sets.TP,{
			ear2="Dedition Earring",
			body={ name="Herculean Vest", augments={'Attack+21','"Triple Atk."+4','Accuracy+15',}},
			feet={ name="Herculean Boots", augments={'Accuracy+15 Attack+15','"Triple Atk."+4','DEX+7','Attack+3',}},})
	sets.TP.MidACC.MidHaste = set_combine(sets.TP.MidHaste,{
			neck="Combatant's Torque",
			ear2="Brutal Earring",
			body="Adhemar Jacket",
			ring2="Ramuh Ring +1"})
	sets.TP.HighACC.MidHaste = set_combine(sets.TP.MidACC.MidHaste,{
			ammo="Falcon Eye",
			head="Dampening Tam",
			ear2="Digni. Earring",
			hands="Meg. Gloves +2",
			ring1="Cacoethic Ring +1",
			waist="Olseni Belt",
			legs="Meg. Chausses +2",
			feet={ name="Herculean Boots", augments={'Accuracy+15 Attack+15','"Triple Atk."+4','DEX+7','Attack+3',}},})

	-- March x2 + Haste + Samba --
	sets.TP.HighHaste = set_combine(sets.TP.MidHaste,{})
	sets.TP.MidACC.HighHaste = set_combine(sets.TP.HighHaste,{
			neck="Combatant's Torque",
			ear2="Brutal Earring",
			ring2="Ramuh Ring +1"})
	sets.TP.HighACC.HighHaste = set_combine(sets.TP.MidACC.HighHaste,{
			ammo="Falcon Eye",
			head="Dampening Tam",
			ear2="Digni. Earring",
			hands="Meg. Gloves +2",
			ring1="Cacoethic Ring +1",
			waist="Olseni Belt",
			feet="Meg. Jam. +2"})

	-- Full TH TP Set --
	sets.TP.TH = {
			hands="Plun. Armlets +1"}

	sets.TP.RangedTH = {
	        head="Meghanada Visor +1",
			neck="Combatant's Torque",
			ear1="Enervating Earring",
            ear2="Clearview Earring",
            body="Meg. Cuirie +2",
            hands="Meg. Gloves +2",
			ring1="Hajduk Ring",
            ring2="Cacoethic Ring +1",
			back="Quarrel Mantle",
			waist="Elanid Belt",
            legs="Meg. Chausses +2",
            feet="Meg. Jam. +2"}
			
	sets.TP.StepsTH = {
			ammo="Falcon Eye",
	        head="Dampening Tam",
			neck="Combatant's Torque",
			ear1="Heartseaker earring",
			ear2="Zennaroi Earring",
			body="Adhemar Jacket",
			hands="Plun. Armlets +1",
			ring1="Ramuh Ring +1",
			ring2="Cacoethic Ring +1",
			back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10',}},
			waist="Chaac Belt",
			--legs={ name="Herculean Trousers", augments={'Enmity+1','"Cure" potency +8%','"Treasure Hunter"+1','Accuracy+17 Attack+17','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
			feet={ name="Herculean Boots", augments={'Accuracy+15 Attack+15','"Triple Atk."+4','DEX+7','Attack+3',}},}
			
			
	-- TP Rancor ON Neck --
	sets.TP.Rancor = {neck="Rancor Collar"}

	-- PDT/MDT Sets --
	sets.PDT = {
			head={ name="Herculean Helm", augments={'INT+5','Attack+13','Damage taken-4%','Accuracy+2 Attack+2','Mag. Acc.+18 "Mag.Atk.Bns."+18',}},
			neck="Loricate Torque +1",
			ear1="Genmei Earring",
			ear2="Etiolation Ring",
			body="Onca Suit",
			ring1="Dark Ring",
			ring2="Defending Ring",
			back="Solemnity Cape",
			waist="Windbuffet Belt +1"}

	sets.MDT = set_combine(sets.PDT,{
			ear1="Merman's Earring",
			ear2="Etiolation Earring",
			ring1="Shadow Ring",
			waist="Resolute Belt"})

	-- Hybrid/Evasion Sets --
	sets.TP.Hybrid = set_combine(sets.PDT,{
			head={ name="Herculean Helm", augments={'INT+5','Attack+13','Damage taken-4%','Accuracy+2 Attack+2','Mag. Acc.+18 "Mag.Atk.Bns."+18',}},
			neck="Loricate Torque +1",
			ear1="Heartseeker Earring",
			ear2="Dudgeon Earring",
			body="Onca Suit",
			ring1="Dark Ring",
			ring2="Defending Ring",
			back="Mollusca Mantle",
			waist="Windbuffet Belt +1"})
	sets.TP.Hybrid.MidACC = set_combine(sets.TP.Hybrid,{})
	sets.TP.Hybrid.HighACC = set_combine(sets.TP.Hybrid.MidACC,{})

	sets.Evasion = set_combine(sets.PDT,{})

	-- WS Base Set --
	sets.WS = {}

	-- WS Sets --
	sets.WS["Mercy Stroke"] = {
			head="Whirlpool Mask",
			neck="Justiciar's Torque",
			ear1="Steelflash Earring",
			ear2="Bladeborn Earring",
			body="Khepri Jacket",
			hands="Pill. Armlets +1",
			ring1="Epona's Ring",
			ring2="Pyrosoul Ring",
			back="Buquwik Cape",
			waist="Chiner Belt +1",
			legs="Nahtirah Trousers",
			feet="Plun. Poulaines +1"}
	sets.WS["Mercy Stroke"].SA = {
			head="Pill. Bonnet +1",
			neck="Fotia Gorget",
			ear1="Vulcan's Pearl",
			ear2="Vulcan's Pearl",
			body="Pillager's Vest +1",
			hands="Raider's Armlets +2",
			ring1="Pyrosoul Ring",
			ring2="Rajas Ring",
			back="Buquwik Cape",
			waist="Chiner Belt +1",
			legs="Pill. Culottes +1",
			feet="Plun. Poulaines +1"}
	sets.WS["Mercy Stroke"].TA = {
			head="Pill. Bonnet +1",
			neck="Fotia Gorget",
			ear1="Vulcan's Pearl",
			ear2="Vulcan's Pearl",
			body="Pillager's Vest +1",
			hands="Pill. Armlets +1",
			ring1="Pyrosoul Ring",
			ring2="Rajas Ring",
			back="Buquwik Cape",
			waist="Fotia Belt",
			legs="Pill. Culottes +1",
			feet="Plun. Poulaines +1"}

	sets.WS.Exenterator = {
			ammo="Seething Bomblet +1",
			head="Adhemar Bonnet",
			neck="Fotia Gorget",
			ear1="Cessance Earring",
			ear2="Brutal Earring",
			body={ name="Herculean Vest", augments={'Attack+21','"Triple Atk."+4','Accuracy+15',}},
			hands="Adhemar Wristbands",
			ring1="Epona's Ring",
			ring2="Hetairoi Ring",
			back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
			waist="Fotia Belt",
			legs="Samnuha Tights",
			feet={ name="Herculean Boots", augments={'Accuracy+15 Attack+15','"Triple Atk."+4','DEX+7','Attack+3',}},}
	sets.WS.Exenterator.SA = set_combine(sets.WS.Exenterator,{hands="Meg. Gloves +2"})
	sets.WS.Exenterator.TA = set_combine(sets.WS.Exenterator,{hands="Meg. Gloves +2"})

	sets.WS.Evisceration = {
			ammo="Yetshila",
			head="Adhemar Bonnet",
			neck="Fotia Gorget",
			ear1="Brutal Earring",
			ear2="Moonshade Earring",
			body="Abnoba Kaftan",
			hands={ name="Herculean Gloves", augments={'Attack+10','Crit. hit damage +4%','DEX+10','Accuracy+15',}},
			ring1="Hetairoi Ring",
			ring2="Ramuh Ring +1",
			back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
			waist="Fotia Belt",
			legs="Lustratio Subligar +1",
			feet="Lustratio Leggings +1"}
	sets.WS.Evisceration.SA = set_combine(sets.WS.Evisceration,{hands="Meg. Gloves +2"})
	sets.WS.Evisceration.TA = set_combine(sets.WS.Evisceration,{hands="Meg. Gloves +2",})

	sets.WS["Rudra's Storm"] = {
			ammo="Yetshila",
			head="Adhemar Bonnet",
			neck="Caro Necklace",
			ear1="Moonshade Earring",
			ear2="Ishvara Earring",
			body="Meg. Cuirie +2",
			hands="Meg. Gloves +2",
			ring1="Hetairoi Ring",
			ring2="Ramuh Ring +1",
			back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
			waist="Grunfeld Rope",
			legs="Lustratio Subligar +1",
			feet="Lustratio Leggings +1"}
	sets.WS["Rudra's Storm"].SA = set_combine(sets.WS["Rudra's Storm"],{})
	sets.WS["Rudra's Storm"].TA = set_combine(sets.WS["Rudra's Storm"],{hands="Meg. Gloves +2",})
	sets.WS["Aeolian Edge"] = {
	        ammo="Pemphredo Tathlum",
            head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Enmity-1','INT+8','Mag. Acc.+13','"Mag.Atk.Bns."+7',}},
			neck="Sanctity Necklace",
			ear1="Crematio Earring",
            ear2="Friomisi Earring",
            body={ name="Samnuha Coat", augments={'Mag. Acc.+10','"Mag.Atk.Bns."+9','"Fast Cast"+2',}},
            hands={ name="Herculean Gloves", augments={'Mag. Acc.+17 "Mag.Atk.Bns."+17','Weapon skill damage +2%','INT+13','Mag. Acc.+9','"Mag.Atk.Bns."+2',}},
			ring1="Shiva Ring +1",
            ring2="Shiva Ring +1",
			back="Toro Cape",
			waist="Eschan Stone",
			legs={ name="Herculean Trousers", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +3%','MND+9','Mag. Acc.+9',}},
			feet={ name="Herculean Boots", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +2%','INT+9','Mag. Acc.+11','"Mag.Atk.Bns."+11',}}}

	sets.WS["Mandalic Stab"] = {
			ammo="Yetshila",
	        head="Adhemar Bonnet",
			neck="Caro Necklace",
			ear1="Moonshade Earring",
			ear2="Ishvara Earring",
			body="Meg. Cuirie +2",
			hands="Meg. Gloves +2",
			ring1="Hetairoi Ring",
			ring2="Ramuh Ring +1",
			back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
			waist="Grunfeld Rope",
			legs="Lustratio Subligar +1",
			feet="Lustratio Leggings +1"}
	sets.WS["Mandalic Stab"].SA = set_combine(sets.WS["Mandalic Stab"],{hands="Meg. Gloves +2"})
	sets.WS["Mandalic Stab"].TA = set_combine(sets.WS["Mandalic Stab"],{hands="Meg. Gloves +2",})

	-- JA Sets --
	sets.JA = {}
	TH_Gear = {hands="Plun. Armlets +1"}
	sets.JA.Conspirator = {body="Raider's Vest +2"}
	sets.JA.Accomplice = {head="Raid. Bonnet +2"}
	sets.JA.Collaborator = {head="Raid. Bonnet +2"}
	sets.JA["Perfect Dodge"] = {hands="Plun. Armlets +1"}
	sets.JA.Steal = {hands="Pill. Armlets +1",legs="Pill. Culottes +1",feet="Pill. Poulaines +1",ring2="Gorney Ring"}
	sets.JA.Flee = {feet="Pill. Poulaines +1"}
	sets.JA.Despoil = {legs="Raid. Culottes +2",feet="Raid. Poulaines +2"}
	sets.JA.Mug = {head="Plun. Bonnet +1"}
	sets.JA.Hide = {body="Pillager's Vest +1"}
	sets.JA.Provoke = TH_Gear
	

	-- Step Set --
	sets.Step = set_combine({},sets.TP.StepsTH)

	-- Flourish Set --
	sets.Flourish = set_combine({},sets.TP.StepsTH)

	-- Waltz Set --
	sets.Waltz = {
			head="Khepri Bonnet"}

	sets.Precast = {}
	-- Fastcast Set --
	sets.Precast.FastCast = {
			neck="Orunmila's Torque",
			body="Dread Jupon",
			ear1="Loquac. Earring",
			ear2="Enchntr. Earring +1",
			hands="Leyline Gloves",
			ring1="Prolix Ring",
			ring2="Lebeche Ring"}
	-- Utsusemi Precast Set --
	sets.Precast.Utsusemi = set_combine(sets.Precast.FastCast,{neck="Magoraga Beads"})

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
			back="Toro Cape",
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
			if SA and equipSet["SA"] then
				equipSet = equipSet["SA"]
			end
			if TA and equipSet["TA"] then
				equipSet = equipSet["TA"]
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
		if spell.english=="Sneak Attack" then
			SA = true
		end
		if spell.english=="Trick Attack" then
			TA = true
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
		if Rancor == 'ON' then -- Use Rancor Toggle For Rancor Collar --
			equipSet = set_combine(equipSet,sets.TP.Rancor)
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
	elseif command == 'C2' then -- Hybrid Toggle --
		if Armor == 'Hybrid' then
			Armor = 'None'
			add_to_chat(123,'Hybrid Set: [Unlocked]')
		else
			Armor = 'Hybrid'
			add_to_chat(158,'Hybrid Set: '..AccArray[AccIndex])
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
	elseif command == 'C16' then -- Rancor Toggle --
		if Rancor == 'ON' then
			Rancor = 'OFF'
			add_to_chat(123,'Rancor: [OFF]')
		else
			Rancor = 'ON'
			add_to_chat(158,'Rancor: [ON]')
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