

function get_sets()
	AccIndex = 1
	AccArray = {"LowACC","MidACC","HighACC"} -- 3 Levels Of Accuracy Sets For TP/WS/Hybrid. Default ACC Set Is LowACC. The First TP Set Of Your Main Weapon Is LowACC. Add More ACC Sets If Needed Then Create Your New ACC Below --
	IdleIndex = 1
	IdleArray = {"Movement","Regen"} -- Default Idle Set Is Movement --
	Armor = 'None'
	Skillchain = false
	TH = 'OFF' -- Set Default Full TH ON or OFF Here --
	target_distance = 6 -- Set Default Distance Here --
	select_default_macro_book() -- Change Default Macro Book At The End --

	sc_map = {SC1="Exenterator", SC2="FeatherStep", SC3="HasteSamba"} -- 3 Additional Binds. Can Change Whatever JA/WS/Spells You Like Here. Remember Not To Use Spaces. --

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
			back="Moonbeam Cape",
			waist="Flume Belt"}
	sets.Idle.Movement = set_combine(sets.Idle.Regen,{
	        ammo="Staunch tathlum",
			head="Meghanada Visor +1",
			neck="Loricate Torque +1",
			ear1="Infused Earring",
			ear2="Etiolation Earring",
			body="Mekosu. Harness",
			hands={ name="Herculean Gloves", augments={'Accuracy+20 Attack+20','Damage taken-2%','Accuracy+6','Attack+7',}},
			ring1="Defending Ring",
		    ring2="Dark Ring",
			back="Moonbeam Cape",
			waist="Flume Belt",
			legs="Meg. Chausses +2",
			feet="Tandava Crackows"})

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
			neck="Anu Torque",
			ear1="Cessance Earring",
			ear2="Sherida Earring",
			body="Adhemar Jacket",
			hands="Adhemar Wristbands",
			ring1="Epona's Ring",
			ring2="Petrov Ring",
			back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10',}},
			waist="Windbuffet Belt +1",
			legs="Samnuha Tights",
			feet={ name="Taeon Boots", augments={'Accuracy+20 Attack+20','"Dual Wield"+5','STR+7 DEX+7',}},}
	sets.TP.MidACC = set_combine(sets.TP,{
			neck="Combatant's Torque",
			ring2="Ramuh Ring +1",
			--ear2="Telos Earring",
			--head="Dampening Tam",
			})
	sets.TP.HighACC = set_combine(sets.TP.MidACC,{
			--head="Dampening Tam",
			ammo="Yamarang",
			ring1="Cacoethic Ring +1",
			ear2="Digni. Earring",
			hands="Meg. Gloves +2",
			legs="Meg. Chausses +2",
			feet={ name="Herculean Boots", augments={'Accuracy+15 Attack+15','"Triple Atk."+4','DEX+7','Attack+3',}},
			waist="Olseni Belt",
			ammo="Falcon Eye"})

	-- March x2 + Haste --
	sets.TP.MidHaste = set_combine(sets.TP,{
			body={ name="Herculean Vest", augments={'Attack+21','"Triple Atk."+4','Accuracy+15',}},
			feet={ name="Herculean Boots", augments={'Accuracy+15 Attack+15','"Triple Atk."+4','DEX+7','Attack+3',}},})
			sets.TP.MidACC.MidHaste = set_combine(sets.TP.MidHaste,{
			neck="Combatant's Torque",
			ring2="Ramuh Ring +1",
			--ear2="Telos Earring",
			})
	sets.TP.HighACC.MidHaste = set_combine(sets.TP.MidACC.MidHaste,{
			--head="Dampening Tam",
			ring1="Cacoethic Ring +1",
			ear2="Digni. Earring",
			hands="Meg. Gloves +2",
			legs="Meg. Chausses +2",
			feet={ name="Herculean Boots", augments={'Accuracy+15 Attack+15','"Triple Atk."+4','DEX+7','Attack+3',}},
			body="Adhemar Jacket",
			waist="Olseni Belt",
			ammo="Falcon Eye"})

	-- March x2 + Haste + Samba --
	sets.TP.HighHaste = set_combine(sets.TP.MidHaste,{
			})
	sets.TP.MidACC.HighHaste = set_combine(sets.TP.HighHaste,{
			neck="Combatant's Torque",
			ring2="Ramuh Ring +1",
			--ear2="Telos Earring",
			})
	sets.TP.HighACC.HighHaste = set_combine(sets.TP.MidACC.MidHaste,{
			--head="Dampening Tam",
			ring1="Cacoethic Ring +1",
			ear2="Digni. Earring",
			hands="Meg. Gloves +2",
			feet="Meg. Jam. +2",
			body="Adhemar Jacket",
			waist="Olseni Belt",
			ammo="Falcon Eye"})
			
	sets.TP.TH = {
	        hands={ name="Herculean Gloves", augments={'DEX+10','INT+7','"Treasure Hunter"+2',}},
			head={ name="Herculean Helm", augments={'"Store TP"+1','"Dbl.Atk."+2','"Treasure Hunter"+2','Accuracy+10 Attack+10','Mag. Acc.+3 "Mag.Atk.Bns."+3',}}}
			
	sets.TP.RangedTH = {
	        head="Meghanada Visor +1",
            body="Meg. Cuirie +2",
            hands="Meg. Gloves +2",
            legs="Meg. Chausses +2",
            feet="Meg. Jam. +2",
            neck="Combatant's Torque",
            waist="Elanid Belt",
            left_ear="Enervating Earring",
            right_ear="Clearview Earring",
            left_ring="Hajduk Ring",
            right_ring="Cacoethic Ring +1",
            back="Quarrel Mantle"}

	-- Saber Dance TP Set --
        sets.TP['Saber Dance'] = {}
	-- Climactic Flourish TP Set --
	sets.TP['Climactic Flourish'] = {head="Maculele Tiara +1"}
	-- Striking Flourish TP Set --
	sets.TP['Striking Flourish'] = {body="Maculele casaque +1"}
	
	
	-- PDT/MDT Sets --
	-- PDT/MDT Sets --
	sets.PDT = {
			head="Iuitl Headgear +1",
			neck="Loricate Torque +1",
			ammo="Staunch tathlum",
			ear1="Genmei Earring",
			ear2="Etiolation Ring",
			body="Onca Suit",
			ring1="Gelatinous Ring +1",
			ring2="Defending Ring",
			back="Moonbeam Cape",
			waist="Flume Belt"}

	sets.MDT = set_combine(sets.PDT,{
			ear1="Merman's Earring",
			ear2="Etiolation Earring",
			ring1="Shadow Ring",
			waist="Resolute Belt"})

	-- Hybrid/Evasion Sets --
	sets.TP.Hybrid = set_combine(sets.PDT,{
			head="Iuitl Headgear +1",
			neck="Loricate Torque +1",
			ear1="Heartseeker Earring",
			ear2="Dudgeon Earring",
			body="Onca Suit",
			ring1="Gelatinous Ring +1",
			ring2="Defending Ring",
			back="Mollusca Mantle",
			waist="Windbuffet Belt +1"})
	sets.TP.Hybrid.MidACC = set_combine(sets.TP.Hybrid,{})
	sets.TP.Hybrid.HighACC = set_combine(sets.TP.Hybrid.MidACC,{})

	sets.Evasion = set_combine(sets.PDT,{})

	-- WS Base Set --
	sets.WS = {}

	-- WS Sets --
	sets.WS.Exenterator = {
			head="Adhemar Bonnet",
			neck="Fotia Gorget",
			ear1="Cessance Earring",
			ear2="Brutal Earring",
			ammo="Yamarang",
			body={ name="Herculean Vest", augments={'Attack+21','"Triple Atk."+4','Accuracy+15',}},
			hands="Adhemar Wristbands",
			ring1="Epona's Ring",
			ring2="Hetairoi Ring",
			back="Senuna's Mantle",
			waist="Fotia Belt",
			legs="Samnuha Tights",
			feet={ name="Herculean Boots", augments={'Accuracy+15 Attack+15','"Triple Atk."+4','DEX+7','Attack+3',}},}
	sets.WS.Exenterator.MidACC = set_combine(sets.WS.Exenterator,{})
	sets.WS.Exenterator.HighACC = set_combine(sets.WS.Exenterator.MidACC,{})

	sets.WS["Pyrrhic Kleos"] = {
			head="Adhemar Bonnet",
			neck="Fotia Gorget",
			ear1="Cessance Earring",
			ear2="Sherida Earring",
			ammo="Floestone",
			body={ name="Herculean Vest", augments={'Attack+21','"Triple Atk."+4','Accuracy+15',}},
			hands="Adhemar Wristbands",
			ring1="Epona's Ring",
			ring2="Rajas Ring",
			back="Senuna's Mantle",
			waist="Fotia Belt",
			legs="Samnuha Tights",
			feet="Lustratio Leggings +1",}
	sets.WS["Pyrrhic Kleos"].MidACC = set_combine(sets.WS["Pyrrhic Kleos"],{})
	sets.WS["Pyrrhic Kleos"].HighACC = set_combine(sets.WS["Pyrrhic Kleos"].MidACC,{})

	sets.WS["Rudra's Storm"] = {
	        ammo="Charis Feather",
			head="Adhemar Bonnet",
			neck="Caro Necklace",
			ear1="Moonshade Earring",
			ear2="Ishvara Earring",
			body="Meg. Cuirie +2",
			hands="Meg. Gloves +2",
			ring1="Ramuh Ring +1",
			ring2="Ramuh Ring +1",
			back="Senuna's Mantle",
			waist="Grunfeld Rope",
			legs={ name="Herculean Trousers", augments={'Weapon skill damage +2%','DEX+9','Accuracy+12','Attack+10',}},
			feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','Weapon skill damage +3%','STR+5','Accuracy+13',}},}
	sets.WS["Rudra's Storm"].MidACC = set_combine(sets.WS["Rudra's Storm"],{})
	sets.WS["Rudra's Storm"].HighACC = set_combine(sets.WS["Rudra's Storm"].MidACC,{})
	
	sets.WS["Aeolian Edge"] = {
	        ammo="Pemphredo Tathlum",
            head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Enmity-1','INT+8','Mag. Acc.+13','"Mag.Atk.Bns."+7',}},
            body="Samnuha Coat",
            hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
            legs={ name="Herculean Trousers", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +3%','MND+9','Mag. Acc.+9',}},
		    feet={ name="Herculean Boots", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +2%','INT+9','Mag. Acc.+11','"Mag.Atk.Bns."+11',}},
            neck="Sanctity Necklace",
            waist="Eschan Stone",
            left_ear="Crematio Earring",
            right_ear="Friomisi Earring",
            left_ring="Shiva Ring +1",
            right_ring="Shiva Ring +1",
            back="Toro Cape"}
	

	sets.WS.Evisceration = {
	        ammo="Charis Feather",
			head="Adhemar Bonnet",
			neck="Fotia Gorget",
			ear1="Sherida Earring",
			ear2="Mache Earring",
			body="Abnoba Kaftan",
			hands="Adhemar Wristbands",
			ring1="Hetairoi Ring",
			ring2="Ramuh Ring +1",
			back="Senuna's Mantle",
			waist="Fotia Belt",
			legs="Lustratio Subligar +1",
			feet={ name="Herculean Boots", augments={'Accuracy+15 Attack+15','"Triple Atk."+4','DEX+7','Attack+3',}},}
	sets.WS.Evisceration.MidACC = set_combine(sets.WS.Evisceration,{})
	sets.WS.Evisceration.HighACC = set_combine(sets.WS.Evisceration.MidACC,{})

	-- JA Sets --
	sets.JA = {}
	sets.JA.Trance = {head="Horos Tiara +1"}
	sets.JA['No Foot Rise'] = {body="Horos Casaque +1"}
	sets.JA.Steps = {
			head={ name="Herculean Helm", augments={'"Store TP"+1','"Dbl.Atk."+2','"Treasure Hunter"+2','Accuracy+10 Attack+10','Mag. Acc.+3 "Mag.Atk.Bns."+3',}},
			neck="Combatant's Torque",
			ear1="Mache Earring",
			ear2="Digni. Earring",
			body="Adhemar Jacket",
			hands={ name="Herculean Gloves", augments={'DEX+10','INT+7','"Treasure Hunter"+2',}},
			ring1="Ramuh Ring +1",
			ring2="Ramuh Ring +1",
			legs="Meg. Chausses +2",
			feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','Crit. hit damage +4%','Accuracy+13','Attack+12',}},
			back="Toetapper Mantle",
			}
	sets.JA["Feather Step"] = set_combine(sets.JA.Steps, 
	{})
	

	-- Jig Set --
	sets.Jig = {legs="Horos Tights +1",feet="Maxixi Toe Shoes +1"}

	-- Step Base Set --
	

	-- Samba Set --
	sets.Samba = {head="Maxixi Tiara +1", back="Senuna's Mantle"}

	-- Flourish Base Set --
	sets.Flourish = {}
	sets.Flourish['Reverse Flourish'] = set_combine(sets.Flourish,{hands="Maculele Bangles +1",back="Toetapper Mantle"})
	sets.Flourish['Climactic Flourish'] = set_combine(sets.Flourish,{head="Maculele Tiara +1"})
	sets.Flourish['Striking Flourish'] = set_combine(sets.Flourish,{body="Maculele Casaque +1"})
	sets.Flourish['Violent Flourish'] = set_combine(sets.Flourish,{
			head={ name="Herculean Helm", augments={'"Store TP"+1','"Dbl.Atk."+2','"Treasure Hunter"+2','Accuracy+10 Attack+10','Mag. Acc.+3 "Mag.Atk.Bns."+3',}},
			body="Horos Casaque +1",
			hands={ name="Herculean Gloves", augments={'DEX+10','INT+7','"Treasure Hunter"+2',}},
			})
	sets.Flourish['Desperate Flourish'] = set_combine(sets.Flourish)
	sets.Flourish['Wild Flourish'] = set_combine(sets.Flourish)

	sets.Skillchain = {}

	-- Waltz Set --
	sets.Waltz = {
	        head="Horos Tiara +1",
			ammo="Sonia's Plectrum",
			ear1="Enchntr. Earring +1",
			body="Maxixi Casaque +1",
			ear2="Roundel Earring",
			ring1="Asklepian Ring",
			back="Toetapper Mantle",
			feet="Maxixi Shoes +1"}

	sets.Precast = {}
	-- Fastcast Set --
	sets.Precast.FastCast = {
			ammo="Impatiens",
			head="Herculean Helm",
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
	-- Magic Haste Set --
	sets.Midcast.Haste = set_combine(sets.PDT,{})
end

function pretarget(spell, action)
	if (spell.type:endswith('Magic') or spell.type == "Ninjutsu") and buffactive.silence then
		cancel_spell()
		send_command('input /item "Echo Drops" <me>')
	elseif spell.english == "Berserk" and buffactive.Berserk then
		cancel_spell()
		send_command('Aggressor')
	elseif spell.type == "WeaponSkill" and spell.target.distance > target_distance and player.status == 'Engaged' then
		cancel_spell()
		add_to_chat(123, spell.name..' Canceled: [Out of Range]')
		return
	end
end

function precast(spell, action)
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
			if equipSet[AccArray[AccIndex]] then
				equipSet = equipSet[AccArray[AccIndex]]
			end
			if Skillchain then
				equipSet = set_combine(equipSet,sets.Skillchain)
			end
			if spell.english == "Evisceration" and player.tp > 299 then
				equipSet = set_combine(equipSet,{ear1="Jupiter's Pearl"})
			end
			equip(equipSet)
		end
	elseif spell.type == "JobAbility" then
		if sets.JA[spell.english] then
			if spell.english == 'Trance' and buffactive['Saber Dance'] then
				cast_delay(0.2)
				send_command('cancel Saber Dance')
			end
			equip(sets.JA[spell.english])
		end
	if sets.JA[spell.name] then
	equip(sets.JA[spell.name])
end
if spell.name == 'Presto' and ( buffactive["Finishing Move 3"] or buffactive["Finishing Move 4"] or buffactive["Finishing Move 5"] ) then
	cancel_spell()
end
if spell.type == "Steps" then
	if spell.name == 'Feather Step' then
		equip(sets.JA["Feather Step"])
	else
		equip(sets.JA.Steps)
	end
end
	elseif spell.type:endswith('Magic') or spell.type == "Ninjutsu" then
		if string.find(spell.english,'Utsusemi') then
			if buffactive['Copy Image (3)'] or buffactive['Copy Image (4)'] then
				cancel_spell()
				add_to_chat(123, spell.english .. ' Canceled: [3+ Images]')
				return
			else
				equip(sets.Precast.Utsusemi)
			end
		else
			equip(sets.Precast.FastCast)
		end
		
    elseif spell.type == "Step" then
	
		equip(sets.JA.Steps)
	elseif spell.type == "Waltz" then
		if buffactive['Saber Dance'] then
			cast_delay(0.2)
			send_command('cancel Saber Dance')
		end
		refine_waltz(spell,action)
		equip(sets.Waltz)
	elseif spell.type == "Jig" then
		if spell.english == 'Spectral Jig' and buffactive.Sneak then
			cast_delay(0.2)
			send_command('cancel Sneak')
		end
		equip(sets.Jig)
	elseif spell.type == 'Samba' then
		if buffactive['Fan Dance'] then
			cast_delay(0.2)
			send_command('cancel Fan Dance')
		end
		equip(sets.Samba)
	elseif string.find(spell.type,'Flourish') then
		if sets.Flourish[spell.english] then
			equip(sets.Flourish[spell.english])
		end
	end
end

function midcast(spell, action)
    if spell.english == 'Ranged' then
		equip(sets.TP.RangedTH)
	end
	if spell.type:endswith('Magic') or spell.type == "Ninjutsu" then
		if string.find(spell.english,'Utsusemi') then
			if spell.english == 'Utsusemi: Ichi' and (buffactive['Copy Image'] or buffactive['Copy Image (2)']) then
				send_command('@wait 1.7;cancel Copy Image*')
			end
			equip(sets.Midcast.Haste)
		elseif spell.english == 'Monomi: Ichi' then
			if buffactive['Sneak'] then
				send_command('@wait 1.7;cancel sneak')
			end
			equip(sets.Midcast.Haste)
		else
			equip(sets.Midcast.Haste)
		end
	end
end

function aftercast(spell, action)
 function aftercast(spell,action)
	if spell.type == "WeaponSkill" and not spell.interrupted then
		send_command('wait 0.2;gs c TP')
	end
	status_change(player.status)
end
end

function status_change(new,old)
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
		
		if buffactive['Saber Dance'] then
			equipSet = set_combine(equipSet,sets.TP['Saber Dance'])
		end
		if buffactive['Striking Flourish'] then
			equipSet = set_combine(equipSet,sets.TP['Striking Flourish'])
		end
		if buffactive['Climactic Flourish'] then
			equipSet = set_combine(equipSet,sets.TP['Climactic Flourish'])
		end
		if TH == 'ON' then -- Use TH Toggle To Lock Full TH Set --
			equipSet = set_combine(equipSet,sets.TP.TH)
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
	elseif buff == 'haste samba' and not gain then
		send_command('timers delete "Haste Samba"')
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

function timer_haste_samba()
	local duration = 90

	if player.main_job == 'DNC' then
		if player.equipment.head == "Dancer's Tiara" or player.equipment.head == "Dancer's Tiara +1" then
			duration = duration + 30
		elseif player.equipment.head == 'Maxixi Tiara' then
			duration = duration + 40
		elseif player.equipment.head == 'Maxixi Tiara +1' then
			duration = duration + 45
		end

		if buffactive['Saber Dance'] then
			local merits = player.merits.saber_dance
			if merits > 1 then
				local extend = (merits - 1) * 5
				duration = math.floor(duration + (duration * extend / 100))
			end
		end
	end

	send_command('timers create "Haste Samba" '..tostring(duration)..' down abilities/00216.png')
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
		if player.main_job == 'DNC' then
			if missingHP < 40 and spell.target.name == player.name then
				add_to_chat(123,'Full HP!')
				cancel_spell()
				return
			elseif missingHP < 200 then
				newWaltz = 'Curing Waltz'
				waltzID = 190
			elseif missingHP < 800 then
				newWaltz = 'Curing Waltz II'
				waltzID = 191
			elseif missingHP < 1200 then
				newWaltz = 'Curing Waltz III'
				waltzID = 192
			elseif missingHP < 1600 then
				newWaltz = 'Curing Waltz IV'
				waltzID = 193
			else
				newWaltz = 'Curing Waltz V'
				waltzID = 311
			end
		else
			return
		end
	end

	local waltzTPCost = {['Curing Waltz'] = 200, ['Curing Waltz II'] = 300, ['Curing Waltz III'] = 500, ['Curing Waltz IV'] = 650, ['Curing Waltz V'] = 800}
	local tpCost = waltzTPCost[newWaltz]

	local downgrade

	if player.tp < tpCost and not buffactive.trance then

		if player.tp < 20 then
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
	elseif player.sub_job == 'NIN' then
		set_macro_page(2, 11)
	elseif player.sub_job == 'SAM' then
		set_macro_page(2, 11)
	else
		set_macro_page(2, 11)
	end
end