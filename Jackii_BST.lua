-------------------------------------------------------------------------------------------------------------------
-- ctrl+F12 cycles Idle modes


-------------------------------------------------------------------------------------------------------------------
							-- THE STUFF YOU CARE ABOUT STARTS AFTER LINE 101 --
							-- THE STUFF YOU CARE ABOUT STARTS AFTER LINE 101 --
							-- THE STUFF YOU CARE ABOUT STARTS AFTER LINE 101 --
							-- THE STUFF YOU CARE ABOUT STARTS AFTER LINE 101 --
							-- THE STUFF YOU CARE ABOUT STARTS AFTER LINE 101 --
							-- THE STUFF YOU CARE ABOUT STARTS AFTER LINE 101 --
							-- THE STUFF YOU CARE ABOUT STARTS AFTER LINE 101 --
							-- THE STUFF YOU CARE ABOUT STARTS AFTER LINE 101 --
							-- THE STUFF YOU CARE ABOUT STARTS AFTER LINE 101 --
-------------------------------------------------------------------------------------------------------------------
-- Initialization function that defines sets and variables to be used.
-------------------------------------------------------------------------------------------------------------------

-- IMPORTANT: Make sure to also get the Mote-Include.lua file (and its supplementary files) to go with this.

-- Initialization function for this job file.
function get_sets()
    mote_include_version = 2

	-- Load and initialize the include file.
	include('Mote-Include.lua')
end


function job_setup()
  get_combat_form()
  
 end


function user_setup()
        state.IdleMode:options('Normal', 'Reraise')
       
end
         
     

-- Complete list of Ready moves to use with Sic & Ready Recast -5 Desultor Tassets.
ready_moves_to_check = S{'Sic','Whirl Claws','Dust Cloud','Foot Kick','Sheep Song','Sheep Charge','Lamb Chop',
	'Rage','Head Butt','Scream','Dream Flower','Wild Oats','Leaf Dagger','Claw Cyclone','Razor Fang',
	'Roar','Gloeosuccus','Palsy Pollen','Soporific','Cursed Sphere','Venom','Geist Wall','Toxic Spit',
	'Numbing Noise','Nimble Snap','Cyclotail','Spoil','Rhino Guard','Rhino Attack','Power Attack',
	'Hi-Freq Field','Sandpit','Sandblast','Venom Spray','Mandibular Bite','Metallic Body','Bubble Shower',
	'Bubble Curtain','Scissor Guard','Big Scissors','Grapple','Spinning Top','Double Claw','Filamented Hold',
	'Frog Kick','Queasyshroom','Silence Gas','Numbshroom','Spore','Dark Spore','Shakeshroom','Blockhead',
	'Secretion','Fireball','Tail Blow','Plague Breath','Brain Crush','Infrasonics','??? Needles',
	'Needleshot','Chaotic Eye','Blaster','Scythe Tail','Ripper Fang','Chomp Rush','Intimidate','Recoil Dive',
	'Water Wall','Snow Cloud','Wild Carrot','Sudden Lunge','Spiral Spin','Noisome Powder','Wing Slap',
	'Beak Lunge','Suction','Drainkiss','Acid Mist','TP Drainkiss','Back Heel','Jettatura','Choke Breath',
	'Fantod','Charged Whisker','Purulent Ooze','Corrosive Ooze','Tortoise Stomp','Harden Shell','Aqua Breath',
	'Sensilla Blades','Tegmina Buffet','Molting Plumage','Swooping Frenzy','Pentapeck','Sweeping Gouge',
	'Zealous Snort','Somersault ','Tickling Tendrils','Stink Bomb','Nectarous Deluge','Nepenthic Plunge',
        'Pecking Flurry','Pestilent Plume','Foul Waters','Spider Web','Sickle Slash','Frogkick','Ripper Fang','Scythe Tail','Chomp Rush'}

		
mab_ready_moves = S{
	 'Cursed Sphere','Venom','Toxic Spit',
	 'Venom Spray','Bubble Shower',
	 'Fireball','Plague Breath',
	 'Snow Cloud','Acid Spray','Silence Gas','Dark Spore',
	 'Charged Whisker','Purulent Ooze','Aqua Breath','Stink Bomb',
	 'Nectarous Deluge','Nepenthic Plunge','Foul Waters','Dust Cloud','Sheep Song','Scream','Dream Flower','Roar','Gloeosuccus','Palsy Pollen',
	 'Soporific','Geist Wall','Numbing Noise','Spoil','Hi-Freq Field',
	 'Sandpit','Sandblast','Filamented Hold',
	 'Spore','Infrasonics','Chaotic Eye',
	 'Blaster','Intimidate','Noisome Powder','TP Drainkiss','Jettatura','Spider Web',
	 'Corrosive Ooze','Molting Plumage','Swooping Frenzy',
	 'Pestilent Plume',}


		
