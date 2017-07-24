include('organizer-lib.lua')
function get_sets()
	send_command('bind f9 gs c toggle tp set')

    TP_Index = 1
    Idle_Index = 1
	MDT = false
    sets.weapons = {}
    sets.weapons[1]={main="Taming Sari"}
	sets.weapons[2] = {main="Shijo"}
	
  
    
    sets.JA = {}
	sets.JA.Steal = {ammo="Barathrum", hands="Pillager's Armlets +1", legs="Pillager's Culottes +1", feet="Pillager's Poulaines +1"}
    sets.JA.Conspirator = {body="Skulker's Vest +1"}
	sets.JA.Accomplice = {head="Skulker's Bonnet +1"}
    sets.JA.Collaborator = {head="Skulker's Bonnet +1"}
    sets.JA['Perfect Dodge'] = {hands="Plun. Armlets +1"}
    sets.JA.Flee = {feet="Pillager's Poulaines +1"}
    sets.JA.Despoil = {ammo="Barathrum",legs="Skulker's Culottes +1",feet="Skulker's Poulaines +1"}
--    sets.JA.Mug = {head="Assassin's Bonnet +2"}

    
    sets.WS = {}
    sets.WS.SA = {}
    sets.WS.TA = {}
    sets.WS.SATA = {}
	
	sets.ninjutsu = {head="Herculean Helm",neck="Voltsurge Torque",ear1="Loquacious Earring",ear2="Etiolation Earring",body="Dread Jupon",hands="Leyline Gloves",
	ring2="Weatherspoon Ring",ring1="Lebeche Ring",legs="Enif Cosciales"}
	
	sets.trust = {head="Herculean Helm",neck="Voltsurge Torque",ear1="Loquacious Earring",ear2="Etiolation Earring",body="Dread Jupon",hands="Leyline Gloves",
	ring2="Weatherspoon Ring",ring1="Lebeche Ring"}
	
	sets.JA["Sneack Attack"] = {ammo="Yetshila",
		head="Pillager's Bonnet +1",neck="Caro Necklace",ear1="Dominance Earring",ear2="Dominance Earring +1",
        body="Pillager's vest +1",hands="Skulker's Armlets +1",ring2="Apate Ring",ring1="Ramuh Ring",
        back="Toutatis's Cape",waist="Wanion Belt",legs="Samnuha Tights",feet="Taeon Boots"}
	
	sets.WS.Evisceration = {ammo="Yetshila",
		head="Taeon Chapeau",neck="Nefarious Collar",ear1="Dominance Earring",ear2="Dominance Earring +1",
        body="Pillager's vest +1",hands="Taeon Gloves",ring2="Hetairoi Ring",ring1="Ramuh Ring",
        back="Toutatis's Cape",waist="Wanion Belt",legs="Pillager's culottes +1",feet="Taeon Boots"}
        
    sets.WS.SA.Evisceration = set_combine(sets.WS.Evisceration,{hands="Skulker's Armlets +1"})

    sets.WS["Rudra's Storm"] = {ammo="Yetshila",
			head="Pillager's Bonnet +1",neck="Caro Necklace",ear1="Ishvara Earring",ear2="Dominance Earring +1",
        body="Pillager's vest +1",hands="Taeon Gloves",ring2="Apate Ring",ring1="Ramuh Ring",
        back="Toutatis's Cape",waist="Wanion Belt",legs="Samnuha Tights",feet="Taeon Boots"}
        
    sets.WS.SA["Rudra's Storm"] = set_combine(sets.WS["Rudra's Storm"],{hands="Skulker's Armlets +1",legs="Pillager's Culottes +1"})
        
    sets.WS.TA["Rudra's Storm"] = set_combine(sets.WS["Rudra's Storm"],{hands="Pillager's Armlets +1",legs="Pillager's Culottes +1"})
    
	sets.WS.SATA["Rudra's Storm"] = sets.WS.SA["Rudra's Storm"]
    
        
	sets.WS['Aeolian Edge'] = {head="Highwing Helm",neck="Sanctity Necklace",ear1="Crematio Earring",ear2="Hecate's Earring",
        body="Rawhide Vest",hands="Leyline Gloves",ring1="Ramuh Ring",ring2="Epona's Ring",
        back="Izdubar mantle",waist="Wanion Belt",legs="Limbo Trousers",feet="Herculean Boots"}
	
    sets.WS.Exenterator = {head="Herculean Helm",neck="Houyi's Gorget",ear1="Steelflash Earring",ear2="Bladeborn Earring",
        body="Dread Jupon",hands="Taeon Gloves",ring1="Stormsoul Ring",ring2="Apate Ring",
        back="Vespid Mantle",waist="Prosilio Belt",legs="Herculean Trousers",feet="Herculean Boots"}

    sets.WS.TA.Exenterator = {head="Herculean Helm",neck="Houyi's Gorget",ear1="Steelflash Earring",ear2="Bladeborn Earring",
        body="Pillager's vest +1",hands="Pillager's Armlets +1",ring1="Stormsoul Ring",ring2="Apate Ring",
        back="Vespid Mantle",waist="Prosilio Belt",legs="Pillager's Culottes +1",feet="Herculean Boots"}
        
    sets.WS.SATA.Exenterator = sets.WS.TA.Exenterator
    
    sets.WS['Mercy Stroke'] = {ammo="Yetshila",
		head="Whirlpool Mask",neck="Caro Necklace",ear1="Brutal Earring",ear2="Ishvara Earring",
        body="Skulker's Vest +1",hands="Taeon Gloves",ring1="Pyrosoul Ring",ring2="Apate Ring",
        back="Toutatis's Cape",waist="Prosilio Belt",legs="Samnuha Tights",feet="Taeon Boots"}
    
    sets.WS.SA['Mercy Stroke'] = set_combine(sets.WS["Mercy Stroke"],{head="Pillager's Bonnet +1", body="Plunderer's vest +1",
		hands="Skulker's Armlets +1",legs="Pillager's Culottes +1"})
    
    sets.WS.TA['Mercy Stroke'] = set_combine(sets.WS["Mercy Stroke"],{head="Pillager's Bonnet +1", body="Plunderer's vest +1",
		hands="Pillager's Armlets +1",legs="Pillager's Culottes +1"})
	
	sets.WS.SATA['Mercy Stroke'] = sets.WS.SA['Mercy Stroke']
	
	sets.WS["Mandalic Stab"] = {ammo="Yetshila",
		head="Pillager's Bonnet +1",neck="Caro Necklace",ear1="Ishvara Earring",ear2="Dominance Earring +1",
        body="Pillager's vest +1",hands="Taeon Gloves",ring2="Apate Ring",ring1="Ramuh Ring",
        back="Toutatis's Cape",waist="Wanion Belt",legs="Samnuha Tights",feet="Taeon Boots"}
		
	 sets.WS.SA["Mandalic Stab"] = set_combine(sets.WS["Mandalic Stab"],{hands="Skulker's Armlets +1",legs="Pillager's Culottes +1"})
        
    sets.WS.TA["Mandalic Stab"] = set_combine(sets.WS["Mandalic Stab"],{hands="Pillager's Armlets +1",legs="Pillager's Culottes +1"})
    
	sets.WS.SATA["Mandalic Stab"] = sets.WS.SA["Mandalic Stab"]
    
    TP_Set_Names = {"Low Man","TH","TH2","Acc","Acc+1","Acc+2"}
    sets.TP = {}
	sets.TP.MDT = {}
	sets.TP.Special = {}
	
    sets.TP['Low Man'] = {ammo="Yetshila",
        head="Skulker's Bonnet +1",neck="Nefarious Collar",ear1="Suppanomimi",ear2="Eabani Earring",
        body="Skulker's Vest +1",hands="Skulker's Armlets +1",ring1="Hetairoi Ring",ring2="Epona's Ring",
        back="Toutatis's Cape",waist="Windbuffet Belt +1",legs="Skulker's Culottes +1",feet="Plunderer's Poulaines +1"}
        
    sets.TP['TH'] = {ammo="Yetshila",
        head="Skulker's Bonnet +1",neck="Nefarious Collar",ear1="Suppanomimi",ear2="Eabani Earring",
        body="Skulker's Vest +1",hands="Plun. Armlets +1",ring1="Hetairoi Ring",ring2="Epona's Ring",
        back="Toutatis's Cape",waist="Windbuffet Belt +1",legs="Skulker's Culottes +1",feet="Skulker's Poulaines +1"}
		
	sets.TP['TH2'] = {Ammo="Falcon Eye",
        head="Herculean Helm",neck="Combatant's Torque",ear2="Zennaroi earring",ear1="Dignitary's Earring",
        body="Herculean Vest",hands="Plun. Armlets +1",ring1="Patricius Ring",ring2="Fortified Ring",
        back="Toutatis's Cape",waist="Olseni Belt",legs="Herculean Trousers",feet="Skulker's Poulaines +1"}
    
	sets.TP['Acc'] = {Ammo="Falcon Eye",
        head="Skulker's Bonnet +1",neck="Combatant's Torque",ear2="Bladeborn earring",ear1="Steelflash Earring",
        body="Skulker's Vest +1",hands="Floral Gauntlets",ring1="Hetairoi Ring",ring2="Epona's Ring",
        back="Toutatis's Cape",waist="Olseni Belt",legs="Samnuha Tights",feet="Taeon Boots"}
	
	sets.TP['Acc+1'] = {Ammo="Falcon Eye",
        head="Adhemar Bonnet",neck="Combatant's Torque",ear2="Cessance earring",ear1="Brutal Earring",
        body={ name="Herculean Vest", augments={'Attack+21','"Triple Atk."+4','Accuracy+15',}},hands="Adhemar Wristbands",ring1="Petrov Ring",ring2="Epona's Ring",
        back="Toutatis's Cape",waist="Kentarch Belt +1",legs="Samnuha Tights",feet={ name="Herculean Boots", augments={'"Triple Atk."+4','STR+10','Accuracy+9','Attack+8',}},}
    
	sets.TP['Acc+2'] = {ammo="Ginsen",
		head="Adhemar Bonnet",neck="Combatant's Torque",ear2="Cessance earring",ear1="Brutal Earring",
        body={ name="Herculean Vest", augments={'Attack+21','"Triple Atk."+4','Accuracy+15',}},hands="Adhemar Wristbands",ring1="Petrov Ring",ring2="Epona's Ring",
        back="Toutatis's Cape",waist="Kentarch Belt +1",legs="Samnuha Tights",feet={ name="Herculean Boots", augments={'"Triple Atk."+4','STR+10','Accuracy+9','Attack+8',}},}
	
	sets.TP.Special = set_combine(sets.TP[TP_Set_Names[TP_Index]],
	{feet="Herculean Boots"})
	
	sets.TP.MDT = set_combine(sets.TP[TP_Set_Names[TP_Index]],
	{head="Herculean Helm", ear2="Etiolation Earring", ring2="Fortified Ring", back="Xucau Mantle"})
	
        
    --sets.TP['Delay Cap'] = {range="Raider's Bmrng.",
    --    head="Uk'uxkaj Cap",neck="Asperity Necklace",ear1="Steelflash Earring",ear2="Bladeborn Earring",
    --    body="Pillager's vest +1",hands="Pill. Armlets +1",ring1="Rajas Ring",ring2="Epona's Ring",
    --    back="Rancorous Mantle",waist="Windbuffet Belt +1",legs="Pill. Culottes +1",feet="Plunderer's Poulaines +1"}
        
    --sets.TP.Evasion = {
    --    head="Uk'uxkaj Cap",neck="Ej Necklace +1",ear1="Novia Earring",ear2="Phawaylla Earring",
    --    body="Pillager's vest +1",hands="Pill. Armlets +1",ring1="Beeline Ring",ring2="Epona's Ring",
    --    back="Fugacity Mantle +1",waist="Kasiri Belt",legs="Pill. Culottes +1",feet="Plunderer's Poulaines +1"}
    
    Idle_Set_Names = {'Normal','MDT'}
    sets.Idle = {}
    sets.Idle.Normal = {head="Uk'uxkaj Cap",neck="Loricate Torque +1",ear1="Infused Earring",ear2="Etiolation Earring",
        body="Kheper Jacket",hands="Herculean Gloves",ring2={ name="Dark Ring", augments={'Phys. dmg. taken -4%','Magic dmg. taken -6%',}},ring1="Defending Ring",
       back="Xucau Mantle",waist="Flume Belt",legs="Taeon Tights",feet="Pillager's Poulaines +1"}
                
    --sets.Idle.MDT = {head="Uk'uxkaj Cap",neck="Twilight Torque",ear1="Merman's Earring",ear2="Bladeborn Earring",
    --    body="Avalon Breastplate",hands="Iuitl Wristbands +1",ring1="Defending Ring",ring2="Dark Ring",
    --    back="Mollusca Mantle",waist="Wanion Belt",legs="Nahtirah Trousers",feet="Skadi's Jambeaux +1"}

    send_command('input /macro book 8;wait .1;input /macro set 1')
    
