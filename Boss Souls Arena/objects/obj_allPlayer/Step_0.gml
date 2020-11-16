/// @description Code
#region Vars
weaponDirection = point_direction(x,y,mouse_x,mouse_y);
if (hp > maxHp){hp = maxHp;}
depth = -y;
if (drawCharge){drawChargeFrame +=2 }
if (drawChargeFrame >= 60){drawChargeFrame = 0;}
drawCharge = false;
#region Bosses
if (instance_exists(obj_allBoss))
{
	if (gameMaster.chosenBoss == Boss.Gravekeeper && obj_allBoss.phase > 1)
	{
		blackOutAlpha = clamp(blackOutAlpha + 0.2/30,0,0.10 + obj_allBoss.phase*0.30);
	}
}
if (instance_exists(obj_allBoss) == false)
{
	blackOutAlpha = clamp(blackOutAlpha - 0.5/30,0,0.75);
}
#endregion
#region Dash Speed
//checkBefore
if (speed < 0){speed = 0;}
if (actualDashSpeed < 0){actualDashSpeed = 0;}
if (actualBKDashSpeed < 0){actualBKDashSpeed = 0;}
//speed
speed = actualDashSpeed + actualBKDashSpeed + actualASDashSpeed + actualGDashSpeed + actualSPHDashSpeed;
//checkAfter
if (speed < 0){speed = 0;}
if (actualDashSpeed < 0){actualDashSpeed = 0;}
if (actualBKDashSpeed < 0){actualBKDashSpeed = 0;}
if (speed == 0){global.iFrame = false;}
if (speed > 0){global.iFrame = true;}
if (speed == -slayerDashSpeed){global.iFrame = true;}
#endregion
if (global.noDamage == true){noDamageStacks++;}
if (noDamageStacks >= noDamageTime){global.noDamage = false; noDamageStacks = 0;}
randomize();
#endregion
#region Alive
if (state == States.Idle || state == States.Walking)
{
image_angle = 0;
#region Movement
actualSpeed = (moveSpeed + gravelingSpeed)*bPSpeed*global.playerBossSlow*meteorStun*gravekeeperSpeed*shieldSpeed*agentSpeed*slayerSpeed*bfSpeed*t52Speed*gravelingAreaSpeed*plagueSpeed;
var actualSpeedBefore = actualSpeed;
if (keyboard_check(ord("A")) && keyboard_check(ord("S")) || keyboard_check(ord("A")) && keyboard_check(ord("W")) ||  keyboard_check(ord("D")) && keyboard_check(ord("S")) || keyboard_check(ord("D")) && keyboard_check(ord("W")))
{
	actualSpeed = actualSpeed*0.85;
}
if (keyboard_check(ord("W")) && place_free(x,y-actualSpeed))
{
	y -= actualSpeed;
	state = States.Walking;
	moveDirection = 90;
}
if (keyboard_check(ord("S")) && place_free(x,y+actualSpeed))
{
	y += actualSpeed;
	state = States.Walking;
	moveDirection = 270;
}
if (keyboard_check(ord("D")) && place_free(x+actualSpeed,y))
{
	x += actualSpeed;
	state = States.Walking;
	moveDirection = 0;
}
if (keyboard_check(ord("A")) && place_free(x-actualSpeed,y))
{
	x -= actualSpeed;
	state = States.Walking;
	moveDirection = 180;
}
if (keyboard_check(ord("W")) && keyboard_check(ord("D"))){moveDirection = 45;}
if (keyboard_check(ord("S")) && keyboard_check(ord("D"))){moveDirection = 315;}
if (keyboard_check(ord("S")) && keyboard_check(ord("A"))){moveDirection = 225;}
if (keyboard_check(ord("W")) && keyboard_check(ord("A"))){moveDirection = 135;}
if (direction >= 90 && direction < 270 && !place_free(x-speed-1,y))
{
	speed = 0;	
}
if (direction >= 180 && direction < 360 && !place_free(x,y+speed+1))
{
	speed = 0;	
}
if (direction >= 0 && direction < 180 && !place_free(x,y-speed-1))
{
	speed = 0;	
}
if (direction >= 270 && !place_free(x-speed-1,y) || direction < 90 && !place_free(x+speed-1,y))
{
	speed = 0;	
}
#endregion
#region Visuals
if (!(keyboard_check(ord("W"))) && !(keyboard_check(ord("S"))) && !(keyboard_check(ord("D"))) && !(keyboard_check(ord("A"))))
{
	state = States.Idle;
}
if (state == States.Idle)
{
	sprite_index = idleSprite;	
}
if (state == States.Walking)
{
	sprite_index = walkSprite;
}
if (mouse_x > x)
{
	image_xscale = playerSize;	
}
if (mouse_x < x)
{
	image_xscale = -playerSize;	
}
#endregion
#region LeftClick
	var aimBotDistance = 50;
	#region ShadowAssassin
	if (class == Character.ShadowAssassin)
	{
		
		if (mouse_check_button(mb_left) && canLeftClick == true && global.itemSelected[Boss.DeathKnight] == false && global.itemSelected[Boss.DemonLordRekTaar] == false
		|| keyboard_check(ord("1")) && canLeftClick == true && global.itemSelected[Boss.DeathKnight] == false && global.itemSelected[Boss.DemonLordRekTaar] == false)
		{
			if (instance_exists(obj_shadow))
			{
				if (distance_to_point(mouse_x,mouse_y) <= teleportRange && place_free(mouse_x,mouse_y) || point_distance(obj_shadow.x,obj_shadow.y,mouse_x,mouse_y) <= teleportRange && place_free(mouse_x,mouse_y))
				{
					canLeftClick = false;
					leftClickCooldownLeft = leftClickCooldown;
					activateLeftClickItem = true;
				
					var tpEffect = instance_create_depth(x,y,depth,obj_tpEffect);
					tpEffect.image_blend = c_fuchsia;
					image_alpha = 0;
					if (global.soundOn == true)
					{
						audio_play_sound(snd_teleport,Prioity.Low,false);
					}
					
					x = mouse_x;
					y = mouse_y;
					if (global.autoAim == true && point_distance(mouse_x,mouse_y,obj_allBoss.x,obj_allBoss.y) <= aimBotDistance && instance_exists(obj_allBoss)){x = obj_allBoss.x; y = obj_allBoss.y;}
					var angleL = 0;
					var amountL = int64(daggerAmount);
					repeat(amountL)
					{
						var dagger = instance_create_depth(x,y,depth+1,obj_daggerProjectile);
						dagger.direction = angleL;
						dagger.speed = 7;
						dagger.image_angle = angleL-90;
						dagger.image_xscale = 0.9;
						dagger.image_yscale = 1.1;
						angleL += 360/amountL;
					}
					with (obj_shadow)
					{
						var angleL = 0;
						var amountL = int64(global.player.daggerAmount);
						repeat(amountL)
						{
							var dagger = instance_create_depth(x,y,depth+1,obj_daggerProjectile);
							dagger.direction = angleL;
							dagger.speed = 7;
							dagger.image_angle = angleL-90;
							dagger.image_xscale = 0.9;
							dagger.image_yscale = 1.1;
							angleL += 360/amountL;
						}
					}
				}
			}
			if (instance_exists(obj_shadow) == false)
			{
				if (distance_to_point(mouse_x,mouse_y) <= teleportRange && place_free(mouse_x,mouse_y))
				{
					canLeftClick = false;
					leftClickCooldownLeft = leftClickCooldown;
					activateLeftClickItem = true;
				
					instance_create_depth(x,y,depth,obj_tpEffect);
					image_alpha = 0;
					if (global.soundOn == true)
					{
						audio_play_sound(snd_teleport,Prioity.Low,false);
					}
		
					x = mouse_x;
					y = mouse_y;
					if (global.autoAim == true && point_distance(mouse_x,mouse_y,obj_allBoss.x,obj_allBoss.y) <= aimBotDistance && instance_exists(obj_allBoss)){x = obj_allBoss.x; y = obj_allBoss.y;}
					var angleL = 0;
					var amountL = int64(20);
					repeat(amountL)
					{
						var dagger = instance_create_depth(x,y,depth+1,obj_daggerProjectile);
						dagger.direction = angleL;
						dagger.speed = 7;
						dagger.image_angle = angleL-90;
						dagger.image_xscale = 0.9;
						dagger.image_yscale = 1.1;
						angleL += 360/amountL;
					}
				}
			}
		}
	}
	#endregion
	#region Pyromancer
	if (class == Character.Pyromancer)
	{
		if (canLeftClick == true && global.itemSelected[Boss.DeathKnight] == false && meteorStun != 0 && global.itemSelected[Boss.DemonLordRekTaar] == false)
		{
			if (mouse_check_button(mb_left)
			|| keyboard_check(ord("1")))
			{
				charge += 1*(1+(gameMaster.bonusFirerate/100));
				moveSpeed = 0;
				drawCharge = true;
			}
			if (mouse_check_button_released(mb_left) || charge >= maxCharge || mouse_check_button(mb_left) && mouse_check_button(mb_right) 
			|| mouse_check_button(mb_left) && keyboard_check(vk_space) || mouse_check_button(mb_left) && keyboard_check(ord("E")) 
			|| mouse_check_button(mb_left) && keyboard_check_released(ord("1")) || mouse_check_button(mb_left) && keyboard_check(ord("2"))
			|| mouse_check_button(mb_left) && keyboard_check_released(ord("R")) || mouse_check_button(mb_left) && keyboard_check_released(ord("Q")))
			{
				canLeftClick = false;
				leftClickCooldownLeft = leftClickCooldown;
				activateLeftClickItem = true;	
				
				var infernalBall = instance_create_depth(x,y,depth+1,obj_firebolt)
				infernalBall.speed = 4 + charge/35;
				infernalBall.direction = point_direction(x,y,mouse_x,mouse_y);
				if (global.autoAim == true && instance_exists(obj_allBoss)){infernalBall.direction = point_direction(x,y,obj_allBoss.x,obj_allBoss.y);}
				infernalBall.image_angle = infernalBall.direction+90;
				infernalBall.image_xscale = 0.25 + charge/50;
				infernalBall.image_yscale = infernalBall.image_xscale;
				infernalBall.charge = 1 + ((charge/2.5)-1);
				infernalBall.isAttack = true;
			
				charge = 0;
				moveSpeed = normalSpeed;
				
				instance_create_depth(x,y,-y,obj_pyroPortal);
				instance_create_depth(x,y,-y,obj_portal_bottom);
				
			}
		}
	}
	#endregion
	#region Bloodknight
	if (class == Character.BloodKnight)
	{
		if (mouse_check_button(mb_left) && canLeftClick == true && global.itemSelected[Boss.DeathKnight] == false && global.itemSelected[Boss.DemonLordRekTaar] == false
		|| keyboard_check(ord("1")) && canLeftClick == true && global.itemSelected[Boss.DeathKnight] == false && global.itemSelected[Boss.DemonLordRekTaar] == false)
		{
			canLeftClick = false;
			leftClickCooldownLeft = leftClickCooldown;
			activateLeftClickItem = true;
			
			repeat(int64(batAmount*conjurationPower))
			{
				var batShot = instance_create_depth(x+irandom_range(-25,25),y+irandom_range(-25,25),depth+1,obj_batProjectile);
				batShot.speed = 6;
				batShot.sprite_index = spr_batprojectile_heal;
				batShot.direction = point_direction(x,y,mouse_x,mouse_y);
				batShot.destroyTime = 1*30;
			}
			
			batAmount++;
			if (batAmount > 3){batAmount = 1;}
		}
	}
	#endregion
	#region Agent of God Tira
	if (class == Character.AgentOfGod)
	{
		if (mouse_check_button(mb_left) && canLeftClick == true && global.itemSelected[Boss.DeathKnight] == false && global.itemSelected[Boss.DemonLordRekTaar] == false
		|| keyboard_check(ord("1")) && canLeftClick == true && global.itemSelected[Boss.DeathKnight] == false && global.itemSelected[Boss.DemonLordRekTaar] == false)
		{
			canLeftClick = false;
			leftClickCooldownLeft = leftClickCooldown;
			activateLeftClickItem = true;
			
			var bigBolt = instance_create_depth(x,y,depth+1,obj_holyFireBolt);
			bigBolt.speed = 5;
			bigBolt.direction = point_direction(x,y,mouse_x,mouse_y);
			if (global.autoAim == true && instance_exists(obj_allBoss)){bigBolt.direction = point_direction(x,y,obj_allBoss.x,obj_allBoss.y);}
			bigBolt.image_angle = bigBolt.direction+90;
			//Visual
			bigBolt.image_xscale = 0.20 + global.damage/1.75;
			bigBolt.image_yscale = bigBolt.image_xscale;
		}
	}
	#endregion
	#region Angel Slayer
	if (class == Character.AngelSlayer)
	{
		if (mouse_check_button(mb_left) && canLeftClick == true && global.itemSelected[Boss.DeathKnight] == false && global.itemSelected[Boss.DemonLordRekTaar] == false && slayerSpeed = 1
		|| keyboard_check(ord("1")) && canLeftClick == true && global.itemSelected[Boss.DeathKnight] == false && global.itemSelected[Boss.DemonLordRekTaar] == false && slayerSpeed = 1)
		{
			canLeftClick = false;
			leftClickCooldownLeft = leftClickCooldown;
			activateLeftClickItem = true;
			
			ASDashStopLeft = ASDashStop;
			actualASDashSpeed = slayerDashSpeed;
			slashOnce = true;
			direction = point_direction(x,y,mouse_x,mouse_y);
			if (global.autoAim == true && instance_exists(obj_allBoss)){direction = point_direction(x,y,obj_allBoss.x,obj_allBoss.y);}
			#region DemonHorn
			if (global.itemSelected[Boss.FlameGate] == true)
			{
				var horn = instance_create_depth(x,y,-y,obj_equipment_demonClaw);
				horn.destroyTime = (maxHp/75)*30;
			}
			#endregion
			#region the last wish
			if (global.itemSelected[Boss.WispSisters] == true && instance_exists(obj_equipment_theLastWish) == false)
			{
				instance_create_depth(x,y,depth,obj_equipment_theLastWish);
			}
			if (global.itemSelected[Boss.WispSisters] == true && instance_exists(obj_equipment_theLastWish) == true)
			{
				with (obj_equipment_theLastWish)
				{
					x = global.player.x;
					y = global.player.y;
				}
			}
			#endregion
		}
		if (ASDashStopLeft > 0){ASDashStopLeft--;}
		if (ASDashStopLeft <= 0 && slashOnce == true)
		{
			slashOnce = false
			actualASDashSpeed -= slayerDashSpeed; 
			
			obj_slayerScythe.state = MeleeWeaponStates.SpinOnce;
			obj_slayerScythe.spinTimes += 1;
		}
	}
	#endregion
	#region Graveling
	if (class == Character.Graveling)
	{
		if (mouse_check_button(mb_left) && canLeftClick == true && global.itemSelected[Boss.DeathKnight] == false && global.itemSelected[Boss.DemonLordRekTaar] == false
		|| keyboard_check(ord("1")) && canLeftClick == true && global.itemSelected[Boss.DeathKnight] == false && global.itemSelected[Boss.DemonLordRekTaar] == false)
		{
			canLeftClick = false;
			leftClickCooldownLeft = leftClickCooldown;
			activateLeftClickItem = true;
			
			gravelingSpeed = clamp(gravelingSpeed+0.5,0,gravlingMaxSpeed);
			var graveAccuracy = 15;
			var boltAmount = int64(3 + actualSpeedBefore*2);
			repeat (boltAmount)
			{
				var graveBolt = instance_create_depth(x,y,depth-1,obj_graveBolt);
				graveBolt.direction = point_direction(x,y,mouse_x,mouse_y)+irandom_range(-graveAccuracy,graveAccuracy);
				if (global.autoAim == true && instance_exists(obj_allBoss)){graveBolt.direction = point_direction(x,y,obj_allBoss.x,obj_allBoss.y)+irandom_range(-graveAccuracy,graveAccuracy);}
				graveBolt.speed = actualSpeedBefore*3;
				graveBolt.image_angle = graveBolt.direction+90;
				// Visual
				graveBolt.image_xscale = 0.55;
				graveBolt.image_yscale = graveBolt.image_xscale;
				graveBolt.image_alpha = 1;
				graveBolt.image_blend = c_yellow;
				graveBolt.timeToDestroy = (0.25)*30;
			}
		}
	}
	#endregion
	#region Plague Walker
	if (class == Character.PlaugeWalker)
	{
		if (mouse_check_button(mb_left) && canLeftClick == true && global.itemSelected[Boss.DeathKnight] == false && global.itemSelected[Boss.DemonLordRekTaar] == false
		|| keyboard_check(ord("1")) && canLeftClick == true && global.itemSelected[Boss.DeathKnight] == false && global.itemSelected[Boss.DemonLordRekTaar] == false)
		{
			canLeftClick = false;
			leftClickCooldownLeft = leftClickCooldown;
			activateLeftClickItem = true;
			
			var leech = instance_create_depth(x,y,depth+1,obj_leech);
			leech.speed = 5;
			leech.direction = point_direction(x,y,mouse_x,mouse_y);
			if (global.autoAim == true)
			{
				var	nearestWisp = noone;
				var wispDistance = 1000;
				if (instance_exists(obj_plagueWisp)){nearestWisp = instance_nearest(x,y,obj_plagueWisp); wispDistance = distance_to_object(nearestWisp);}
				var	nearestBoss = noone;
				var bossDistance = 1000;
				if (instance_exists(obj_allBoss)){nearestBoss = instance_nearest(x,y,obj_allBoss); bossDistance = distance_to_object(nearestBoss);}
				var	nearestZamii = noone;
				var zamiiDistance = 1000;
				if (instance_exists(obj_zamii)){nearestZamii = instance_nearest(x,y,obj_zamii); zamiiDistance = distance_to_object(nearestZamii);}
				var nearestTarget = min(wispDistance,bossDistance,zamiiDistance);
				var target = noone;
				if (nearestTarget == wispDistance){target = nearestWisp;}
				if (nearestTarget == bossDistance){target = nearestBoss;}
				if (nearestTarget == zamiiDistance){target = nearestZamii;}
				leech.direction = point_direction(x,y,target.x,target.y);
			}
			leech.image_angle = leech.direction-90;
			
			//Visual
			leech.image_xscale = 0.45 + conjurationPower/10;
			leech.image_yscale = 0.45 + conjurationPower/10;
			leech.destroyTime = (4)*30*conjurationPower;
		}
	}
	#endregion
	#region Items
	#region Death Scythe
	if (mouse_check_button(mb_left) && canLeftClick == true && global.itemSelected[Boss.DeathKnight] == true && global.itemSelected[Boss.DemonLordRekTaar] == false
	|| keyboard_check(ord("1")) && canLeftClick == true && global.itemSelected[Boss.DeathKnight] == true && global.itemSelected[Boss.DemonLordRekTaar] == false)
	{
		obj_equipment_deathScythe.state = MeleeWeaponStates.SpinOnce;
		obj_equipment_deathScythe.spinTimes = 1;
		
		canLeftClick = false;
		leftClickCooldownLeft = leftClickCooldown;
		activateLeftClickItem = true;
		
		if (class == Character.ShadowAssassin)
		{
			if (instance_exists(obj_shadow))
			{
				with (obj_shadow)
				{
					var angleL = 0;
					var amountL = int64(global.player.daggerAmount);
					repeat(amountL)
					{
						var dagger = instance_create_depth(x,y,depth+1,obj_daggerProjectile);
						dagger.direction = angleL;
						dagger.speed = 7;
						dagger.image_angle = angleL-90;
						dagger.image_xscale = 0.9;
						dagger.image_yscale = 1.1;
						angleL += 360/amountL;
					}
				}
			}
		}
		if (class == Character.Pyromancer)
		{
			instance_create_depth(x,y,-y,obj_pyroPortal);
			instance_create_depth(x,y,-y,obj_portal_bottom);
		}
		if (class == Character.Graveling){gravelingSpeed = clamp(gravelingSpeed+0.5,0,gravlingMaxSpeed);}
	}
	#endregion
	#region Demon Portal
	if (mouse_check_button(mb_left) && canLeftClick == true && global.itemSelected[Boss.DemonLordRekTaar] == true
	|| keyboard_check(ord("1")) && canLeftClick == true && global.itemSelected[Boss.DemonLordRekTaar] == true)
	{
		with (obj_visual_demonPortal)
		{
			var impling = instance_create_depth(x,y,depth+1,obj_equipment_impling)
			impling.speed = 5;
			impling.direction = point_direction(x,y,mouse_x,mouse_y);
			if (global.autoAim == true && instance_exists(obj_allBoss)){impling.direction = point_direction(x,y,obj_allBoss.x,obj_allBoss.y);}
			impling.size = 0.45 + 0.25 * global.damage * global.player.conjurationPower;//0.2
		}
		
		canLeftClick = false;
		leftClickCooldownLeft = leftClickCooldown;
		activateLeftClickItem = true;
		
		if (class == Character.ShadowAssassin)
		{
			if (instance_exists(obj_shadow))
			{
				with (obj_shadow)
				{
					var angleL = 0;
					var amountL = int64(global.player.daggerAmount);
					repeat(amountL)
					{
						var dagger = instance_create_depth(x,y,depth+1,obj_daggerProjectile);
						dagger.direction = angleL;
						dagger.speed = 7;
						dagger.image_angle = angleL-90;
						dagger.image_xscale = 0.9;
						dagger.image_yscale = 1.1;
						angleL += 360/amountL;
					}
				}
			}
		}
		if (class == Character.Pyromancer)
		{
			instance_create_depth(x,y,-y,obj_pyroPortal);
			instance_create_depth(x,y,-y,obj_portal_bottom);
		}
		if (class == Character.Graveling)
		{
			gravelingSpeed = clamp(gravelingSpeed+0.5,0,gravlingMaxSpeed);
		}
	}
	#endregion
	if (activateLeftClickItem == true)
	{
		activateLeftClickItem = false;
		#region DeathCap
		if (instance_exists(obj_equipment_madHat))
		{
			with (obj_equipment_madHat)
			{
				var projectile = instance_create_depth(x,y,depth+1,obj_madBolt);
				projectile.direction = point_direction(x,y,mouse_x,mouse_y);
				if (global.autoAim && instance_exists(obj_allBoss)){projectile.direction = point_direction(x,y,obj_allBoss.x,obj_allBoss.y);}
				projectile.speed = 7;
				projectile.image_angle = projectile.direction+90;
				projectile.image_xscale = 1;
				projectile.image_yscale = 1;
				projectile.image_alpha = 0.85;
				projectile.image_blend = c_red;
			}
		}
		#endregion 
		#region DeathKing Boss and Arena king
		if (instance_exists(obj_allBoss))
		{
			if (gameMaster.chosenBoss == Boss.DeathKing || gameMaster.chosenBoss == Boss.ArenaKing)
			{
				with (obj_allBoss)
				{
					if (canTeleport == true && place_free(x+teleportX,y+teleportY))
					{
						x = x + teleportX;
						y = y + teleportY;
						
						teleportX = choose(-75,75);
						teleportY = choose(-75,75);
						
						canTeleport = false;
					}
				}
			}
		}
		#endregion
		#region Campagin Reward
		if (global.itemSelected[Boss.CampaignReward] == true)
		{
			var hellBolt = instance_create_depth(x,y,depth+1,obj_hellBolt);
			hellBolt.direction = point_direction(x,y,mouse_x,mouse_y);
			if (instance_exists(obj_allBoss)){hellBolt.direction = point_direction(x,y,obj_allBoss.x,obj_allBoss.y);}
			hellBolt.image_angle = hellBolt.direction+90;
			hellBolt.speed = 8;
		}
		#endregion
	}
	#endregion
	#region onGoingEffects
	if (class == Character.Graveling)
	{
		if (gravelingSpeed > 0)
		{
			gravelingStacks++;
			if (gravelingStacks >= (2)*30)
			{
				gravelingStacks = 0;
			
				gravelingSpeed = clamp(gravelingSpeed - 0.5,0,1.5);
			}
		}
	}
	#endregion
#endregion
#region RightClick
	#region ShadowAssassin
	if (class == Character.ShadowAssassin)
	{
		if (mouse_check_button(mb_right) && canRightClick == true && place_free(mouse_x,mouse_y)
		|| keyboard_check(ord("2"))) && canRightClick == true && place_free(mouse_x,mouse_y)
		{
			canRightClick = false;
			rightClickCooldownLeft = rightClickCooldown;
			activateRightClickItem = true;
			
			canLeftClick = true;
			leftClickCooldownLeft = 0;
			var shadow = instance_create_depth(mouse_x,mouse_y,-mouse_y,obj_shadow);
			if (global.autoAim == true && instance_exists(obj_allBoss) && point_distance(mouse_x,mouse_y,obj_allBoss.x,obj_allBoss.y) < aimBotDistance){shadow.x = obj_allBoss.x;shadow.y = obj_allBoss.y;}
			shadow.image_alpha = 0.7;
			shadow.image_xscale = image_xscale;
			shadow.image_yscale = image_yscale;
			shadow.image_blend = c_ltgray;
			
			var shadowRange = instance_create_depth(mouse_y,mouse_x,depth,obj_shadowAttackRange);
			shadowRange.objectToFollow = shadow.id;
			shadowRange.image_xscale *= 1+(gameMaster.bonusDash/100);
			shadowRange.image_yscale = shadowRange.image_xscale;
		}
	}
	#endregion
	#region Pyromancer
	if (class == Character.Pyromancer)
	{
		var coneWide = 45;
		var coneAmount = 6;
		if (mouse_check_button(mb_right) && canRightClick == true && meteorStun != 0 
		|| keyboard_check(ord("2")) && canRightClick == true && meteorStun != 0)
		{
			canRightClick = false;
			rightClickCooldownLeft = rightClickCooldown;
			activateRightClickItem = true;
			
			doConeShot = true;
			coneShotTimes = coneShotAmount;
			
			var coneAtkFW = point_direction(x,y,mouse_x,mouse_y)-coneWide*0.5;
			if (global.autoAim == true && instance_exists(obj_allBoss)){coneAtkFW = point_direction(x,y,obj_allBoss.x,obj_allBoss.y)-coneWide*0.5;}
			repeat(coneAmount)
			{
				var fireBolt = instance_create_depth(x,y,depth+1,obj_firebolt);
				//Main
				fireBolt.direction = coneAtkFW;
				
				fireBolt.speed = 7;
				fireBolt.image_angle = fireBolt.direction+90;
				
				//Visual
				fireBolt.image_alpha = 0.85;
				fireBolt.image_xscale = 0.9;
				fireBolt.image_yscale = 0.9;
				fireBolt.effectType = Effect.Flare;
				fireBolt.charge = 1;
				fireBolt.isRightClick = true;
				coneAtkFW += (coneWide/coneAmount);
			}
			
			instance_create_depth(x,y,-y,obj_pyroPortal);
			instance_create_depth(x,y,-y,obj_portal_bottom);
			
		}	
		if (doConeShot == true && coneShotTimes > 0)
		{
			coneShotStacks++;	
		}
		if (coneShotStacks >= coneShotTime)
		{
			coneShotStacks = 0;
			coneShotTimes--;
			doConeShot = true;
		
			var coneAtkFW = point_direction(x,y,mouse_x,mouse_y)-coneWide*0.5;
			if (global.autoAim == true && instance_exists(obj_allBoss)){coneAtkFW = point_direction(x,y,obj_allBoss.x,obj_allBoss.y)-coneWide*0.5;}
			repeat(coneAmount)
			{
				var fireBolt = instance_create_depth(x,y,depth+1,obj_firebolt);
				//Main
				fireBolt.direction = coneAtkFW;
				fireBolt.speed = 7;
				fireBolt.image_angle = fireBolt.direction+90;
				//Visual
				fireBolt.image_alpha = 0.85;
				fireBolt.image_xscale = 0.9;
				fireBolt.image_yscale = 0.9;
				fireBolt.effectType = Effect.Flare;
				fireBolt.charge = 1;
				coneAtkFW += (coneWide/coneAmount);
			}
		}
	}
	#endregion
	#region Bloodknight
	if (class == Character.BloodKnight)
	{
		if (mouse_check_button(mb_right) && canRightClick == true
		|| keyboard_check(ord("2")) && canRightClick == true)
		{
			canRightClick = false;
			rightClickCooldownLeft = rightClickCooldown;
			activateRightClickItem = true;
			
			instance_create_depth(x,y,depth-1,obj_bloodKnightDash);
			
			BKDashStopLeft = BKDashStop;
			actualBKDashSpeed = dashSpeed;
			direction = point_direction(x,y,mouse_x,mouse_y);
			if (global.dashTowardsMove){direction = moveDirection;}
			if (global.autoAim == true && instance_exists(obj_allBoss) && distance_to_object(obj_allBoss) <= aimBotDistance*2){direction = point_direction(x,y,obj_allBoss.x,obj_allBoss.y);}
			#region DemonHorn
			if (global.itemSelected[Boss.FlameGate] == true)
			{
				var horn = instance_create_depth(x,y,-y,obj_equipment_demonClaw);
				horn.destroyTime = (maxHp/75)*30;
			}
			#endregion
			#region Demon general rektaar
			if (global.itemSelected[Boss.DemonLordRekTaar] == true)
			{
				canLeftClick = true;
				leftClickCooldownLeft = 0;
			}
			#endregion
			#region the last wish
			if (global.itemSelected[Boss.WispSisters] == true && instance_exists(obj_equipment_theLastWish) == false)
			{
				instance_create_depth(x,y,depth,obj_equipment_theLastWish);
			}
			if (global.itemSelected[Boss.WispSisters] == true && instance_exists(obj_equipment_theLastWish) == true)
			{
				with (obj_equipment_theLastWish)
				{
					x = global.player.x;
					y = global.player.y;
				}
			}
			#endregion
		}
		if (BKDashStopLeft > 0){BKDashStopLeft--;}
		if (BKDashStopLeft <= 0)
		{
			actualBKDashSpeed -= dashSpeed; 
			instance_destroy(obj_bloodKnightDash);
		}
	}
	#endregion
	#region Agent Of God
	if (class == Character.AgentOfGod)
	{
		if (mouse_check_button(mb_right) && canRightClick == true
		|| keyboard_check(ord("2")) && canRightClick == true)
		{
			if (place_free(mouse_x,mouse_y))
			{
				canRightClick = false;
				rightClickCooldownLeft = rightClickCooldown;
				activateRightClickItem = true;
					
				x = mouse_x;
				y = mouse_y;
				
				var holyGround = instance_create_depth(x,y,depth,obj_holyGround);
				if (global.autoAim == true && instance_exists(obj_allBoss)){holyGround.x = obj_allBoss.x; holyGround.y = obj_allBoss.y ;}
				holyGround.image_blend = c_aqua;
				
				if (global.itemSelected[Boss.AngelSlayerRekZul] == true){global.player.canAttack = true; global.player.leftClickCooldownLeft = 0;}
			}
		}
	}
	#endregion
	#region Angel Slayer
	if (class == Character.AngelSlayer)
	{
		if (mouse_check_button(mb_right) && canRightClick == true && slayerSpeed = 1
		|| keyboard_check(ord("2")) && canRightClick == true && slayerSpeed = 1)
		{
			canRightClick = false;
			rightClickCooldownLeft = rightClickCooldown;
			activateRightClickItem = true;
			
			canLeftClick = true;
			leftClickCooldownLeft = 0;
			ASDashStopLeft = ASDashStop;
			actualASDashSpeed = slayerDashSpeed;
			shotOnce = true;
			direction = point_direction(x,y,mouse_x,mouse_y)+180;
			#region DemonHorn
			if (global.itemSelected[Boss.FlameGate] == true)
			{
				var horn = instance_create_depth(x,y,-y,obj_equipment_demonClaw);
				horn.destroyTime = (maxHp/75)*30;
			}
			#endregion
			#region the last wish
			if (global.itemSelected[Boss.WispSisters] == true && instance_exists(obj_equipment_theLastWish) == false)
			{
				instance_create_depth(x,y,depth,obj_equipment_theLastWish);
			}
			if (global.itemSelected[Boss.WispSisters] == true && instance_exists(obj_equipment_theLastWish) == true)
			{
				with (obj_equipment_theLastWish)
				{
					x = global.player.x;
					y = global.player.y;
				}
			}
			#endregion
		}
		if (ASDashStopLeft <= 0 && shotOnce == true)
		{
			shotOnce = false
			actualASDashSpeed -= slayerDashSpeed;
			
			var demon = instance_create_depth(x,y,depth+1,obj_demons);
			demon.speed = 6;
			demon.direction = point_direction(x,y,mouse_x,mouse_y);
			if (global.autoAim == true && instance_exists(obj_allBoss)){demon.direction = point_direction(x,y,obj_allBoss.x,obj_allBoss.y);}
		}
	}
	#endregion
	#region Graveling
	if (class == Character.Graveling)
	{
		if (mouse_check_button(mb_right) && canRightClick == true
		|| keyboard_check(ord("2")) && canRightClick == true)
		{
			canRightClick = false;
			rightClickCooldownLeft = rightClickCooldown;
			activateRightClickItem = true;
			
			gravelingSpeed = clamp(gravelingSpeed+0.5,0,gravlingMaxSpeed);
			var amountHealed = actualSpeedBefore*10;
			var healText = instance_create_depth(obj_allPlayer.x+irandom_range(-8,8),obj_allPlayer.y+irandom_range(-5,5),obj_allPlayer.depth-10,obj_textMaker);
			healText.color = c_lime;
			healText.text = amountHealed/10;
			hp = clamp(hp + actualSpeedBefore*10.5,0,maxHp);
			
			var particle = instance_create_depth(x,y,depth+1,obj_particle_healing_small);
			particle.objectToFollow = id;
		}
	}
	#endregion
	#region Plaguewalker
	if (class == Character.PlaugeWalker)
	{
		if (mouse_check_button(mb_right) && canRightClick == true
		|| keyboard_check(ord("2")) && canRightClick == true)
		{
			canRightClick = false;
			rightClickCooldownLeft = rightClickCooldown;
			activateRightClickItem = true;
			
			var separation = 30;
			repeat(int64(plaguelingAmount*conjurationPower))
			{
				var doodlings = instance_create_depth(x+irandom_range(-separation,separation),y+irandom_range(-separation,separation),depth+1,obj_plaguelings);
				doodlings.speed = 3;
				doodlings.direction = point_direction(x,y,mouse_x,mouse_y);
				doodlings.destroyTime = 10*30;
			}
		}
	}
	#endregion
	#region Items
	if (activateRightClickItem == true)
	{
		activateRightClickItem = false;
		#region MadHat
		if (global.itemSelected[Boss.KnightWitchYi] == true && place_free(mouse_x,mouse_y))
		{
			if (madHatAmount == 1){instance_create_depth(mouse_x,mouse_y,-mouse_y,obj_equipment_madHat);}
			if (madHatAmount == 2)
			{
				instance_create_depth(mouse_x+10,mouse_y,-mouse_y,obj_equipment_madHat);
				instance_create_depth(mouse_x-10,mouse_y,-mouse_y,obj_equipment_madHat);
			}
			if (madHatAmount == 3)
			{
				instance_create_depth(mouse_x+8,mouse_y+8,-mouse_y,obj_equipment_madHat);
				instance_create_depth(mouse_x-8,mouse_y+8,-mouse_y,obj_equipment_madHat);
				instance_create_depth(mouse_x,mouse_y+10,-mouse_y,obj_equipment_madHat);
			}
		}
		#endregion
		#region 
		if (global.itemSelected[Boss.DeathKing] == true && distance_to_point(mouse_x,mouse_y) <= teleportRange && place_free(mouse_x,mouse_y))
		{
			var tpEffect = instance_create_depth(x,y,depth,obj_tpEffect);
			tpEffect.image_blend = c_black;
			image_alpha = 0;
			if (global.soundOn == true)
			{
				audio_play_sound(snd_teleport,Prioity.Low,false);
			}
					
			x = mouse_x;
			y = mouse_y;
			if (global.itemSelected[Boss.AngelSlayerRekZul] == true){global.player.canAttack = true; global.player.leftClickCooldownLeft = 0;}
		}
		#endregion
		#region T52 Slime armor
		if (t52Active == true)
		{
			var slime = instance_create_depth(x,y,depth+1,obj_slimeProjectile);
			slime.speed = 2;
			slime.direction = point_direction(x,y,mouse_x,mouse_y);
		}
		#endregion
	}
	#endregion
#endregion
#region Ult
	#region ShadowAssassin
	if (class == Character.ShadowAssassin)
	{
		if (keyboard_check(ord("E")) && canUlt == true && global.itemSelected[Boss.DemonQueensHead] == false && global.itemSelected[Boss.BossRushReward] == false
		|| keyboard_check(ord("R")) && canUlt == true && global.itemSelected[Boss.DemonQueensHead] == false && global.itemSelected[Boss.BossRushReward] == false
		|| keyboard_check(ord("Q")) && canUlt == true && global.itemSelected[Boss.DemonQueensHead] == false && global.itemSelected[Boss.BossRushReward] == false)
		{
			canUlt = false;
			ultCooldownLeft = ultCooldown;
			activateUltItem = true;
			
			canRightClick = true;
			rightClickCooldownLeft = 0;
			canLeftClick = true;
			leftClickCooldownLeft = 0;
			canDash = true;
			dashCooldownLeft = 0;
			
			var particle = instance_create_depth(x,y,depth+1,obj_particle_healing_small);
			particle.objectToFollow = id;
			
			var amountHealed = maxHp-hp;
			var healText = instance_create_depth(obj_allPlayer.x+irandom_range(-8,8),obj_allPlayer.y+irandom_range(-5,5),obj_allPlayer.depth-10,obj_textMaker);
			healText.color = c_lime;
			healText.text = amountHealed/10;
			hp = maxHp;
			
		}
	}
	#endregion
	#region Pyromancer
	if (class == Character.Pyromancer)
	{
		if (keyboard_check(ord("E")) && canUlt == true && place_free(mouse_x,mouse_y) && global.itemSelected[Boss.DemonQueensHead] == false && global.itemSelected[Boss.BossRushReward] == false
		|| keyboard_check(ord("Q")) && canUlt == true && place_free(mouse_x,mouse_y) && global.itemSelected[Boss.DemonQueensHead] == false && global.itemSelected[Boss.BossRushReward] == false
		|| keyboard_check(ord("R")) && canUlt == true && place_free(mouse_x,mouse_y) && global.itemSelected[Boss.DemonQueensHead] == false && global.itemSelected[Boss.BossRushReward] == false)
		{
			canUlt = false;
			ultCooldownLeft = ultCooldown;
			activateUltItem = true;
			
			meteorStun = 0;
			targetX = mouse_x;
			targetY = mouse_y;
			
			meteor = instance_create_depth(targetX+50,targetY-400,-1000,obj_firebolt);
			meteor.direction = 260;
			meteor.image_angle = meteor.direction+90;
			meteor.image_alpha = 0.75;
			meteor.speed = 6;
			meteor.image_xscale = 1.45;
			meteor.image_yscale = meteor.image_xscale;
			meteor.charge = 15;
			meteor.isMeteor = true;
			meteor.sprite_index = spr_firebolt_meteor;
			
			instance_create_depth(x,y,-y,obj_pyroPortal);
			instance_create_depth(x,y,-y,obj_portal_bottom);
		}
		if (meteorStun == 0 && instance_exists(meteor))
		{
			x = meteor.x;
			y = meteor.y;
			var meteorNear = instance_nearest(x,y,obj_firebolt);
			meteorNear.depth = -10000;
			
			global.iFrame = true;
			image_alpha = 0;
			if (x < targetX)
			{
				meteorStun = 1;
				image_alpha = 1;
			}
		}
		if (instance_exists(meteor) == false)
		{
			meteorStun = 1;	
			image_alpha = 1;
			
		}
	}
	#endregion
	#region BloodKnight
	if (class == Character.BloodKnight)
	{
		if (keyboard_check(ord("E")) && canUlt == true && global.itemSelected[Boss.DemonQueensHead] == false && global.itemSelected[Boss.BossRushReward] == false
		|| keyboard_check(ord("R")) && canUlt == true && global.itemSelected[Boss.DemonQueensHead] == false && global.itemSelected[Boss.BossRushReward] == false
		|| keyboard_check(ord("Q")) && canUlt == true && global.itemSelected[Boss.DemonQueensHead] == false && global.itemSelected[Boss.BossRushReward] == false)
		{
			canUlt = false;
			ultCooldownLeft = ultCooldown;
			activateUltItem = true;
			
			
			instance_create_depth(x,y,depth+1,obj_bloodBeamEffect);
			var bloodBeam = instance_create_depth(x,y,depth+2,obj_bloodBeam);
			bloodBeam.image_angle = point_direction(x,y,mouse_x,mouse_y)+270;
			bloodBeam.image_yscale = 20;
			bloodBeam.image_xscale = 1.8;
			with(obj_camera){shake_remain += 10;}
		}
	}
	#endregion
	#region Agent Of God
	if (class == Character.AgentOfGod)
	{
		if (keyboard_check(ord("E")) && canUlt == true && global.itemSelected[Boss.DemonQueensHead] == false && global.itemSelected[Boss.BossRushReward] == false
		|| keyboard_check(ord("R")) && canUlt == true && global.itemSelected[Boss.DemonQueensHead] == false && global.itemSelected[Boss.BossRushReward] == false
		|| keyboard_check(ord("Q")) && canUlt == true && global.itemSelected[Boss.DemonQueensHead] == false && global.itemSelected[Boss.BossRushReward] == false)
		{
			canUlt = false;
			ultCooldownLeft = ultCooldown;
			activateUltItem = true;
			
			with(obj_camera){shake_remain += 2;}
			machineGunTimes += 20;
		}
		if (machineGunTimes > 0){machineGunStacks++;}
		if (machineGunStacks >= (0.125)*30)
		{
			machineGunStacks = 0;
			machineGunTimes--;
			
			repeat (30)//30
			{
				var bolt = instance_create_depth(x+irandom_range(-1,1),y+irandom_range(-1,1),depth+1,obj_barageBolts);
				//bolt.speed = random_range(1,7);
				bolt.speed = random_range(1,5);
				var accuracy = 30;
				bolt.direction = point_direction(x,y,mouse_x+irandom_range(-accuracy,accuracy),mouse_y+irandom_range(-accuracy,accuracy));
				bolt.image_angle = bolt.direction+90;
				//Visual
				//bolt.image_blend = choose(c_aqua,c_white,c_teal);
				bolt.image_xscale = 0.45;
				bolt.image_yscale = bolt.image_xscale;
			}
		}
	}

	#endregion
	#region Angel Slayer
	if (class == Character.AngelSlayer)
	{
		if (keyboard_check(ord("E")) && canUlt == true && global.itemSelected[Boss.DemonQueensHead] == false && global.itemSelected[Boss.BossRushReward] == false
		|| keyboard_check(ord("R")) && canUlt == true && global.itemSelected[Boss.DemonQueensHead] == false && global.itemSelected[Boss.BossRushReward] == false
		|| keyboard_check(ord("Q")) && canUlt == true && global.itemSelected[Boss.DemonQueensHead] == false && global.itemSelected[Boss.BossRushReward] == false)
		{
			canUlt = false;
			ultCooldownLeft = ultCooldown;
			activateUltItem = true;
			
			slayerSpeed = 1.50;
			ultimateStacks = ultimateTime;
		}
		if (ultimateStacks > 0){ultimateStacks--;}
		if (ultimateStacks <= 0 && slayerSpeed > 1)
		{
			ultimateStacks = 0;
			slayerSpeed = 1;
			if (global.itemSelected[Boss.DeathKnight] == false)
			{
				obj_slayerScythe.state = MeleeWeaponStates.idle;
			}
			if (global.itemSelected[Boss.DeathKnight] == true)
			{
				obj_equipment_deathScythe.state = MeleeWeaponStates.idle;
			}
		}
		if (slayerSpeed > 1)
		{
			if (global.itemSelected[Boss.DeathKnight] == false)
			{
				obj_slayerScythe.state = MeleeWeaponStates.SpinChase;
			}
			if (global.itemSelected[Boss.DeathKnight] == true)
			{
				obj_equipment_deathScythe.state = MeleeWeaponStates.SpinChase;
			}
		}
	}
	#endregion
	#region Graveling
	if (class == Character.Graveling)
	{
		obj_gravelingRange.image_xscale = 0.055 * actualSpeedBefore*4*(1+gameMaster.bonusDash/100);
		obj_gravelingRange.image_yscale = obj_gravelingRange.image_xscale;
		teleportRange = 6 * actualSpeedBefore * 4 * (1+gameMaster.bonusDash/100);
		
		if (keyboard_check(ord("E")) && canUlt == true && global.itemSelected[Boss.DemonQueensHead] == false && global.itemSelected[Boss.BossRushReward] == false
		|| keyboard_check(ord("R")) && canUlt == true && global.itemSelected[Boss.DemonQueensHead] == false && global.itemSelected[Boss.BossRushReward] == false
		|| keyboard_check(ord("Q")) && canUlt == true && global.itemSelected[Boss.DemonQueensHead] == false && global.itemSelected[Boss.BossRushReward] == false)
		{
			canUlt = false;
			ultCooldownLeft = ultCooldown;
			activateUltItem = true;
			
			GDashStopLeft = GDashStop;
			dashDamage = true;
			actualGDashSpeed = clamp(actualSpeedBefore*4*(1+gameMaster.bonusDash/100),actualSpeedBefore*4,100);
			direction = point_direction(x,y,mouse_x,mouse_y);
			if (global.dashTowardsMove){direction = moveDirection;}
			gravelingSpeed = clamp(gravelingSpeed+0.5,0,gravlingMaxSpeed);
		}
		
		if (GDashStopLeft > 0)
		{
			GDashStopLeft--;
			if (dashDamage == true && place_meeting(x,y,par_enemy))
			{
				dashDamage = false;
				var enemy = instance_nearest(x,y,par_enemy);
				var player = instance_nearest(x,y,obj_allPlayer);	
				var damageDealt = global.damage*5*actualSpeedBefore;
				var damageText = instance_create_depth(enemy.x+irandom_range(-8,8),enemy.y+irandom_range(-5,5),enemy.depth-10,obj_textMaker);
				damageText.color = c_white;
				damageText.text = damageDealt;
				enemy.hp -= global.damage*5*actualSpeedBefore;
			
				var amountHealed = global.damage*5*actualSpeedBefore*global.lifeSteal;
				var healText = instance_create_depth(obj_allPlayer.x+irandom_range(-8,8),obj_allPlayer.y+irandom_range(-5,5),obj_allPlayer.depth-10,obj_textMaker);
				healText.color = c_lime;
				healText.text = amountHealed;
				hp += global.damage*5*actualSpeedBefore*global.lifeSteal;
			}
		}
		if (GDashStopLeft <= 0)
		{
			actualGDashSpeed = 0; 
			dashDamage = false; 
		}
	}
	#endregion
	#region Plaguewalker
	if (class == Character.PlaugeWalker)
	{
		if (keyboard_check(ord("E")) && canUlt == true && global.itemSelected[Boss.DemonQueensHead] == false && global.itemSelected[Boss.BossRushReward] == false
		|| keyboard_check(ord("R")) && canUlt == true && global.itemSelected[Boss.DemonQueensHead] == false && global.itemSelected[Boss.BossRushReward] == false
		|| keyboard_check(ord("Q")) && canUlt == true && global.itemSelected[Boss.DemonQueensHead] == false && global.itemSelected[Boss.BossRushReward] == false)
		{
			canUlt = false;
			ultCooldownLeft = ultCooldown;
			activateUltItem = true;
			
			var zamii = instance_create_depth(x,y,depth,obj_zamii);
			zamii.image_xscale =  0.65 + 0.35*conjurationPower;
			zamii.image_yscale = zamii.image_xscale;
		}
	}
	#endregion
	#region Items
	#region Big Fucking Blast 9000
	if (keyboard_check(ord("E")) && canUlt == true && global.itemSelected[Boss.DemonQueensHead] == true && global.itemSelected[Boss.BossRushReward] == false
	|| keyboard_check(ord("R")) && canUlt == true && global.itemSelected[Boss.DemonQueensHead] == true && global.itemSelected[Boss.BossRushReward] == false
	|| keyboard_check(ord("Q")) && canUlt == true && global.itemSelected[Boss.DemonQueensHead] == true && global.itemSelected[Boss.BossRushReward] == false)
	{
		canUlt = false;
		ultCooldownLeft = ultCooldown;
		activateUltItem = true;
		
		var bfBlast = instance_create_depth(x,y,depth-1,obj_bfBlast);
		bfBlast.speed = 6;
		bfBlast.direction = point_direction(x,y,mouse_x,mouse_y);
		if (global.autoAim == true && instance_exists(obj_allBoss)){bfBlast.direction = point_direction(x,y,obj_allBoss.x,obj_allBoss.y);}
		//Visual
		bfBlast.image_angle = bfBlast.direction+90;
		bfBlast.image_blend = c_lime;
		bfBlast.image_xscale = 0.55 + global.damage/4;
		bfBlast.image_yscale = bfBlast.image_xscale;
		
		if (class == Character.ShadowAssassin){canLeftClick = true;	leftClickCooldownLeft = 0;}
		if (class == Character.AngelSlayer){canLeftClick = true;	leftClickCooldownLeft = 0;}
		if (class == Character.Pyromancer){instance_create_depth(x,y,-y,obj_pyroPortal); instance_create_depth(x,y,-y,obj_portal_bottom);}
		if (class == Character.Graveling){gravelingSpeed = clamp(gravelingSpeed+0.5,0,gravlingMaxSpeed);}
	}
	#endregion
	#region Steamport Heart
	if (keyboard_check(ord("E")) && canUlt == true && global.itemSelected[Boss.BossRushReward] == true
	|| keyboard_check(ord("R")) && canUlt == true && global.itemSelected[Boss.BossRushReward] == true
	|| keyboard_check(ord("Q")) && canUlt == true && global.itemSelected[Boss.BossRushReward] == true)
	{
		canUlt = false;
		ultCooldownLeft = ultCooldown;
		activateUltItem = true;
		
		sPHDashStopLeft = sPHDashStop;
		sPHDashDamage = true;
		actualSPHDashSpeed = dashSpeed*2;
		direction = point_direction(x,y,mouse_x,mouse_y);
		if (global.dashTowardsMove){direction = moveDirection;}
		
		if (class == Character.ShadowAssassin){canLeftClick = true;	leftClickCooldownLeft = 0;}
		if (class == Character.AngelSlayer){canLeftClick = true;	leftClickCooldownLeft = 0;}
		if (class == Character.Pyromancer){instance_create_depth(x,y,-y,obj_pyroPortal); instance_create_depth(x,y,-y,obj_portal_bottom);}
		if (class == Character.Graveling){gravelingSpeed = clamp(gravelingSpeed+0.5,0,gravlingMaxSpeed);}
	}
	if (sPHDashStopLeft > 0)
	{
		sPHDashStopLeft--;
		if (sPHDashDamage == true && place_meeting(x,y,par_enemy))
		{
			sPHDashDamage = false;
			var enemy = instance_nearest(x,y,par_enemy);
			var player = instance_nearest(x,y,obj_allPlayer);	
			var damageDealt = 6*actualSpeedBefore*(1+(gameMaster.bonusDash/100));
			var damageText = instance_create_depth(enemy.x+irandom_range(-8,8),enemy.y+irandom_range(-5,5),enemy.depth-10,obj_textMaker);
			damageText.color = c_white;
			damageText.text = damageDealt;
			enemy.hp -= damageDealt;
			
			var amountHealed = damageDealt*global.lifeSteal;
			var healText = instance_create_depth(obj_allPlayer.x+irandom_range(-8,8),obj_allPlayer.y+irandom_range(-5,5),obj_allPlayer.depth-10,obj_textMaker);
			healText.color = c_lime;
			healText.text = amountHealed;
			hp += damageDealt*global.lifeSteal;
		}
	}
	if (sPHDashStopLeft <= 0)
	{
		actualSPHDashSpeed = 0; 
		sPHDashDamage = false; 
	}
	#endregion
	#region t52 Slime Armor
	if (global.itemSelected[Boss.SlimeQueen] == true)
	{
		if (t52Stacks > 0){t52Stacks--;}
		if (t52Stacks <= 0 && t52Active == true)
		{
			t52Stacks = 0;
			idleSprite = normalIdleSprite;
			walkSprite = normalWalkSprite;
			t52Active = false;
			t52Speed = 1;
			maxHp = normalMaxHp;
		}
	}
	#endregion
	if (activateUltItem == true)
	{
		activateUltItem = false;
		
		#region t52 Slime Armor
		if (global.itemSelected[Boss.SlimeQueen] == true)
		{
			idleSprite = t52Idle;
			walkSprite = t52Walking;
			t52Stacks = t52Time;
			t52Active = true;
			t52Speed = 0.80;
			var oldMaxHp = maxHp;
			if (class != Character.AngelSlayer)
			{
				maxHp = slimeArmorHp;
				hp += maxHp - oldMaxHp;
			}
		}
		#endregion
		#region Bloodarmy General
		if (global.itemSelected[Boss.BloodKnightDavid] == true)
		{
			shield = true;
			var damageToTarget = hp*0.30;
			var damageText = instance_create_depth(x+irandom_range(-8,8),y+irandom_range(-5,5),depth-10,obj_textMaker);
			damageText.color = c_maroon;
			damageText.text = damageToTarget/10;
			hp -= damageToTarget;
		}
		#endregion
		#region Zombie Head
		if (global.itemSelected[Boss.BloodZombie] == true && instance_exists(par_enemy))
		{
			if (gameMaster.chosenClass != Character.Pyromancer)
			{
				var bloodPuddle = instance_create_depth(x,y,-6,obj_equipment_bloodPuddle);
				bloodPuddle.image_xscale = 0.6;
				bloodPuddle.image_yscale = bloodPuddle.image_xscale;
			}
			if (gameMaster.chosenClass == Character.Pyromancer && instance_exists(obj_allBoss))
			{
				var bloodPuddle = instance_create_depth(obj_allBoss.x,obj_allBoss.y,-6,obj_equipment_bloodPuddle);
				bloodPuddle.image_xscale = 0.6;
				bloodPuddle.image_yscale = bloodPuddle.image_xscale;
			}
		}
		#endregion
		#region DeathKing Boss and Arena King
		if (instance_exists(obj_allBoss))
		{
			if (gameMaster.chosenBoss == Boss.DeathKing)
			{
				with (obj_allBoss)
				{
					
					if (place_free(x+teleportX,y+teleportY))
					{
						x = x + teleportX;
						y = y + teleportY;
						
						teleportX = choose(-75,75);
						teleportY = choose(-75,75);
						
						canTeleport = false;
					}
				}
			}
		}
		#endregion
	}
	#endregion
#endregion
#region Dash
	#region Shadow Assassin
	if (class == Character.ShadowAssassin)
	{
		if (keyboard_check(vk_space) && canDash == true)
		{
			canDash = false;
			dashCooldownLeft = dashCooldown;
			activateDashItem = true;
			dashStopLeft = dashStop;
			actualDashSpeed = dashSpeed;
			direction = point_direction(x,y,mouse_x,mouse_y);
			if (global.dashTowardsMove){direction = moveDirection;}
			
			canLeftClick = true;
			leftClickCooldownLeft = 0;
			
			with(obj_shadowAttackRange)
			{
				dealDamageTimes += 4;
				dealDamage = true;
			}
		}
		if (speed > 0)
		{
			var shadowTrail = instance_create_depth(x,y,depth,obj_particle_dash_characterFollow);
			shadowTrail.fadeSpeed = 0.2;
			shadowTrail.sprite_index = idleSprite;
			shadowTrail.image_xscale = image_xscale;
			shadowTrail.image_yscale = image_yscale;
		}
	}
	#endregion
	#region Pyromancer
	if (class == Character.Pyromancer)
	{
		if (keyboard_check(vk_space) && canDash == true && meteorStun != 0)
		{
			canDash = false;
			dashCooldownLeft = dashCooldown;
			activateDashItem = true;
			dashStopLeft = dashStop;
			global.iFrame = true;
			actualDashSpeed = dashSpeed*2;
			direction = point_direction(x,y,mouse_x,mouse_y);
			if (global.dashTowardsMove){direction = moveDirection;}
			
			instance_create_depth(x,y,-y,obj_pyroPortal);
			instance_create_depth(x,y,-y,obj_portal_bottom);
		}
		if (speed > 0)
		{
			var poisonTrail = instance_create_depth(x,y,depth,obj_particle_dash_characterFollow);
			poisonTrail.fadeSpeed = 0.25;
			poisonTrail.sprite_index = spr_firebolt_big;
			poisonTrail.image_xscale = 0.65;
			poisonTrail.image_yscale = 0.65;
			poisonTrail.image_angle = direction+90;
			poisonTrail.image_blend = global.orange;
			poisonTrail.image_alpha = 0.75;	
			poisonTrail.objectToInheritFrom = id;
		}
	}
	#endregion
	#region Bloodknight
	if (class == Character.BloodKnight)
	{
		if (keyboard_check(vk_space) && canDash == true)
		{
			canDash = false;
			dashCooldownLeft = dashCooldown;
			activateDashItem = true;
			dashStopLeft = dashStop;
			actualDashSpeed = dashSpeed;
			direction = point_direction(x,y,mouse_x,mouse_y);
			if (global.dashTowardsMove){direction = moveDirection;}
			
			repeat(int64(1*conjurationPower))
			{
				var batShot = instance_create_depth(x+irandom_range(-25,25),y+irandom_range(-25,25),depth+1,obj_batProjectile);
				batShot.speed = 6;
				batShot.sprite_index = spr_batprojectile_long;
				batShot.direction = point_direction(x,y,mouse_x,mouse_y);
				batShot.destroyTime = 3*30;
				batShot.image_xscale = 1.25;
				batShot.image_yscale = batShot.image_xscale;
			}
		}
		if (speed > 0)
		{
			var bloodTrail = instance_create_depth(x,y,depth,obj_particle_dash_characterFollow);
			bloodTrail.fadeSpeed = 0.25;
			bloodTrail.sprite_index = spr_bloodBeamEffect;
			bloodTrail.image_xscale = image_xscale*0.65;
			bloodTrail.image_yscale = bloodTrail.image_xscale;
			bloodTrail.objectToInheritFrom = id;
		}
	}
	#endregion
	#region Agent Of God
	if (class == Character.AgentOfGod)
	{
		if (keyboard_check(vk_space) && canDash == true)
		{
			canDash = false;
			dashCooldownLeft = dashCooldown;
			activateDashItem = true;
			dashStopLeft = dashStop;
			actualDashSpeed = dashSpeed*1.5;
			direction = point_direction(x,y,mouse_x,mouse_y);
			if (global.dashTowardsMove){direction = moveDirection;}
			
			var holyBolt = instance_create_depth(x,y,depth+1,obj_holyBlast);
			holyBolt.speed = dashSpeed*2.25;
			holyBolt.direction = direction;
			holyBolt.image_angle = holyBolt.direction+90;
			//Visual
			holyBolt.image_xscale = 0.25 + global.damage/2;
			holyBolt.image_yscale = holyBolt.image_xscale
		}
		if (speed > 0)
		{
			var holyTrail = instance_create_depth(x,y,depth,obj_particle_dash_characterFollow);
			holyTrail.fadeSpeed = 0.1;
			holyTrail.sprite_index = idleSprite;
			holyTrail.image_xscale = image_xscale;
			holyTrail.image_yscale = image_yscale;
			holyTrail.image_alpha = 0.5;
		}
	}
	#endregion
	#region Angel Slayer
	if (class == Character.AngelSlayer)
	{
		if (keyboard_check(vk_space) && canDash == true && slayerSpeed == 1)
		{
			canDash = false;
			dashCooldownLeft = dashCooldown;
			activateDashItem = true;
			dashStopLeft = dashStop;
			actualDashSpeed = slayerDashSpeed*2.5;
			direction = point_direction(x,y,mouse_x,mouse_y);
			if (global.dashTowardsMove){direction = moveDirection;}
			
			canLeftClick = true;
			leftClickCooldownLeft = 0;
		}
		if (speed == 0)
		{
			var demonShade = instance_create_depth(x,y,depth,obj_particle_dash_characterFollow);
			demonShade.fadeSpeed = 0.20;//0.15
			demonShade.sprite_index = sprite_index;
			demonShade.image_xscale = image_xscale;
			demonShade.image_yscale = image_yscale;
			demonShade.image_angle = image_angle;
			demonShade.image_alpha = image_alpha;
			demonShade.image_speed = image_speed;
			demonShade.image_alpha = 0.5;
		}
		if (speed > 0)
		{
			var demonShade = instance_create_depth(x,y,depth,obj_particle_dash_characterFollow);
			demonShade.fadeSpeed = 0.1;//0.05
			demonShade.sprite_index = spr_particle_demonTrail;
			demonShade.image_xscale = image_xscale;
			demonShade.image_yscale = image_yscale;
			demonShade.image_angle = image_angle;
			demonShade.image_alpha = image_alpha;
			demonShade.image_speed = image_speed;
			demonShade.image_alpha = 1;
		}
	}
	#endregion
	#region Graveling
	if (class == Character.Graveling)
	{
		if (keyboard_check(vk_space) && canDash == true)
		{
			canDash = false;
			dashCooldownLeft = dashCooldown;
			activateDashItem = true;
			
			gravelingSpeed = clamp(gravelingSpeed+0.5,0,gravlingMaxSpeed);
			var deadGround = instance_create_depth(x,y,depth,obj_deadGround);
			deadGround.destroyTimer = (2 + actualSpeedBefore)*30;
			deadGround.image_blend = c_olive;
		}
		if (speed > 0)
		{
			var demonShade = instance_create_depth(x,y,depth,obj_particle_dash_characterFollow);
			demonShade.fadeSpeed = 0.2;//0.05
			demonShade.sprite_index = spr_bat;
			demonShade.image_xscale = image_xscale;
			demonShade.image_yscale = image_yscale;
			demonShade.image_angle = image_angle;
			demonShade.image_alpha = image_alpha;
			demonShade.image_speed = image_speed;
			demonShade.image_blend = c_dkgray;
			demonShade.image_alpha = 0.9;
		}
	}
	#endregion
	#region Plaguewalker
	if (class == Character.PlaugeWalker)
	{
		if (keyboard_check(vk_space) && canDash == true && slayerSpeed == 1)
		{
			canDash = false;
			dashCooldownLeft = dashCooldown;
			activateDashItem = true;
			dashStopLeft = dashStop;
			actualDashSpeed = dashSpeed;
			direction = point_direction(x,y,mouse_x,mouse_y);
			if (global.dashTowardsMove){direction = moveDirection;}
			
			var plagueWisp = instance_create_depth(x,y,depth,obj_plagueWisp);
			plagueWisp.image_xscale = 0.75;
			plagueWisp.image_yscale = plagueWisp.image_xscale;
		}
		if (speed > 0)
		{
			var poisonTrail = instance_create_depth(x,y,depth,obj_particle_dash_characterFollow);
			poisonTrail.fadeSpeed = 0.075;
			poisonTrail.sprite_index = spr_firebolt_big;
			poisonTrail.image_xscale = image_xscale;
			poisonTrail.image_yscale = image_yscale;
			poisonTrail.image_angle = direction+90;
			poisonTrail.image_blend = c_lime;
			poisonTrail.image_alpha = 0.75;	
			poisonTrail.objectToInheritFrom = id;
		}
	}
	#endregion
	#region Items
	if (activateDashItem == true)
	{
		activateDashItem = false;
		#region DemonHorn
		if (global.itemSelected[Boss.FlameGate] == true)
		{
			var horn = instance_create_depth(x,y,-y,obj_equipment_demonClaw);
			horn.destroyTime = (maxHp/75)*30;
		}
		#endregion
		#region the last wish
			if (global.itemSelected[Boss.WispSisters] == true && instance_exists(obj_equipment_theLastWish) == false)
			{
				instance_create_depth(x,y,depth,obj_equipment_theLastWish);
			}
			if (global.itemSelected[Boss.WispSisters] == true && instance_exists(obj_equipment_theLastWish) == true)
			{
				with (obj_equipment_theLastWish)
				{
					x = global.player.x;
					y = global.player.y;
				}
			}
		#endregion
		#region T52 Slime Armor
		if (t52Active == true)
		{
			var slime = instance_create_depth(x,y,depth+1,obj_slimeProjectile);
			slime.speed = 2;
			slime.direction = point_direction(x,y,mouse_x,mouse_y);
		}
		#endregion
		#region Demon general rektaar
		if (global.itemSelected[Boss.DemonLordRekTaar] == true)
		{
			canLeftClick = true;
			leftClickCooldownLeft = 0;
		}
		#endregion
	}
	#endregion
#endregion
#region Items
	#region Flamie
	if (summonFlamie == true)
	{
		summonFlamieStacks++;
	}
	if (summonFlamieStacks >= summonFlamieTime)
	{
		summonFlamieStacks = 0;
		instance_create_depth((global.arenaMiddleX-x) + global.arenaMiddleX,(global.arenaMiddleY-y) + global.arenaMiddleY,depth,obj_equipment_flamie);
	}
	#endregion
	#region EdgeOfCorruption
	if (!keyboard_check(global.moveDownKey) && !keyboard_check(global.moveLeftKey)  && !keyboard_check(global.moveRightKey) && !keyboard_check(global.moveUpKey) && speed == 0 && global.itemSelected[Boss.TheCorrupter] == true)
	{
		edgeOfCorruptionCharge += 1;
	}
	else
	{
		edgeOfCorruptionCharge -= 2;	
	}
	if (edgeOfCorruptionCharge >= edgeOfCorruptionChargeTime)
	{
		instance_create_depth(x,y,depth+1,obj_bloodBeamEffect);
		var corruptionBeam = instance_create_depth(x,y,depth+2,obj_equipment_corruptionBeam);
		corruptionBeam.image_angle = point_direction(x,y,mouse_x,mouse_y)+270;
		if (global.autoAim == true && instance_exists(obj_allBoss)){corruptionBeam.image_angle = point_direction(x,y,obj_allBoss.x,obj_allBoss.y)+270;}
		corruptionBeam.image_yscale = 20;
		corruptionBeam.image_xscale = 1.8;
		corruptionBeam.image_blend = c_fuchsia;
		
		instance_create_depth(x,y,depth,obj_coruptionBeamEffect);
		
		with(obj_camera){shake_remain += 5;}
		edgeOfCorruptionCharge = 0;
	} 
	if (edgeOfCorruptionCharge < 0){edgeOfCorruptionCharge = 0;}
	#endregion
	#region Zombie Head
	if (place_meeting(x,y,obj_equipment_bloodPuddle)){bPSpeed = 1 + (50)/100;}
	if (!place_meeting(x,y,obj_equipment_bloodPuddle)){bPSpeed = 1;}
	if (place_meeting(x,y,obj_bigFuckingPuddle)){bfSpeed = 1.3;}
	if (!place_meeting(x,y,obj_bigFuckingPuddle)){bfSpeed = 1;}
	#endregion
	#region Bloodarmy General
	shieldSpeed = 1;
	if (shield == true)
	{
		shieldStacks++;
		global.iFrame = true;
		shieldSpeed = 0;
	}
	if (shieldStacks >= shieldTime)
	{
		shieldStacks = 0;
		shield = false;
	}
	#endregion
	#region Campagin Reward
	if (global.itemSelected[Boss.CampaignReward] == true && hellStacks >= 15)
	{
		hellStacks = 0;
		var demonQueen = instance_create_depth(obj_allBoss.x,obj_allBoss.y-250,-obj_allBoss.y-250,obj_demonQueen);
		demonQueen.speed = 9;
		demonQueen.direction = 270;
	}
	#endregion
#endregion
#region Cooldowns
if (leftClickCooldownLeft > 0){leftClickCooldownLeft--;}
if (leftClickCooldownLeft <= 0){canLeftClick = true;}
if (rightClickCooldownLeft > 0){rightClickCooldownLeft--;}
if (rightClickCooldownLeft <= 0){canRightClick = true;}
if (dashCooldownLeft > 0){dashCooldownLeft--;}
if (dashCooldownLeft <= 0){canDash = true;}
if (dashStopLeft > 0){dashStopLeft--;}
if (dashStopLeft <= 0)
{
	actualDashSpeed -= dashSpeed;
}
if (ultCooldownLeft > 0){ultCooldownLeft--;}
if (ultCooldownLeft <= 0){canUlt = true;}
#endregion
}
#endregion
#region dead
if (hp <= 0 && state != States.Dead)
{
	state = States.Dead;
	gameMaster.menu = Menues.Death;
	gameMaster.deathAlpha = 0;
	gameMaster.backToMenuAlpha = 1;
	speed = 0;
	moveSpeed = 0;
	sprite_index = deadSprite;
	global.campaignDifficulty -= 0.05;
	global.campaignDifficulty = clamp(global.campaignDifficulty,global.minDifficulty,global.maxDifficulty);
}
if (gameMaster.menu == Menues.Death)
{
	hp = 0;
	speed = 0;
	image_angle += 10;
	image_angle = clamp(image_angle,0,90);
}
#endregion