-- List of abilities to reference for applying Treasure Hunter +1 via Chaac Belt.


function file_unload()
	if binds_on_unload then
		binds_on_unload()
	end

	-- Unbinds the Jug Pet, Reward, Correlation, Treasure, PetMode, MDEF Mode hotkeys.
	send_command('unbind !=')
	send_command('unbind ^=')
	send_command('unbind !f8')
	send_command('unbind ^f8')
	send_command('unbind @f8')
	send_command('unbind ^f11')
end



		-- HERE IS THE BEGINNING OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED FOR EDITING GEAR --
		-- HERE IS THE BEGINNING OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED FOR EDITING GEAR --
		-- HERE IS THE BEGINNING OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED FOR EDITING GEAR --
		-- HERE IS THE BEGINNING OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED FOR EDITING GEAR --
		-- HERE IS THE BEGINNING OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED FOR EDITING GEAR --
		-- HERE IS THE BEGINNING OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED FOR EDITING GEAR --
		-- HERE IS THE BEGINNING OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED FOR EDITING GEAR --
		-- HERE IS THE BEGINNING OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED FOR EDITING GEAR --
		-- HERE IS THE BEGINNING OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED FOR EDITING GEAR --
		-- HERE IS THE BEGINNING OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED FOR EDITING GEAR --
		

-- BST gearsets
function init_gear_sets()


	-- PRECAST SETS
        sets.precast.JA['Killer Instinct'] = {head="Ankusa Helm +1"}
		
		sets.precast.JA['Bestial Loyalty'] = {hands="Ankusa Gloves +1",body="Mirke Wardecors",}
		
		sets.precast.JA['Call Beast'] = sets.precast.JA['Bestial Loyalty']
		
        sets.precast.JA.Familiar = {legs="Ankusa Trousers +1"}
		
		sets.precast.JA.Tame = {head="Totemic Helm +1",}
		
		sets.precast.JA.Spur = {feet="Nukumi Ocreae +1"}

        
	--This is what will equip when you use Reward.  No need to manually equip Pet Food Theta.
		sets.precast.JA.Reward = {
				body="Tot. Jackcoat +1",
				legs="Ankusa Trousers +1",
				waist="Engraved Belt",
				Ring1="Rufescent Ring",
				Ring2="Tjukurrpa Annulet",
				Ear1="Lifestorm Earring",
				Ear2="Static Earring",
				back="Pastoralist's Mantle",
				feet="Ankusa Gaiters +1"}

	--This is your base FastCast set that equips during precast for all spells/magic.
    sets.precast.FC = {
				ring2="Lebeche Ring",
				ammo="Impatiens",
				neck="Voltsurge Torque",
				head={ name="Taeon Chapeau", augments={'"Fast Cast"+2',}},
				body={ name="Taeon Tabard", augments={'Pet: "Mag.Atk.Bns."+23','"Fast Cast"+4',}},
				hands="Leyline Gloves",
				legs={ name="Taeon Tights", augments={'Pet: DEF+17','"Fast Cast"+4',}},
				feet={ name="Taeon Boots", augments={'Pet: "Mag.Atk.Bns."+24','"Fast Cast"+2',}},
				ring1="Prolix Ring",
				waist="Ninurta's Sash",}
			
         			
	sets.midcast.Stoneskin = {
			head="Taeon Chapeau",
			neck="Stone Gorget",
			ear1="Earthcry Earring",
			ear2="Lifestorm Earring",
			body="Totemic Jackcoat +1",
			hands="Stone Mufflers",
			ring1="Aquasoul Ring",
			ring2="Aquasoul Ring",
			back="Pastoralist's Mantle",
			waist="Crudelis Belt",
			legs="Haven Hose",
			feet="Amm Greaves"}

				
        -- WEAPONSKILLS
		
		
        -- Default weaponskill set.
	sets.precast.WS = {
			ammo="Cheruski Needle",
			head="Nukumi Cabasset +1",
			neck="Asperity Necklace",
			ear1="Flame Pearl",
			ear2="Brutal Earring",
			body="Nukumi Gausape +1",
			hands="Boor Bracelets",
			ring1="Pyrosoul Ring",
			ring2="Ifrit Ring",
			back="Buquwik Cape",
			waist="Windbuffet Belt +1",
			legs="Nukumi Quijotes +1",
			feet="Nukumi Ocreae +1"}

	
        -- Specific weaponskill sets.
    sets.precast.WS['Ruinator'] = set_combine(sets.precast.WS, {neck="Breeze Gorget"})
				
    sets.precast.WS['Onslaught'] = set_combine(sets.precast.WS, {
			ammo="Floestone",
            neck="Justiciar's Torque",
			ear1="Tati Earring +1",
			ear2="Brutal Earring",
			body="Mes'yohi Haubergeon",
			hands="Nomkahpa Mittens +1",
			ring1="Ramuh Ring +1",
            back="Vespid Mantle",
			legs="Mikinaak Cuisses",
			feet="Vanir Boots"})
			
		
	sets.precast.WS['Primal Rend'] = {
			head="Taeon Chapeau",
			body="Tot. Jackcoat +1",
			hands="Leyline Gloves",
			legs="Taeon Tights",
			feet="Taeon Boots",
			neck="Stoicheion Medal",
			waist="Salire Belt",
			left_ear="Hecate's Earring",
			right_ear="Friomisi Earring",
			left_ring="Epona's Ring",
			right_ring="Rajas Ring",
			back="Argocham. Mantle",}

	
		
	sets.precast.WS['Cloudsplitter'] = set_combine(sets.precast.WS['Primal Rend'],{ammo="Erlene's Notebook",
			head="Highwing Helm",
			neck="Stoicheion Medal",
			ear1="Moonshade Earring",
			ear2="Friomisi Earring",
			body="Taeon Tabard",
			hands="Taeon Gloves",
			ring1="Acumen Ring",
			ring2="Carb. Ring",
			back="Toro Cape",
			waist="Salire Belt",
			legs="Taeon Tights",
			feet="Taeon Boots",})

	-- PET SIC & READY MOVES