end

function precast(spell)
    if sets.JA[spell.english] then
        equip(sets.JA[spell.english])
	elseif spell.type=="Ninjutsu" then
		equip(sets.ninjutsu)
	elseif spell.type=="Trust" then
		equip(sets.trust)
    elseif spell.type=="WeaponSkill" then
        if buffactive['sneak attack'] and buffactive['trick attack'] and sets.WS.SATA[spell.english] then equip(sets.WS.SATA[spell.english])
        elseif buffactive['sneak attack'] and sets.WS.SA[spell.english] then equip(sets.WS.SA[spell.english])
        elseif buffactive['trick attack'] and sets.WS.TA[spell.english] then equip(sets.WS.TA[spell.english])
		elseif sets.WS[spell.english] then equip(sets.WS[spell.english]) end
    elseif string.find(spell.english,'Waltz') then
        equip(sets.JA.Waltz)
    end
end

function aftercast(spell)
    if player.status=='Engaged' then
		if MDT == false then
        equip(sets.TP[TP_Set_Names[TP_Index]])
		else
		equip(sets.TP.MDT)
		sets.TP.Special = sets.TP.MDT
		end
		if buffactive['sneak attack'] then equip(sets.JA["Sneack Attack"]) end
    else
        equip(sets.Idle[Idle_Set_Names[Idle_Index]])
    end
