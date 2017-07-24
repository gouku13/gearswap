

function get_sets()
	AccIndex = 1
	AccArray = {"LowACC","MidACC","HighACC"} -- 3 Levels Of Accuracy Sets For TP/WS/Hybrid. Default ACC Set Is LowACC. Add More ACC Sets If Needed Then Create Your New ACC Below --
	IdleIndex = 1
	IdleArray = {"Movement","Regen","Pet","PetAcc","PetDT","PetNuke"} -- Default Idle Set Is Movement --
	PetIndex = 1
	PetArray = {"Melee","Ranged","Tank","Nuke","Healing","Magic"} -- Default Pet TP Set Is Melee --
	Armor = 'None'
	Pet = 'OFF' -- Set Default Pet Set ON or OFF Here --
	target_distance = 5 -- Set Default Distance Here --
	select_default_macro_book() -- Change Default Macro Book At The End --

	petWS = S{
			"Slapstick","Knockout","Magic Mortar","Chimera Ripper","String Clipper","Cannibal Blade",
			"Bone Crusher","String Shredder","Arcuballista","Daze","Armor Piercer","Armor Shatterer"}
			
	Cure_Spells = {"Cure","Cure II","Cure III","Cure IV"} -- Cure Degradation --
	Curaga_Spells = {"Curaga","Curaga II"} -- Curaga Degradation --

	sc_map = {SC1="VictorySmite", SC2="Berserk", SC3="Aggressor"} -- 3 Additional Binds. Can Change Whatever JA/WS/Spells You Like Here. Remember Not To Use Spaces. --

	-- Idle/Town Sets --
	sets.Idle = {}
	sets.Idle.Regen = {
	        main="Ohtas",
	        range="Divinator",
			head="Pitre Taj +1",
			neck="Wiglen Gorget",
			ear1="Handler's Earring +1",
			ear2="Burana Earring",
			body="Hiza. Haramaki +1",
			hands={ name="Taeon Gloves", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+4','Pet: Damage taken -4%',}},
			ring1="Sheltered Ring",
			ring2="Shneddick Ring",
			back="Visucius's Mantle",
			legs={ name="Taeon Tights", augments={'Pet: Accuracy+20 Pet: Rng. Acc.+20','Pet: "Dbl. Atk."+4','Pet: Damage taken -4%',}},
			feet={ name="Taeon Boots", augments={'Pet: Accuracy+20 Pet: Rng. Acc.+20','Pet: "Dbl. Atk."+4','Pet: Damage taken -4%',}},
			waist="Ukko Sash"}
			
	sets.Idle.Movement = set_combine(sets.Idle.Regen,{
	        main="Ohtas",
	        range="Divinator",
			head="Pitre Taj +1",
			neck="Wiglen Gorget",
			ear1="Handler's Earring +1",
			ear2="Burana Earring",
			body={ name="Taeon Tabard", augments={'Pet: Accuracy+22 Pet: Rng. Acc.+22','Pet: "Dbl. Atk."+4','Pet: Damage taken -4%',}},
			hands={ name="Taeon Gloves", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+4','Pet: Damage taken -4%',}},
			ring1="Sheltered Ring",
			ring2="Shneddick Ring",
			back="Visucius's Mantle",
			legs={ name="Taeon Tights", augments={'Pet: Accuracy+20 Pet: Rng. Acc.+20','Pet: "Dbl. Atk."+4','Pet: Damage taken -4%',}},
			feet={ name="Taeon Boots", augments={'Pet: Accuracy+20 Pet: Rng. Acc.+20','Pet: "Dbl. Atk."+4','Pet: Damage taken -4%',}},
			waist="Ukko Sash"})
	sets.Idle.Pet = set_combine(sets.Idle.Regen,{
	        main="Ohtas",
	        range="Divinator",
			head="Anwig Salade",
			neck="Empath Necklace",
			ear1="Domes. Earring",
			ear2="Rimeice Earring",
			body={ name="Taeon Tabard", augments={'Pet: Accuracy+22 Pet: Rng. Acc.+22','Pet: "Dbl. Atk."+4','Pet: Damage taken -4%',}},
			hands={ name="Taeon Gloves", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+4','Pet: Damage taken -4%',}},
			ring1="Overbearing Ring",
			ring2="Shneddick Ring",
			back="Visucius's Mantle",
			waist="Ukko Sash",
			legs={ name="Taeon Tights", augments={'Pet: Accuracy+20 Pet: Rng. Acc.+20','Pet: "Dbl. Atk."+4','Pet: Damage taken -4%',}},
			feet={ name="Taeon Boots", augments={'Pet: Accuracy+20 Pet: Rng. Acc.+20','Pet: "Dbl. Atk."+4','Pet: Damage taken -4%',}},})
	sets.Idle.PetAcc = set_combine(sets.Idle.Regen,{
            main="Ohtas",
	        range="Divinator",
			head="Anwig Salade",
			neck="Empath Necklace",
			ear1="Burana Earring",
			ear2="Rimeice Earring",
			body={ name="Taeon Tabard", augments={'Pet: Accuracy+22 Pet: Rng. Acc.+22','Pet: "Dbl. Atk."+4','Pet: Damage taken -4%',}},
			hands={ name="Taeon Gloves", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+4','Pet: Damage taken -4%',}},
			ring1="Overbearing Ring",
			ring2="Shneddick Ring",
			back="Visucius's Mantle",
			waist="Ukko Sash",
			legs={ name="Taeon Tights", augments={'Pet: Accuracy+20 Pet: Rng. Acc.+20','Pet: "Dbl. Atk."+4','Pet: Damage taken -4%',}},
			feet={ name="Taeon Boots", augments={'Pet: Accuracy+20 Pet: Rng. Acc.+20','Pet: "Dbl. Atk."+4','Pet: Damage taken -4%',}},})
	sets.Idle.PetDT = set_combine(sets.Idle.Regen,{
            main="Condemners",
	        range="Divinator",
			head="Anwig Salade",
			neck="Shepherd's chain",
			ear1="Burana Earring",
			ear2="Rimeice Earring",
			body={ name="Taeon Tabard", augments={'Pet: Accuracy+22 Pet: Rng. Acc.+22','Pet: "Dbl. Atk."+4','Pet: Damage taken -4%',}},
			hands={ name="Taeon Gloves", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+4','Pet: Damage taken -4%',}},
			ring1="Overbearing Ring",
			ring2="Shneddick Ring",
			back="Visucius's Mantle",
			waist="Isa Belt",
			legs={ name="Taeon Tights", augments={'Pet: Accuracy+20 Pet: Rng. Acc.+20','Pet: "Dbl. Atk."+4','Pet: Damage taken -4%',}},
			feet={ name="Taeon Boots", augments={'Pet: Accuracy+20 Pet: Rng. Acc.+20','Pet: "Dbl. Atk."+4','Pet: Damage taken -4%',}},})
	sets.Idle.PetNuke = set_combine(sets.Idle.Regen,{
	        main="Ohtas",
	        range="Divinator",
			head="Rawhide Mask",
			neck="Empath Necklace",
			ear1="Burana Earring",
			ear2="Cirque Earring",
			body={ name="Taeon Tabard", augments={'Pet: "Mag.Atk.Bns."+21','Crit.hit rate+3','STR+6 DEX+6',}},
			hands="Naga Tekko",
			ring1="Overbearing Ring",
			ring2="Shneddick Ring",
			back="Argocham. Mantle",
			waist="Ukko Sash",
			legs="Herculean Trousers",
			feet="Pitre Babouches +1"})

	sets.Resting = {}

	-- TP Base Set --
	sets.TP = {}

	-- TP Sets --
	sets.TP = {
			range="Divinator",
			head="Hizamaru Somen +1",
			neck="Combatant's Torque",
			ear1="Cessance Earring",
			ear2="Brutal Earring",
			body="Herculean Vest",
			hands="Ryuo Tekko",
			ring1="Epona's Ring",
			ring2="Petrov Ring",
			back="Visucius's Mantle",
			waist="Hurch'lan Sash",
			legs="Samnuha Tights",
			feet="Herculean Boots"}
	sets.TP.MidACC = set_combine(sets.TP,{
	        ear1="Cessance Earring",
	        ear2="Brutal Earring",
			ring1="Cacoethic Ring +1",
			ring2="Ramuh Ring +1",
	        neck="Combatant's Torque"})
	sets.TP.HighACC = set_combine(sets.TP.MidACC,{
	        waist="Olseni Belt"})

	sets.TP.Pet = {}
	-- Pet Melee --
	sets.TP.Pet.Melee = {
		   head="Anwig Salade",
			neck="Empath Necklace",
			ear1="Domes. Earring",
			ear2="Rimeice Earring",
			body={ name="Taeon Tabard", augments={'Pet: Accuracy+22 Pet: Rng. Acc.+22','Pet: "Dbl. Atk."+4','Pet: Damage taken -4%',}},
			hands={ name="Taeon Gloves", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+4','Pet: Damage taken -4%',}},
			ring1="Overbearing Ring",
			ring2="Shneddick Ring",
			back="Visucius's Mantle",
			waist="Ukko Sash",
			legs={ name="Taeon Tights", augments={'Pet: Accuracy+20 Pet: Rng. Acc.+20','Pet: "Dbl. Atk."+4','Pet: Damage taken -4%',}},
			feet={ name="Taeon Boots", augments={'Pet: Accuracy+20 Pet: Rng. Acc.+20','Pet: "Dbl. Atk."+4','Pet: Damage taken -4%',}},}

	-- Pet Ranged --
	sets.TP.Pet.Ranged = {
			head="Anwig Salade",
			neck="Empath Necklace",
			ear1="Domes. Earring",
			ear2="Rimeice Earring",
			body={ name="Taeon Tabard", augments={'Pet: Accuracy+22 Pet: Rng. Acc.+22','Pet: "Dbl. Atk."+4','Pet: Damage taken -4%',}},
			hands={ name="Taeon Gloves", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+4','Pet: Damage taken -4%',}},
			ring1="Overbearing Ring",
			ring2="Shneddick Ring",
			back="Visucius's Mantle",
			waist="Ukko Sash",
			legs={ name="Taeon Tights", augments={'Pet: Accuracy+20 Pet: Rng. Acc.+20','Pet: "Dbl. Atk."+4','Pet: Damage taken -4%',}},
			feet={ name="Taeon Boots", augments={'Pet: Accuracy+20 Pet: Rng. Acc.+20','Pet: "Dbl. Atk."+4','Pet: Damage taken -4%',}},}

	-- Pet Tank --
	sets.TP.Pet.Tank = {
	head="Anwig Salade",
			neck="Shepherd's chain",
			ear1="Handler's Earring +1",
			ear2="Rimeice Earring",
			body={ name="Taeon Tabard", augments={'Pet: Accuracy+22 Pet: Rng. Acc.+22','Pet: "Dbl. Atk."+4','Pet: Damage taken -4%',}},
			hands={ name="Taeon Gloves", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+4','Pet: Damage taken -4%',}},
			ring1="Overbearing Ring",
			ring2="Shneddick Ring",
			back="Visucius's Mantle",
			waist="Isa Belt",
			legs={ name="Taeon Tights", augments={'Pet: Accuracy+20 Pet: Rng. Acc.+20','Pet: "Dbl. Atk."+4','Pet: Damage taken -4%',}},
			feet={ name="Taeon Boots", augments={'Pet: Accuracy+20 Pet: Rng. Acc.+20','Pet: "Dbl. Atk."+4','Pet: Damage taken -4%',}},}

	-- Pet Nuke --
	sets.TP.Pet.Nuke = {
			head="Rawhide Mask",
			neck="Empath Necklace",
			ear1="Burana Earring",
			ear2="Cirque Earring",
			body={ name="Taeon Tabard", augments={'Pet: "Mag.Atk.Bns."+21','Crit.hit rate+3','STR+6 DEX+6',}},
			hands="Naga Tekko",
			ring1="Overbearing Ring",
			ring2="Shneddick Ring",
			back="Argocham. Mantle",
			waist="Ukko Sash",
			legs="Herculean Trousers",
			feet="Pitre Babouches +1"}

	-- Pet Healing --
	sets.TP.Pet.Healing = {
			hands="Pitre Dastanas +1",
			legs="Foire Churidars +1"}

	-- Pet Healing & Nuke --
	sets.TP.Pet.Magic = {}

	-- PDT/MDT Sets --
	sets.PDT = {
			head={ name="Herculean Helm", augments={'INT+5','Attack+13','Damage taken-4%','Accuracy+2 Attack+2','Mag. Acc.+18 "Mag.Atk.Bns."+18',}},
			neck="Loricate Torque +1",
			ear1="Cessance Earring",
			ear2="Genmei Earring",
			body="Onca Suit",
			ring1="Dark Ring",
			ring2="Defending Ring",
			back="Solemnity Cape",
			waist="Hurch'lan Sash"}

	sets.MDT = set_combine(sets.PDT,{
			ammo="Demonry Stone",
			ear1="Merman's Earring",
			ear2="Sanare Earring",
			ring1="Shadow Ring",
			back="Engulfer Cape",
			waist="Resolute Belt"})

	-- Hybrid Sets --
	sets.TP.Hybrid = set_combine(sets.PDT,{
	        range="Divinator",
		    head={ name="Taeon Chapeau", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','Pet: Haste+4',}},
			hands={ name="Taeon Gloves", augments={'Accuracy+25','"Triple Atk."+2','Pet: Haste+5',}},
			legs="Samnuha Tights",
			ring1="Epona's Ring",
			ring2="Petrov Ring",
			ear1="Cessance Earring",
			ear2="Brutal Earring",
			feet={ name="Herculean Boots", augments={'Enmity+1','Pet: "Dbl.Atk."+1 Pet: Crit.hit rate +1','Quadruple Attack +3','Accuracy+20 Attack+20','Mag. Acc.+9 "Mag.Atk.Bns."+9',}},
			neck="Empath Necklace",
			back="Visucius's Mantle",
			body="Pitre Tobe +1",
			waist="Hurch'lan Sash"})
	sets.TP.Hybrid.MidACC = set_combine(sets.TP.Hybrid,{})
	sets.TP.Hybrid.HighACC = set_combine(sets.TP.Hybrid.MidACC,{})

	-- WS Base Set --
	sets.WS = {}

	-- WS Sets --
	sets.WS["Victory Smite"] = {
			head="Rao Kabuto",
			neck="Fotia Gorget",
			ear1="Moonshade Earring",
			ear2="Brutal Earring",
			body="Abnoba Kaftan",
			hands="Ryuo Tekko",
			ring1="Epona's Ring",
			ring2="Ifrit Ring +1",
			back="Rancorous Mantle",
			waist="Fotia Belt",
			legs="Samnuha Tights",
			feet="Herculean Boots"}
	sets.WS["Victory Smite"].MidACC = set_combine(sets.WS["Victory Smite"],{})
	sets.WS["Victory Smite"].HighACC = set_combine(sets.WS["Victory Smite"].MidACC,{})

	sets.WS["Shijin Spiral"] = {
	        head="Rao Kabuto",
			neck="Fotia Gorget",
			ear1="Moonshade Earring",
			ear2="Brutal Earring",
			body="Herculean Vest",
			hands="Ryuo Tekko",
			ring1="Epona's Ring",
			ring2="Ramuh Ring +1",
			back="Rancorous Mantle",
			waist="Fotia Belt",
			legs="Samnuha Tights",
			feet="Herculean Boots"}
	sets.WS["Shijin Spiral"].MidACC = set_combine(sets.WS["Shijin Spiral"],{})
	sets.WS["Shijin Spiral"].HighACC = set_combine(sets.WS["Shijin Spiral"].MidACC,{})

	sets.WS["Stringing Pummel"] = {
	        head="Rao Kabuto",
			neck="Fotia Gorget",
			ear1="Moonshade Earring",
			ear2="Brutal Earring",
			body="Abnoba Kaftan",
			hands="Ryuo Tekko",
			ring1="Epona's Ring",
			ring2="Ifrit Ring +1",
			back="Rancorous Mantle",
			waist="Fotia Belt",
			legs="Samnuha Tights",
			feet="Herculean Boots"}
	sets.WS["Stringing Pummel"].MidACC = set_combine(sets.WS["Stringing Pummel"],{})
	sets.WS["Stringing Pummel"].HighACC = set_combine(sets.WS["Stringing Pummel"].MidACC,{})

	-- JA Sets --
	sets.JA = {}
	sets.JA["Tactical Switch"] = {feet="Karagoz scarpe +1"}
	sets.JA.Repair = {feet="Foire Bab. +1",legs="Desultor tassets",ear2="Pratik Earring",ear1="Guignol Earring"}
	sets.JA.Overdrive = {body="Pitre Tobe +1"}
	sets.JA.Ventriloquy = {legs="Pitre Churidars"}
	sets.JA["Role Reversal"] = {feet="Pitre Babouches +1"}

	-- Reduces Overload Rate Set --
	sets.Maneuver = {
			neck="Buffoon's Collar +1",
			ear2="Burana Earring",
			body="Karagoz farsetto +1",
			hands="Foire dastanas +1",
			back="Visucius's Mantle"}

	-- Waltz Set --
	sets.Waltz = {}

	sets.Precast = {}
	-- Fastcast Set --
	sets.Precast.FastCast = {
	        head="Herculean Helm",
			body="Taeon Tabard",
			legs="Gyve Trousers",
			neck="Orunmila's Torque",
			feet="Regal Pumps +1",
			back="Perimede cape",
			ear2="Enchntr. Earring +1",
			ear1="Loquac. Earring",
			ring1="Prolix Ring",
			ring2="Lebeche Ring"}

	sets.Midcast = {}
	-- Magic Haste Set --
	sets.Midcast.Haste = set_combine(sets.PDT,{
	head="Herculean Helm",
			body="Taeon Tabard",
			legs="Gyve Trousers",
			neck="Orunmila's Torque",
			feet="Regal Pumps +1",
			back="Perimede cape",
			ear2="Enchntr. Earring +1",
			ear1="Loquac. Earring",
			ring1="Prolix Ring",
			ring2="Lebeche Ring"})
	
	sets.Midcast.Cure = {
	       head="Taeon Chapeau",
			neck="Phalaina Locket",
			ear1="Mendi. Earring",
			ear2="Lifestorm Earring",
			body="Vrikodara Jupon",
			ring1="Kunaji Ring",
			ring2="Asklepian Ring",
			back="Solemnity Cape",
			waist="Gishdubar Sash",
			feet="Regal Pumps +1",
			legs="Gyve Trousers"}

	sets.Midcast.Pet = {}
	-- Pet WS Set --
	sets.Midcast.Pet.WS = {
			head="Karagoz capello +1",
			hands={ name="Taeon Gloves", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+4','Pet: Damage taken -4%',}},
			legs={ name="Taeon Tights", augments={'Pet: Accuracy+20 Pet: Rng. Acc.+20','Pet: "Dbl. Atk."+4','Pet: Damage taken -4%',}},
			ring1="Overbearing Ring",
			ear1="Domes. Earring",
			ear2="Burana Earring",
			feet={ name="Taeon Boots", augments={'Pet: Accuracy+20 Pet: Rng. Acc.+20','Pet: "Dbl. Atk."+4','Pet: Damage taken -4%',}},
			neck="Empath Necklace",
			back="Visucius's Mantle",
			body={ name="Taeon Tabard", augments={'Pet: Accuracy+22 Pet: Rng. Acc.+22','Pet: "Dbl. Atk."+4','Pet: Damage taken -4%',}},
			waist="Incarnation Sash"}
end

function pretarget(spell,action)
	if (spell.type:endswith('Magic') or spell.type == "Ninjutsu") and buffactive.silence then -- Auto Use Echo Drops If You Are Silenced --
		cancel_spell()
		send_command('input /item "Echo Drops" <me>')
	elseif spell.english == "Berserk" and buffactive.Berserk then -- Change Berserk To Aggressor If Berserk Is On --
		cancel_spell()
		send_command('Aggressor')
	elseif spell.type == "WeaponSkill" and spell.target.distance > target_distance and player.status == 'Engaged' then -- Cancel WS If You Are Out Of Range --
		cancel_spell()
		add_to_chat(123, spell.name..' Canceled: [Out of Range]')
		return
	end
end

function precast(spell,action)
    if spell.action_type == 'Magic' then
		if buffactive.silence or spell.target.distance > 16+target_distance then -- Cancel Magic or Ninjutsu If You Are Silenced or Out of Range --
			cancel_spell()
			add_to_chat(123, spell.name..' Canceled: [Silenced or Out of Casting Range]')
			return
		else
			if spell.english:startswith('Cur') and spell.english ~= "Cursna" then
				equip(sets.Precast.Cure)
			elseif spell.english == "Impact" then
				equip(set_combine(sets.Precast.FastCast,{body="Twilight Cloak"}))
			elseif spell.english == 'Utsusemi: Ni' then
				if buffactive['Copy Image (3)'] then
					cancel_spell()
					add_to_chat(123, spell.name .. ' Canceled: [3 Images]')
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
	elseif spell.type == "WeaponSkill" then
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
			equip(equipSet)
		end
	elseif spell.type == "JobAbility" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		end
	elseif spell.type:endswith('Magic') or spell.type == 'Ninjutsu' then
		if string.find(spell.english,'Utsusemi') then -- Cancel Utsusemi If You Have 3+ Shadows Up --
			if buffactive['Copy Image (3)'] or buffactive['Copy Image (4)'] then
				cancel_spell()
				add_to_chat(123, spell.name .. ' Canceled: [3+ Images]')
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
	elseif spell.type == "PetCommand" then
		if string.find(spell.english,'Maneuver') then
			equip(sets.Maneuver)
		end
	end
end

function midcast(spell,action)
	if spell.type:endswith('Magic') or spell.type == 'Ninjutsu' or spell.type == 'BardSong' then
		equipSet = sets.Midcast
		if spell.english:startswith('Cur') and spell.english ~= "Cursna" then
			if string.find(spell.english,'Cure') then
			equipSet = equipSet.Cure
		elseif spell.english:startswith('Cura') then
				equipSet = equipSet.Curaga
			end
		
		if equipSet[spell.english] then
				equipSet = equipSet[spell.english]
			end
			if equipSet[spell.skill] then
				equipSet = equipSet[spell.skill]
			end
			
			if equipSet[spell.type] then
				equipSet = equipSet[spell.type]
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
		equip(equipSet)
	elseif new == 'Idle' then
		equip(sets.Idle[IdleArray[IdleIndex]])
	elseif new == 'Resting' then
		equip(sets.Resting)
	end
	if Pet == 'ON' then -- Use Pet Toggle For Pet Sets --
		equip(sets.TP.Pet[PetArray[PetIndex]])
	end
end

function buff_change(buff,gain)
	buff = string.lower(buff)
	if buff == 'weakness' then -- Weakness Timer --
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

function pet_midcast(spell,action)
	if petWS:contains(spell.english) then
		equip(sets.Midcast.Pet.WS)
	end
end

function pet_aftercast(spell,action)
	status_change(player.status)
end

function pet_change(pet,gain)
	status_change(player.status)
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
	elseif command == 'C3' then -- Pet Set Toggle --
		PetIndex = (PetIndex % #PetArray) + 1
		add_to_chat(158,'Pet Set: ' .. PetArray[PetIndex])
		status_change(player.status)
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
	elseif command == 'C9' then -- Pet Toggle --
		if Pet == 'ON' then
			Pet = 'OFF'
			add_to_chat(123,'Pet Set: [Unlocked]')
		else
			Pet = 'ON'
			add_to_chat(158,'Pet Set: [Locked]')
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
		set_macro_page(3, 18)
	elseif player.sub_job == 'DNC' then
		set_macro_page(3, 18)
	elseif player.sub_job == 'NIN' then
		set_macro_page(3, 18)
	else
		set_macro_page(3, 18)
	end
end