--This is your base Ready move set, activating for physical Ready moves. Merlin/D.Tassets are accounted for already. 
	sets.midcast.Pet.WS = {
			main={ name="Kumbhakarna", augments={'Pet: Mag. Acc.+19','Pet: "Regen"+2','Pet: TP Bonus+200',}},
            sub={ name="Kumbhakarna", augments={'Pet: "Mag.Atk.Bns."+20','Pet: Phys. dmg. taken -2%','Pet: TP Bonus+180',}},
            ammo="Demonry Core",
            head={ name="Valorous Mask", augments={'Pet: "Dbl.Atk."+2 Pet: Crit.hit rate +2','System: 1 ID: 1792 Val: 12','Pet: Accuracy+13 Pet: Rng. Acc.+13','Pet: Attack+15 Pet: Rng.Atk.+15',}},
            body={ name="Taeon Tabard", augments={'Pet: Accuracy+18 Pet: Rng. Acc.+18','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
            hands="Nukumi Manoplas +1",
            legs={ name="Valor. Hose", augments={'Pet: Attack+27 Pet: Rng.Atk.+27','System: 1 ID: 1793 Val: 1','Pet: Accuracy+10 Pet: Rng. Acc.+10',}},
            feet={ name="Valorous Greaves", augments={'Pet: Accuracy+26 Pet: Rng. Acc.+26','Pet: Phys. dmg. taken -3%','System: 1 ID: 1792 Val: 9','Pet: Attack+10 Pet: Rng.Atk.+10',}},
            neck="Empath Necklace",
            waist="Incarnation Sash",
            left_ear="Domes. Earring",
            right_ear="Rimeice Earring",
            left_ring="Sheltered Ring",
            right_ring="Shneddick Ring",
            back={ name="Pastoralist's Mantle", augments={'STR+1 DEX+1','Pet: Accuracy+20 Pet: Rng. Acc.+20','Pet: Damage taken -2%',}}}

--This will equip for Magical Ready moves like Fireball
	sets.midcast.Pet.MabReady = set_combine(sets.midcast.Pet.WS, {
			main={ name="Kumbhakarna", augments={'Pet: Mag. Acc.+19','Pet: "Regen"+2','Pet: TP Bonus+200',}},
          sub={ name="Kumbhakarna", augments={'Pet: "Mag.Atk.Bns."+20','Pet: Phys. dmg. taken -2%','Pet: TP Bonus+180',}},
          ammo="Demonry Core",
          head={ name="Valorous Mask", augments={'Pet: "Mag.Atk.Bns."+28','System: 1 ID: 1796 Val: 12','Pet: Attack+1 Pet: Rng.Atk.+1',}},
          body={ name="Emicho Haubert", augments={'Pet: HP+100','Pet: INT+15','Pet: "Regen"+2',}},
          hands={ name="Valorous Mitts", augments={'Pet: "Mag.Atk.Bns."+25','Pet: Haste+4','System: 1 ID: 1796 Val: 8','Pet: Attack+13 Pet: Rng.Atk.+13',}},
          legs={ name="Valor. Hose", augments={'Pet: Mag. Acc.+22','System: 1 ID: 1796 Val: 8',}},
          feet={ name="Valorous Greaves", augments={'Pet: "Mag.Atk.Bns."+28','Pet: "Dbl. Atk."+1','System: 1 ID: 1796 Val: 12','Pet: Attack+13 Pet: Rng.Atk.+13',}},
          neck="Deino Collar",
          waist="Incarnation Sash",
          left_ear="Domes. Earring",
          right_ear="Rimeice Earring",
          left_ring="Sheltered Ring",
          right_ring="Shneddick Ring",
          back="Argocham. Mantle"})
	
	
	sets.midcast.Pet.TPBonus = {hands="Nukumi Manoplas +1",}
		
	sets.midcast.Pet.ReadyRecast = {sub="Charmer's Merlin",legs="Desultor Tassets",}

      
        
        -- IDLE SETS (TOGGLE between RERAISE and NORMAL with CTRL+F12)
		
		
		-- Base Idle Set (when you do NOT have a pet out)
    sets.idle = {
			ammo="Vanir Battery",
			head="Anwig Salade",
			neck="Shepherd's chain",
			ear1="Handler's Earring +1",
			ear2="Rimeice Earring",
			body={ name="Taeon Tabard", augments={'Pet: Accuracy+18 Pet: Rng. Acc.+18','Pet: Dbl. Atk."+5','Pet: Damage taken -4%',}},
			hands={ name="Taeon Gloves", augments={'Pet: Accuracy+21 Pet: Rng. Acc.+21','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
			ring1="Sheltered Ring",
			ring2="Shneddick Ring",
			back="Pastoralist's Mantle",
			waist="Isa Belt",
			legs={ name="Taeon Tights", augments={'Pet: Accuracy+18 Pet: Rng. Acc.+18','Pet: "Dbl. Atk."+5','Pet: Damage taken -3%',}},
			feet={ name="Taeon Boots", augments={'Pet: Accuracy+23 Pet: Rng. Acc.+23','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}}}

			
	sets.idle.Reraise = set_combine(sets.idle, {head="Twilight Helm",body="Twilight Mail"})

	
		-- Idle Set that equips when you have a pet out and not fighting an enemy.
	sets.idle.Pet = set_combine(sets.idle, {
			ammo="Vanir Battery",
			head="Anwig Salade",
			neck="Shepherd's chain",
			ear1="Handler's Earring +1",
			ear2="Rimeice Earring",
			body={ name="Taeon Tabard", augments={'Pet: Accuracy+18 Pet: Rng. Acc.+18','Pet: Dbl. Atk."+5','Pet: Damage taken -4%',}},
			hands={ name="Taeon Gloves", augments={'Pet: Accuracy+21 Pet: Rng. Acc.+21','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
			ring1="Sheltered Ring",
			ring2="Shneddick Ring",
			back="Pastoralist's Mantle",
			waist="Isa Belt",
			legs={ name="Taeon Tights", augments={'Pet: Accuracy+18 Pet: Rng. Acc.+18','Pet: "Dbl. Atk."+5','Pet: Damage taken -3%',}},
			feet={ name="Taeon Boots", augments={'Pet: Accuracy+23 Pet: Rng. Acc.+23','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}}})
		
		-- Idle set that equips when you have a pet out and ARE fighting an enemy.
	sets.idle.Pet.Engaged = set_combine(sets.idle, {
            ammo="Vanir Battery",
			head="Anwig Salade",
			neck="Shepherd's chain",
			ear1="Handler's Earring +1",
			ear2="Rimeice Earring",
			body={ name="Taeon Tabard", augments={'Pet: Accuracy+18 Pet: Rng. Acc.+18','Pet: Dbl. Atk."+5','Pet: Damage taken -4%',}},
			hands={ name="Taeon Gloves", augments={'Pet: Accuracy+21 Pet: Rng. Acc.+21','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
			ring1="Sheltered Ring",
			ring2="Shneddick Ring",
			back="Pastoralist's Mantle",
			waist="Isa Belt",
			legs={ name="Taeon Tights", augments={'Pet: Accuracy+18 Pet: Rng. Acc.+18','Pet: "Dbl. Atk."+5','Pet: Damage taken -3%',}},
			feet={ name="Taeon Boots", augments={'Pet: Accuracy+23 Pet: Rng. Acc.+23','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}}})
        


        -- MELEE (SINGLE-WIELD) SETS
	
	sets.engaged = {
	ammo="Ginsen",
    head={ name="Taeon Chapeau", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','Pet: Haste+4',}},
    body={ name="Taeon Tabard", augments={'Accuracy+19 Attack+19','"Triple Atk."+2','Pet: Haste+4',}},
    hands={ name="Taeon Gloves", augments={'Accuracy+25','"Triple Atk."+2','Pet: Haste+5',}},
    legs={ name="Taeon Tights", augments={'Accuracy+14 Attack+14','"Triple Atk."+2','Pet: Haste+3',}},
    feet={ name="Taeon Boots", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','Pet: Haste+4',}},
    neck="Asperity Necklace",
    waist="Windbuffet Belt +1",
    left_ear="Brutal Earring",
    right_ear="Cessance Earring",
    left_ring="Epona's Ring",
    right_ring="Petrov Ring",
    back="Lupine Cape"}
			
				
	     -- MELEE (DUAL-WIELD) SETS FOR DNC AND NIN SUBJOB
		
	sets.engaged.DW = {
			main="Skullrender",
	sub="Izizoeksi",
	ammo="Ginsen",
    head={ name="Taeon Chapeau", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','Pet: Haste+4',}},
    body={ name="Taeon Tabard", augments={'Accuracy+19 Attack+19','"Triple Atk."+2','Pet: Haste+4',}},
    hands={ name="Taeon Gloves", augments={'Accuracy+25','"Triple Atk."+2','Pet: Haste+5',}},
    legs={ name="Taeon Tights", augments={'Accuracy+14 Attack+14','"Triple Atk."+2','Pet: Haste+3',}},
    feet={ name="Taeon Boots", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','Pet: Haste+4',}},
    neck="Asperity Necklace",
    waist="Shetal Stone",
    left_ear="Heartseeker Earring",
    right_ear="Dudgeon Earring",
    left_ring="Epona's Ring",
    right_ring="Petrov Ring",
    back="Lupine Cape"}
			
			-- THIS IS THE END OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED -- 
			-- THIS IS THE END OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED --
			-- THIS IS THE END OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED --
			-- THIS IS THE END OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED --
			-- THIS IS THE END OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED --
			-- THIS IS THE END OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED --
			-- THIS IS THE END OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED --
			-- THIS IS THE END OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED --
			-- THIS IS THE END OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED --
			-- THIS IS THE END OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED --


end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks that are called to process player actions at specific points in time.
-------------------------------------------------------------------------------------------------------------------

function job_precast(spell, action, spellMap, eventArgs)
	cancel_conflicting_buffs(spell, action, spellMap, eventArgs)

     
	

-- Define class for Sic and Ready moves.
        if ready_moves_to_check:contains(spell.name) and pet.status == 'Engaged' then
                classes.CustomClass = "WS"
		equip(sets.midcast.Pet.ReadyRecast)
        end
end



function job_pet_midcast(spell, action, spellMap, eventArgs)
-- Equip monster correlation gear, as appropriate
    if ready_moves_to_check:contains(spell.english) and pet.status == 'Engaged' then
	equip(sets.midcast.Pet.WS)
	end

	if mab_ready_moves:contains(spell.english) and pet.status == 'Engaged' then
 equip(sets.midcast.Pet.MabReady)
 end
 
	if buffactive['Unleash'] then
                hands="Regimen Mittens"
        end
 
	
 
 		
		
	-- If Pet TP, before bonuses, is less than a certain value, equip Ferine Manoplas +1 or +2
	
        end


-- Return true if we handled the aftercast work.  Otherwise it will fall back
-- to the general aftercast() code in Mote-Include.
function job_aftercast(spell, action, spellMap, eventArgs)

end


function get_combat_form()
    if player.sub_job == 'NIN' or player.sub_job == 'DNC' then
        state.CombatForm:set('DW')
    else
        state.CombatForm:reset()
	end
	end