end

function status_change(new,old)
    if T{'Idle','Resting'}:contains(new) then
        equip(sets.Idle[Idle_Set_Names[Idle_Index]])
    elseif new == 'Engaged' then
		if MDT == false then
        equip(sets.TP[TP_Set_Names[TP_Index]])
		sets.TP.Special = set_combine(sets.TP[TP_Set_Names[TP_Index]],
	{feet="Herculean Boots"})
		else
		equip(sets.TP.MDT)
		sets.TP.Special = sets.TP.MDT
		end
		if  string.find(player.equipment.main,'Taming Sari') and string.find(player.equipment.sub,'Sandung') then
			equip(sets.TP.Special)
		end
		if buffactive['sneak attack'] then equip(sets.JA["Sneack Attack"]) end
	end
end

function buff_change(buff,gain)
    if buff=="Sneak Attack" then
        soloSA = gain
		if soloSA == true then
			equip(sets.JA["Sneack Attack"])
		else
			if player.status=='Engaged' then
				if MDT == false then
				equip(sets.TP[TP_Set_Names[TP_Index]])
				else
				equip(sets.TP.MDT)
				sets.TP.Special = sets.TP.MDT
				end
				if  string.find(player.equipment.main,'Taming Sari') and string.find(player.equipment.sub,'Sandung') then
					equip(sets.TP.Special)
				end
				else
				equip(sets.Idle[Idle_Set_Names[Idle_Index]])
			end
		end
    elseif buff=="Trick Attack" then
        soloTA = gain_or_loss
    end
