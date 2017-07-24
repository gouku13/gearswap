    -- *** Credit goes to Flippant for helping me with Gearswap *** --
    -- ** I use Byrth's functions ** --
    -- Last Updated: 03/15/14 8:30 PM *Fixed Resting Set* --
     --include('brdbox.lua')
    function get_sets()
            AccIndex = 1
            AccArray = {"LowACC","MidACC","HighACC"} -- 3 Levels Of Accuracy Sets For TP/WS. Default ACC Set Is LowACC. The First TP Set Is LowACC. Add More ACC Sets If Needed Then Create Your New ACC Below --
            IdleIndex = 1
            IdleArray = {"Movement","PDT"} -- Default Idle Set Is Movement --
            timer_reg = {}
            pianissimo_cycle = false
            target_distance = 5 -- Set Default Distance Here --
            send_command('input /macro book 4;input /macro set 1') -- Change Default Macro Book Here --
     
            -- Daurdabla Trigger Songs --
            DaurdSongs = S{"Army's Paeon","Army's Paeon II","Army's Paeon III","Army's Paeon IV","Army's Paeon V","Army's Paeon VI","Shining Fantasia","Herb Pastoral","Goblin Gavotte", "Dextrous Etude"}
     
            Cure_Spells = {"Cure","Cure II","Cure III","Cure IV"} -- Cure Degradation --
            Curaga_Spells = {"Curaga","Curaga II"} -- Curaga Degradation --
			
			Non_Obi_Spells = S{
			'Burn','Choke','Drown','Frost','Rasp','Shock','Impact',
			'Anemohelix','Cryohelix','Geohelix','Hydrohelix','Ionohelix','Luminohelix','Noctohelix','Pyrohelix',
			'Wasp Sting','Gust Slash','Shadowstitch','Viper Bite','Cyclone','Energy Steal','Energy Drain','Evisceration','Aeolian Edge','Exenterator','Rudra\'s Storm','Mordant Rime',
			'Sword Madrigal','Blade Madrigal','Valor Minuet','Valor Minuet II','Valor Minuet III','Valor Minuet IV','Valor Minuet V','Advancing March','Victory March','Honor March',
			'Hunter\'s Prelude','Archer\'s Prelude','Mage\'s Ballad','Mage\'s Ballad II','Mage\'s Ballad III',}
			
            sc_map = {SC1 = "ChocoboMazurka", SC2 = "HerbPastoral", SC3 = "GoblinGavotte"} -- 3 Additional Binds. Can Change Whatever JA/WS/Spells You Like Here. Remember Not To Use Spaces. --
     
            -- Idle Sets --
            sets.Idle = {}
            sets.Idle.Movement = {
                            main="Sangoma",
							sub="Genmei Shield",
                            range="Marsyas",
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
                            feet="Fili Cothurnes +1"}
            sets.Idle.PDT = set_combine(sets.Idle.Movement,{
                            head="Bihu Roundlet +1",
							body="Brioso Justaucorps +3",
							hands="Bihu Cuffs +1",
                            legs="Bihu Cannions +1"})
            sets.Resting = set_combine(sets.Idle.Movement,{})
     
            -- JA Sets --
            sets.JA = {}
            sets.JA.Nightingale = {feet="Bihu Slippers +1"}
            sets.JA.Troubadour = {body="Bihu Justaucorps +1"}
            sets.JA["Soul Voice"] = {legs="Bihu Cannions +1"}
     
            -- Song Precast Set --
            sets.Precast = {}
            sets.Precast.SongCast = {
							main="Kali",
                            head="Fili Calot +1",
                            neck="Orunmila's torque",
							ear1="Loquacious Earring",
                            ear2="Enchntr. Earring +1",
                            body="Inyanga Jubbah +1", 
                            hands="Gende. Gages +1",
                            ring1="Kishar Ring",
                            ring2="Rahab Ring",
                            back="Intarabus's Cape",
                            waist="Witful Belt",
                            legs={ name="Chironic Hose", augments={'Accuracy+7','STR+14','"Fast Cast"+7','Accuracy+17 Attack+17','Mag. Acc.+12 "Mag.Atk.Bns."+12',}},
                            feet="Telchine Pigaches"}
			
			sets.Precast['Honor March'] = {range="Marsyas"}
     
            -- Elemental Staves --
            sets.Precast.Thunder = {main="Carnwenhan",sub="Ammurapi Shield"}
            sets.Precast.Water = {main="Carnwenhan",sub="Ammurapi Shield"}
            sets.Precast.Fire = {main="Carnwenhan",sub="Ammurapi Shield"}
            sets.Precast.Ice = {main="Carnwenhan",sub="Ammurapi Shield"}
            sets.Precast.Wind = {main="Carnwenhan",sub="Ammurapi Shield"}
            sets.Precast.Earth = {main="Carnwenhan",sub="Ammurapi Shield"}
            sets.Precast.Light = {main="Carnwenhan",sub="Ammurapi Shield"}
            sets.Precast.Dark = {main="Carnwenhan",sub="Ammurapi Shield"}
     
            -- Precast Daurdabla Set --
            sets.Precast.Daurdabla = {
							main="Kali",
                            range="Daurdabla",
                            head="Fili Calot +1",
                            neck="Orunmila's torque",
                            ear1="Loquac. Earring",
                            ear2="Enchntr. Earring +1",
                            body="Inyanga Jubbah +1",
                            hands="Gende. Gages +1",
                            ring1="Kishar Ring",
                            ring2="Rahab Ring",
                            back="Intarabus's Cape",
                            waist="Witful Belt",
                            legs={ name="Chironic Hose", augments={'Accuracy+7','STR+14','"Fast Cast"+7','Accuracy+17 Attack+17','Mag. Acc.+12 "Mag.Atk.Bns."+12',}},
                            feet="Telchine pigaches"}
     
            -- Fastcast Set --
            sets.Precast.FastCast = {
							main="Kali",
                            head="Vanya Hood",
                            neck="Orunmila's Torque",
                            ear1="Loquac. Earring",
							ear2="Enchntr. Earring +1",
                            body="Inyanga jubbah +1",
                            hands="Gende. Gages +1",
                            ring1="Kishar Ring",
                            ring2="Rahab Ring",
                            back="Intarabus's Cape",
                            waist="Witful Belt",
                            legs={ name="Chironic Hose", augments={'Accuracy+7','STR+14','"Fast Cast"+7','Accuracy+17 Attack+17','Mag. Acc.+12 "Mag.Atk.Bns."+12',}},
							feet={name="Chironic Slippers", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','"Fast Cast"+5','Mag. Acc.+2','"Mag.Atk.Bns."+9',}},}
     
            -- Cure Precast Set --
            sets.Precast.Cure = {
							main="Kali",
                            head="Vanya Hood",
                            neck="Orunmila's Torque",
							ear1="Loquac. Earring",
							ear2="Enchntr. Earring +1",
                            body="Inyanga jubbah +1",
                            hands="Gende. Gages +1",
                            ring1="Kishar Ring",
                            ring2="Rahab Ring",
                            back="Intarabus's Cape",
                            waist="Witful Belt",
                            legs={ name="Chironic Hose", augments={'Accuracy+7','STR+14','"Fast Cast"+7','Accuracy+17 Attack+17','Mag. Acc.+12 "Mag.Atk.Bns."+12',}},
							feet={name="Chironic Slippers", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','"Fast Cast"+5','Mag. Acc.+2','"Mag.Atk.Bns."+9',}},}
     
            -- Midcast Base Set --
            sets.Midcast = {
                            head="Vanya Hood",
                            neck="Orunmila's Torque",
                            ear1="Loquac. Earring",
							ear2="Enchntr. Earring +1",
                            body="Inyanga jubbah +1",
                            hands="Gende. Gages +1",
                            ring1="Kishar Ring",
                            ring2="Rahab Ring",
                            back="Intarabus's Cape",
                            waist="Tempus Fugit",
                            legs="Aya. Cosciales +1",
                            feet={name="Chironic Slippers", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','"Fast Cast"+5','Mag. Acc.+2','"Mag.Atk.Bns."+9',}},}
     
            -- Song Debuff Set --
            sets.Midcast.Wind = {
                            main="Carnwenhan",
							sub="Ammurapi Shield",
                            range="Gjallarhorn",
                            head="Brioso Roundlet +3",
                            neck="Moonbow Whistle +1",
							ear1="Dignitary's Earring",
                            ear2="Regal Earring",
                            body="Brioso Justau. +3",
                            hands="Inyanga dastanas +1",
                            ring1="Stikini Ring",
                            ring2="Stikini Ring",
                            back="Intarabus's Cape",
                            waist="Luminary Sash",
                            legs="Brioso Cannions +3",
                            feet="Brioso Slippers +3"}
     
            -- Song Buff Set --
            sets.Midcast.WindBuff = {
                            main="Carnwenhan",
							sub="Genmei Shield",
                            range="Gjallarhorn",
                            head="Fili Calot +1",
                            neck="Moonbow Whistle +1",
                            ear1="Etiolation Earring",
                            ear2="Genmei Earring",
                            body="Fili hongreline +1",
                            hands="Fili Manchettes +1",
                            ring1="Dark Ring",
                            ring2="Defending Ring",
                            back="Intarabus's Cape",
                            waist="Tempus Fugit",
                            legs="Inyanga Shalwar +1",
                            feet="Brioso Slippers +3"}
     
            sets.Midcast.March = {hands="Fili Manchettes +1"}
			sets.Midcast['Honor March'] = set_combine(sets.Midcast.WindBuff,{range="Marsyas",hands="Fili Manchettes +1"})
            sets.Midcast.Minuet = {body="Fili hongreline +1"}
			sets.Midcast.Prelude = {back="Intarabus's cape"}
            sets.Midcast.Madrigal = {head="Fili Calot +1",back="Intarabus's cape"}
            sets.Midcast.Ballad = {legs="Fili rhingrave +1"}
            sets.Midcast.Scherzo = {feet="Fili Cothurnes +1"}
            sets.Midcast.Mazurka = {head="Fili Calot +1"}
            sets.Midcast.Paeon = {head="Brioso Roundlet +3"}
            sets.Midcast.Finale = {}
            sets.Midcast.Lullaby = {
							main="Carnwenhan",range="Marsyas",
							neck="Moonbow Whistle +1",
							body="Fili Hongreline +1",hands="Brioso cuffs +2",
							legs="Inyanga Shalwar +1",feet="Brioso Slippers +3"}
     
            -- Cure Set --
            sets.Midcast.Cure = {
                            main="Kali",
							sub="Ammurapi Shield",
							head="Vanya Hood",
							neck="Incanter's Torque",
							ear1="Mendi. Earring",
							ear2="Enchntr. Earring +1",
							body="Vrikodara Jupon",
							hands="Gende. Gages +1",
							ring1="Lebeche Ring",
							ring2="Kishar Ring",
							back="Intarabus's Cape",
							waist="Ninurta's Sash",	
                            legs={ name="Chironic Hose", augments={'Accuracy+7','STR+14','"Fast Cast"+7','Accuracy+17 Attack+17','Mag. Acc.+12 "Mag.Atk.Bns."+12',}},
                            feet="Medium's Sabots"}
     
            -- Curaga Set --
            sets.Midcast.Curaga = {
                            main="Kali",
							sub="Ammurapi Shield",
							head="Vanya Hood",
							neck="Incanter's Torque",
							ear1="Mendi. Earring",
							ear2="Enchntr. Earring +1",
							body="Vrikodara Jupon",
							hands="Gende. Gages +1",
							ring1="Lebeche Ring",
							ring2="Kishar Ring",
							back="Intarabus's Cape",
							waist="Ninurta's Sash",	
                            legs={ name="Chironic Hose", augments={'Accuracy+7','STR+14','"Fast Cast"+7','Accuracy+17 Attack+17','Mag. Acc.+12 "Mag.Atk.Bns."+12',}},
                            feet="Medium's Sabots"}
     
            -- Haste Set --
            sets.Midcast.Haste = set_combine(sets.Precast.FastCast,{
                            main="Kali",
							sub="Ammurapi Shield",
							head="Telchine Cap",
                            neck="Orunmila's Torque",
                            ear1="Loquac. Earring",
                            body="Telchine Chasuble",
                            hands="Telchine Gloves",
                            ring1="Prolix Ring",
                            ring2="Kishar Ring",
                            back="Intarabus's Cape",
                            waist="Witful Belt",
                            legs="Telchine Braconi",
                            feet="Telchine Pigaches"})
							
			sets.Midcast.Flurry = set_combine(sets.Precast.FastCast,{		
							main="Kali",
							sub="Ammurapi Shield",
							head="Telchine Cap",
                            neck="Orunmila's Torque",
                            ear1="Loquac. Earring",
                            body="Telchine Chasuble",
                            hands="Telchine Gloves",
                            ring1="Prolix Ring",
                            ring2="Kishar Ring",
                            back="Intarabus's Cape",
                            waist="Witful Belt",
                            legs="Telchine Braconi",
                            feet="Telchine Pigaches"})
							
			sets.Midcast.Aquaveil = set_combine(sets.Precast.FastCast,{		
							main="Kali",
							sub="Ammurapi Shield",
							head="Chironic Hat",
                            neck="Orunmila's Torque",
                            ear1="Loquac. Earring",
                            body="Telchine Chasuble",
                            hands="Telchine Gloves",
                            ring1="Prolix Ring",
                            ring2="Kishar Ring",
                            back="Intarabus's Cape",
                            waist="Emphatikos Rope",
                            legs="Telchine Braconi",
                            feet="Telchine Pigaches"})
							
			sets.Midcast.Stoneskin = set_combine(sets.Precast.FastCast,{		
							main="Kali",
							sub="Ammurapi Shield",
							head="Chironic Hat",
                            neck="Orunmila's Torque",
                            ear1="Loquac. Earring",
                            body="Telchine Chasuble",
                            hands="Telchine Gloves",
                            ring1="Prolix Ring",
                            ring2="Kishar Ring",
                            back="Intarabus's Cape",
                            waist="Siegel Sash",
                            legs="Telchine Braconi",
                            feet="Telchine Pigaches"})
							
			sets.Midcast.Dia = set_combine(sets.Precast.FastCast,{
							hands={ name="Chironic Gloves", augments={'MND+8','"Treasure Hunter"+2','Accuracy+11 Attack+11','Mag. Acc.+16 "Mag.Atk.Bns."+16',}},
							legs={ name="Chironic Hose", augments={'Pet: "Dbl. Atk."+1','"Cure" spellcasting time -8%','"Treasure Hunter"+2',}}})
     
            -- Cursna Set --
            sets.Midcast.Cursna = set_combine(sets.Precast.FastCast,{
                            ring1="Haoma's Ring",
                            ring2="Haoma's Ring",
                            feet="Gendewitha Galoshes +1"})
     
            -- Melee Sets --
            sets.Melee = {
							main="Carnwenhan",
							sub="Genmei shield",
							head="Ayanmo zucchetto +1",
							body="Ayanmo corazza +1",
							hands="Ayanmo manopolas +1",
							legs="Ayanmo cosciales +1",
							feet="Aya. Gambieras +1",
							back="Lupine cape",
							waist="Kentarch belt +1",
							neck="Lissome necklace",
							ear1="Telos earring",
							ear2="Dedition earring",
							ammo="Ginsen",
							ring1="Ilabrat ring",
							ring2="Cacoethic ring +1"}
            sets.Melee.MidACC = set_combine(sets.Melee,{})
            sets.Melee.HighACC = set_combine(sets.Melee.MidACC,{})
     
            -- WS Base Set --
            sets.WS = {
							main="Carnwenhan",
							sub="Genmei shield",}
			
			sets.WS["Wasp Sting"] = set_combine(sets.WS,{})
			
			sets.WS["Viper Bite"] = set_combine(sets.WS,{})
			
			sets.WS.Shadowstitch = set_combine(sets.WS,{})
			sets.WS.Shadowstitch.MidACC = set_combine(sets.WS.Shadowstitch,{})
			sets.WS.Shadowstitch.HighACC = set_combine(sets.WS.Shadowstitch.MidACC,{})
			
			sets.WS["Gust Slash"] = set_combine(sets.WS,{})
			
			sets.WS.Cyclone = set_combine(sets.WS,{})
			
			sets.WS["Energy Steal"] = set_combine(sets.WS,{})
			
			sets.WS["Energy Drain"] = set_combine(sets.WS,{})
			
            sets.WS.Evisceration = set_combine(sets.WS,{})
            sets.WS.Evisceration.MidACC = set_combine(sets.WS.Evisceration,{})
            sets.WS.Evisceration.HighACC = set_combine(sets.WS.Evisceration.MidACC,{})
			
			sets.WS["Aeolian Edge"] = set_combine(sets.WS,{})
			
			sets.WS["Rudra's Storm"] = set_combine(sets.WS,{})
			sets.WS["Rudra's Storm"].MidACC = set_combine(sets.WS["Rudra's Storm"],{})
			sets.WS["Rudra's Storm"].HighACC = set_combine(sets.WS["Rudra's Storm"].MidACC,{})
			
			sets.WS.Exenterator = set_combine(sets.WS,{})
            sets.WS.Exenterator.MidACC = set_combine(sets.WS.Exenterator,{})
            sets.WS.Exenterator.HighACC = set_combine(sets.WS.Exenterator.MidACC,{})
			
			sets.WS["Mordant Rime"] = set_combine(sets.WS,{})
			sets.WS["Mordant Rime"].MidACC = set_combine(sets.WS["Mordant Rime"],{})
			sets.WS["Mordant Rime"].HighACC = set_combine(sets.WS["Mordant Rime"].MidACC,{})
     
    end
     
    function pretarget(spell,action)
            if (spell.type:endswith('Magic') or spell.type == "BardSong" or spell.type == "Ninjutsu") and buffactive.silence then -- Auto Use Echo Drops If You Are Silenced --
                    cancel_spell()
                    send_command('input /item "Echo Drops" <me>')
            elseif spell.type == "BardSong" and spell.target.name == player.name and buffactive.Pianissimo then -- Change Target From <me> To <t> When Pianissimo Is Active --
                    change_target('<t>')
            elseif spell.type == 'BardSong' and spell.target.type and spell.target.type == 'PLAYER' and not buffactive.Pianissimo and not spell.target.charmed and not pianissimo_cycle then -- Auto Pianoissimo When You Cast A Song On A Player --
                    cancel_spell()
                    pianissimo_cycle = true
                    send_command('input /ja "Pianissimo" <me>;wait 1.5;input /ma "'..spell.name..'" '..spell.target.name..';')
                    return
            elseif spell.english:ifind("Cure") and player.mp<actualCost(spell.mp_cost) then
                    degrade_spell(spell,Cure_Spells)
            elseif spell.english:ifind("Curaga") and player.mp<actualCost(spell.mp_cost) then
                    degrade_spell(spell,Curaga_Spells)
            end
            if spell.name ~= 'Pianissimo' then
                    pianissimo_cycle = false
            end
    end
     
    function precast(spell,action)
            if spell.type:endswith('Magic') or spell.type == "BardSong" or spell.type == "Ninjutsu" then
                    if buffactive.silence or spell.target.distance > 16+target_distance then -- Cancel Magic or Ninjutsu or BardSong If You Are Silenced or Out of Range --
                            cancel_spell()
                            add_to_chat(123, spell.name..' Canceled: [Silenced or Out of Casting Range]')
                            return
                    else
                            if spell.type == 'BardSong' then
                                    if buffactive.nightingale then
                                            equip_song_gear(spell)
                                            return
                                    else
                                            equip_song_gear(spell)
                                            equip(sets.Precast.SongCast)
                                    end
                            elseif string.find(spell.english,'Cur') and spell.english ~= "Cursna" then
                                    equip(sets.Precast.Cure)
                            elseif string.find(spell.english,'Utsusemi') then
                                    if buffactive['Copy Image (3)'] or buffactive['Copy Image (4)'] then
                                            cancel_spell()
                                            add_to_chat(123, spell.english .. ' Canceled: [3+ Images]')
                                            return
                                    else
                                            equip(sets.Precast.FastCast)
                                    end
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
                            if spell.english == "Evisceration" and player.tp > 299 then
                                    equipSet = set_combine(equipSet,{ear1="Jupiter's Pearl"})
                            end
                            equip(equipSet)
                    end
            elseif spell.type == "JobAbility" then
                    if sets.JA[spell.english] then
                            equip(sets.JA[spell.english])
                    end
            elseif spell.english == 'Spectral Jig' and buffactive.Sneak then
                    cast_delay(0.2)
                    send_command('cancel Sneak')
            end
            if sets.Precast[spell.element] then
                    equip(sets.Precast[spell.element])
            end
    end
     
    function midcast(spell,action)
            equipSet = {}
            if spell.type:endswith('Magic') or spell.type == 'Ninjutsu' then
                    equipSet = sets.Midcast
                    if equipSet[spell.english] then
                            equipSet = equipSet[spell.english]
                    elseif string.find(spell.english,'Cure') then
                            equipSet = equipSet.Cure
                    elseif string.find(spell.english,'Cura') then
                            equipSet = equipSet.Curaga
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
                    end
            end
            equip(equipSet)
            if spell.type == 'BardSong' then
                    equip_song_gear(spell)
            end
    end
     
    function aftercast(spell,action)
		local dur = calculate_duration(spell.name)
		local timernumber = tonumber(dur)
		if not spell.interrupted then
            if spell.type == 'BardSong' and spell.name ~= ('Magic Finale' or 'Pining Nocturne') and spell.target.type == 'MONSTER' then
                    local t = os.time()
     
                    local tempreg = {}
                    for i,v in pairs(timer_reg) do
                            if v < t then tempreg[i] = true end
                    end
                    for i,v in pairs(tempreg) do
                            timer_reg[i] = nil
                    end
                   
                    
                    if timer_reg[spell.name] then
                            if (timer_reg[spell.name] - t) <= 120 then
                                    send_command('timers delete "'..spell.name..'"')
                                    timer_reg[spell.name] = t + dur
                                    send_command('timers create "'..spell.name..'" '..dur..' down')
                            end
                    else
                            local maxsongs = 10
                            if maxsongs < table.length(timer_reg) then
                                    maxsongs = table.length(timer_reg)
                            end
                           
                            if table.length(timer_reg) < maxsongs then
                                    timer_reg[spell.name] = t+dur
                                    send_command('timers create "'..spell.name..'" '..dur..' down')
                            else
                                    local rep,repsong
                                    for i,v in pairs(timer_reg) do
                                            if t+dur > v then
                                                    if not rep or rep > v then
                                                            rep = v
                                                            repsong = i
                                                    end
                                            end
                                    end
                                    if repsong then
                                            timer_reg[repsong] = nil
                                            send_command('timers delete "'..repsong..'"')
                                            timer_reg[spell.name] = t+dur
                                            send_command('timers create "'..spell.name..'" '..dur..' down')
                                    end
                            end
                    end
            end
		end
            status_change(player.status)
			
			-------- Lullaby Timers -------
			if spell.name == "Horde Lullaby II" then
				--windower.send_command('wait '..(timernumber-30)..';input /echo [ WARNING! WE GONE DIE '..spell.name..' : Will wear off within 0:30')
				--windower.send_command('wait '..(timernumber-20)..';input /echo [ WARNING! '..spell.name..' : Will wear off within 0:20')
				--windower.send_command('wait '..(timernumber-15)..';input /echo [ WARNING! '..spell.name..' : Will wear off within 0:15 <call7>')
				--windower.send_command('wait '..(timernumber-10)..';input /echo [ WARNING! '..spell.name..' : Will wear off within 0:10')
				--windower.send_command('wait '..(timernumber-5)..';input /echo [ WARNING! '..spell.name..' : Will wear off within 0:05')
			end  
			
    end
     
    function status_change(new,old)
            if new == 'Engaged' then
                    equipSet = sets.Melee
                    if equipSet[AccArray[AccIndex]] then
                            equipSet = equipSet[AccArray[AccIndex]]
                    end
                    equip(equipSet)
            elseif new == 'Idle' then
                    equip(sets.Idle[IdleArray[IdleIndex]])
            elseif new == 'Resting' then
                    equip(sets.Resting)
            end
    end
     
    function buff_change(buff,gain)
            buff = string.lower(buff)
            if buff == "aftermath: lv.3" then -- AM3 Timer --
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
            if not midaction() then
                    status_change(player.status)
            end
    end
     
    -- In Game: //gs c (command), Macro: /console gs c (command), Bind: gs c (command) --
  --[[  function self_command(command)
            if command == 'C1' then
                    send_command('input /ma "Victory March" <me>')
                    add_to_chat(158,'Melee Speed II: [Victory March]')
            elseif command == 'C2' then
                    send_command('input /ma "Advancing March" <me>')
                    add_to_chat(158,'Melee Speed: [Advancing March]')
            elseif command == 'C3' then
                    send_command('input /ma "Valor Minuet V" <me>')
                    add_to_chat(158,'Melee Attack: [Valor Minuet V]')
            elseif command == 'C5' then
                    send_command('input /ma "Valor Minuet IV" <me>')
                    add_to_chat(158,'Melee Attack: [Valor Minuet IV]')
            elseif command == 'C7' then
                    send_command('input /ma "Hunter\'s Prelude" <me>')
                    add_to_chat(158,'Ranged Accuracy: [Hunter\'s Prelude]')
            elseif command == 'C15' then
                    send_command('input /ma "Archer\'s Prelude" <me>')
                    add_to_chat(158,'Ranged Accuracy: [Archer\'s Prelude]')
            elseif command == 'C9' then
                    send_command('input /ma "Blade Madrigal" <me>')
                    add_to_chat(158,'Melee Accuracy II: [Blade Madrigal]')
            elseif command == 'C10' then
                    send_command('input /ma "Sword Madrigal" <me>')
                    add_to_chat(158,'Melee Accuracy: [Sword Madrigal]')
            elseif command == 'C12' then
                    send_command('input /ma "Valor Minuet III" <me>')
                    add_to_chat(158,'Melee Attack: [Valor Minuet III]')
            elseif command == 'C8' then -- Distance Toggle --
                    if player.target.distance then
                            target_distance = math.floor(player.target.distance*10)/10
                            add_to_chat(158,'Distance: '..target_distance)
                    else
                            add_to_chat(123,'No Target Selected')
                    end
            elseif command == 'acc' then -- Accuracy Level Toggle --
                    AccIndex = (AccIndex % #AccArray) + 1
                    status_change(player.status)
                    add_to_chat(158,'Accuracy Level: ' .. AccArray[AccIndex])
            elseif command == 'C6' then -- Idle Toggle --
                    IdleIndex = (IdleIndex % #IdleArray) + 1
                    add_to_chat(158,'Idle Set: '..IdleArray[IdleIndex])
                    status_change(player.status)
            elseif command:match('^SC%d$') then
                    send_command('//' .. sc_map[command])
            end
    end
  --]]    
	
    function equip_song_gear(spell)
            if DaurdSongs:contains(spell.english) then
                    equip(sets.Precast.Daurdabla)
                    add_to_chat(158,'Daurdabla: [ON]')
            else
                    if spell.target.type == 'MONSTER' then
                            equip(sets.Midcast.Wind)
                            if string.find(spell.english,'Finale') then equip(sets.Midcast.Finale) end
                            if string.find(spell.english,'Lullaby') then equip(sets.Midcast.Lullaby) end
                    else
                           if spell.name ~= "Honor March" then
							equip(sets.Midcast.WindBuff)
                            if string.find(spell.english,'March') then equip(sets.Midcast.March) end
                            if string.find(spell.english,'Minuet') then equip(sets.Midcast.Minuet) end
                            if string.find(spell.english,'Madrigal') then equip(sets.Midcast.Madrigal) end
                            if string.find(spell.english,'Ballad') then equip(sets.Midcast.Ballad) end
                            if string.find(spell.english,'Scherzo') then equip(sets.Midcast.Scherzo) end
                            if string.find(spell.english,'Mazurka') then equip(sets.Midcast.Mazurka) end
                            if string.find(spell.english,'Paeon') then equip(sets.Midcast.Paeon) end
							if string.find(spell.english,'Prelude') then equip(sets.Midcast.Prelude) end
							else
								equip(sets.Midcast['Honor March'])
							end
                    end
            end
    end
     
    function calculate_duration(name)
            local mult = 1.05
            local totalDuration = 0
			if player.equipment.main == "Carnwenhan" or player.equipment.sub == "Carnwenhan" then mult = mult + 0.5 end
			if player.equipment.main == "Kali" or player.equipment.sub == "Kali" then mult = mult + 0.05 end
            if player.equipment.range == 'Daurdabla' then mult = mult + 0.3 end
            if player.equipment.range == "Gjallarhorn" then mult = mult + 0.4 end
			if player.equipment.range == "Marsyas" then mult = mult + 0.5 end
            if player.equipment.neck == "Moonbow Whistle +1" then mult = mult + 0.3 end
            if player.equipment.body == "Fili Hongreline +1" then mult = mult + 0.12 end
            if player.equipment.legs == "Inyanga Shalwar +1" then mult = mult + 0.15 end
            if player.equipment.feet == "Brioso Slippers +3" then mult = mult + 0.15 end
     
            if string.find(name,'Paeon') and player.equipment.head == 'Brioso Roundlet +3' then mult = mult + 0.1 end
            if string.find(name,'March') and player.equipment.hands == 'Fili Manchettes +1' then mult = mult + 0.1 end
            if string.find(name,'Minuet') and player.equipment.body == "Fili Hongreline +1" then mult = mult + 0.1 end
            if string.find(name,'Madrigal') and player.equipment.head == "Fili Calot +1" then mult = mult + 0.1 end
            if string.find(name,'Ballad') and player.equipment.legs == "Fili Rhingrave +1" then mult = mult + 0.1 end
            if string.find(name,'Scherzo') and player.equipment.feet == "Fili Cothurnes +1" then mult = mult + 0.1 end
			if string.find(name,'Lullaby') and player.equipment.hands == 'Brioso cuffs +2' then mult = mult + 0.1 end
     
            
			if string.find(name,'Scherzo') then
                    if buffactive['Soul Voice'] then
                            mult = mult*2
                    elseif buffactive['marcato'] then
                            mult = mult*1.5
                    end
            end
     
           
     
            
			if name =='Foe Lullaby II' or name=='Horde Lullaby II' then
			totalDuration = (60*mult)+20
			elseif name =='Foe Lullaby' or name=='Horde Lullaby' then
			totalDuration = (30*mult)+20
			else
			totalDuration = 120*mult
			end
			
			
			if buffactive['Clarion Call'] then totalDuration = totalDuration + 40 end
			if buffactive.Troubadour then totalDuration = totalDuration*2 end
			if buffactive['marcato'] and not buffactive['Soul Voice'] then totalDuration = totalDuration+20 end
            return totalDuration
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
            if spell_index>1 then
                    new_spell = degrade_array[spell_index - 1]
                    change_spell(new_spell,spell.target.raw)
                    add_to_chat(8,spell.name..' Canceled: ['..player.mp..'/'..player.max_mp..'MP::'..player.mpp..'%] Casting '..new_spell..' instead.')
            end
    end
     
    function change_spell(spell_name,target)
            cancel_spell()
            send_command('//'..spell_name..' '..target)
    end