end

function self_command(command)
    if command == 'toggle tp set' then
        TP_Index = TP_Index +1
        if TP_Index > #TP_Set_Names then TP_Index = 1 end
        send_command('@input /echo ----- TP Set changed to '..TP_Set_Names[TP_Index]..' -----')
		sets.TP.MDT = set_combine(sets.TP[TP_Set_Names[TP_Index]],{head="Herculean Helm",ear2="Etiolation Earring", ring2="Fortified Ring", back="Xucau Mantle"})
        if MDT == false then
		equip(sets.TP[TP_Set_Names[TP_Index]])
		sets.TP.Special = set_combine(sets.TP[TP_Set_Names[TP_Index]],
	{feet="Herculean Boots"})
		else
		equip(sets.TP.MDT)
		sets.TP.Special = sets.TP.MDT
		end
		elseif command == 'toggle Idle set' then
        Idle_Index = Idle_Index +1
        if Idle_Index > #Idle_Set_Names then Idle_Index = 1 end
        send_command('@input /echo ----- Idle Set changed to '..Idle_Set_Names[Idle_Index]..' -----')
        equip(sets.Idle[Idle_Set_Names[Idle_Index]])
	end
	
	if command == 'toggle mdt' then
		if MDT == false then
		send_command('@input /echo MDT ON')
		equip(sets.TP.MDT)
		sets.TP.Special = sets.TP.MDT
		MDT = true
		else
		send_command('@input /echo MDT OFF')
		send_command('@input /echo ----- TP Set changed to '..TP_Set_Names[TP_Index]..' -----')
        equip(sets.TP[TP_Set_Names[TP_Index]])
		sets.TP.Special = set_combine(sets.TP[TP_Set_Names[TP_Index]],
	{feet="Herculean Boots"})
		MDT = false
		end
    end
end