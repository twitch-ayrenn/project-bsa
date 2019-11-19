/// @description Code
#region Vars
if (global.itemSelected[Boss.DeathKnight] == true){direction = point_direction(x,y,mouse_x,mouse_y);}
if (hp > maxHp){hp = maxHp;}
depth = -y;
blackOutAlpha += clamp(0.1/30,0,1);//Varus
image_angle = 0;
#region Speed
//checkBefore
if (speed < 0){speed = 0;}
if (actualDashSpeed < 0){actualDashSpeed = 0;}
if (actualBKDashSpeed < 0){actualBKDashSpeed = 0;}
//speed
speed = actualDashSpeed + actualBKDashSpeed;
//checkAfter
if (speed < 0){speed = 0;}
if (actualDashSpeed < 0){actualDashSpeed = 0;}
if (actualBKDashSpeed < 0){actualBKDashSpeed = 0;}
if (speed > 0){global.iFrame = true;}
if (speed == 0){global.iFrame = false;}
#endregion
randomize();
#endregion
#region Alive
if (state == States.Idle || state == States.Walking)
{
#region Movement
actualSpeed = (moveSpeed)*bPSpeed*global.playerBossSlow*meteorStun;
if (keyboard_check(ord("A")) && keyboard_check(ord("S")) || keyboard_check(ord("A")) && keyboard_check(ord("W")) ||  keyboard_check(ord("D")) && keyboard_check(ord("S")) || keyboard_check(ord("D")) && keyboard_check(ord("W")))
{
	actualSpeed = actualSpeed*0.85;
}
if (keyboard_check(ord("W")) && place_free(x,y-actualSpeed))
{
	y -= actualSpeed;
	state = States.Walking;
}
if (keyboard_check(ord("S")) && place_free(x,y+actualSpeed))
{
	y += actualSpeed;
	state = States.Walking;
}
if (keyboard_check(ord("D")) && place_free(x+actualSpeed,y))
{
	x += actualSpeed;
	state = States.Walking;
}
if (keyboard_check(ord("A")) && place_free(x-actualSpeed,y))
{
	x -= actualSpeed;
	state = States.Walking;
}
if (!place_free(x+speed+1,y) ||! place_free(x-speed-1,y) || !place_free(x,y+speed+1) || !place_free(x,y-speed-1))
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
	#region ShadowAssassin
	if (class == Character.ShadowAssassin)
	{
		if (mouse_check_button(mb_left) && canLeftClick == true && global.itemSelected[Boss.DeathKnight] == false)
		{
			if (instance_exists(obj_shadow))
			{
				if (distance_to_point(mouse_x,mouse_y) <= teleportRange && place_free(mouse_x,mouse_y) || point_distance(obj_shadow.x,obj_shadow.y,mouse_x,mouse_y) <= teleportRange && place_free(mouse_x,mouse_y))
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
		if (canLeftClick == true && global.itemSelected[Boss.DeathKnight] == false && meteorStun != 0)
		{
			if (mouse_check_button(mb_left))
			{
				charge += 1*(1+(gameMaster.bonusFirerate/100));
				moveSpeed = 0;
			}
			if (mouse_check_button_released(mb_left) || charge >= maxCharge || mouse_check_button(mb_left) && mouse_check_button(mb_right) ||
			mouse_check_button(mb_left) && keyboard_check(vk_space) || mouse_check_button(mb_left) && keyboard_check(ord("E")))
			{
				canLeftClick = false;
				leftClickCooldownLeft = leftClickCooldown;
				activateLeftClickItem = true;	
				
				var infernalBall = instance_create_depth(x,y,depth+1,obj_firebolt)
				infernalBall.speed = 4 + charge/45;
				infernalBall.direction = point_direction(x,y,mouse_x,mouse_y);
				infernalBall.image_angle = infernalBall.direction+90;
				infernalBall.image_xscale = 0.5 + charge/30;
				infernalBall.image_yscale = infernalBall.image_xscale;
				infernalBall.charge = 1 + ((charge/3)-1);
			
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
		if (mouse_check_button(mb_left) && canLeftClick == true && global.itemSelected[Boss.DeathKnight] == false)
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
	#region Items
	#region Death Scythe
	if (mouse_check_button(mb_left) && canLeftClick == true && global.itemSelected[Boss.DeathKnight] == true)
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
	}
	#endregion
	if (activateLeftClickItem == true)
	{
		activateLeftClickItem = false;
		if (instance_exists(obj_equipment_madHat))
		{
			with (obj_equipment_madHat)
			{
				var projectile = instance_create_depth(x,y,depth+1,obj_madBolt);
				projectile.direction = point_direction(x,y,mouse_x,mouse_y);
				projectile.speed = 6;
				projectile.image_angle = projectile.direction+90;
				projectile.image_xscale = 1;
				projectile.image_yscale = 1;
				projectile.image_alpha = 0.85;
				projectile.image_blend = c_green;
			}
		}
	}
	#endregion
	#region onGoingEffects
	
	#endregion
#endregion
#region RightClick
	#region ShadowAssassin
	if (class == Character.ShadowAssassin)
	{
		if (mouse_check_button(mb_right) && canRightClick == true && place_free(mouse_x,mouse_y))
		{
			canRightClick = false;
			rightClickCooldownLeft = rightClickCooldown;
			activateRightClickItem = true;
			
			canLeftClick = true;
			leftClickCooldownLeft = 0;
			var shadow = instance_create_depth(mouse_x,mouse_y,-mouse_y,obj_shadow);
			shadow.image_alpha = image_alpha-0.2;
			shadow.image_xscale = image_xscale;
			shadow.image_yscale = image_yscale;
			var shadowRange = instance_create_depth(mouse_y,mouse_x,depth,obj_shadowAttackRange);
			shadowRange.objectToFollow = shadow.id;
		}
	}
	#endregion
	#region Pyromancer
	if (class == Character.Pyromancer)
	{
		var coneWide = 45;
		var coneAmount = 6;
		if (mouse_check_button(mb_right) && canRightClick == true && meteorStun != 0)
		{
			canRightClick = false;
			rightClickCooldownLeft = rightClickCooldown;
			activateRightClickItem = true;
			
			doConeShot = true;
			coneShotTimes = coneShotAmount;
			
			var coneAtkFW = point_direction(x,y,mouse_x,mouse_y)-coneWide*0.5;
			repeat(coneAmount)
			{
				var fireBolt = instance_create_depth(x,y,depth+1,obj_firebolt);
				//Main
				fireBolt.direction = coneAtkFW;
				fireBolt.speed = 7;
				fireBolt.image_angle = fireBolt.direction+90;
				//Visual
				fireBolt.image_alpha = 0.85;
				fireBolt.image_xscale = 1.75;
				fireBolt.image_yscale = 1.75;
				fireBolt.effectType = Effect.Flare;
				fireBolt.charge = 1;
				coneAtkFW += (coneWide/coneAmount);
			}
			
			instance_create_depth(mouse_x,mouse_y,-mouse_y,obj_pyroPortal);
			instance_create_depth(mouse_x,mouse_y,-mouse_y,obj_portal_bottom);
			
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
			repeat(coneAmount)
			{
				var fireBolt = instance_create_depth(x,y,depth+1,obj_firebolt);
				//Main
				fireBolt.direction = coneAtkFW;
				fireBolt.speed = 7;
				fireBolt.image_angle = fireBolt.direction+90;
				//Visual
				fireBolt.image_alpha = 0.85;
				fireBolt.image_xscale = 1.75;
				fireBolt.image_yscale = 1.75;
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
		if (mouse_check_button(mb_right) && canRightClick == true)
		{
			canRightClick = false;
			rightClickCooldownLeft = rightClickCooldown;
			activateRightClickItem = true;
			
			instance_create_depth(x,y,depth-1,obj_bloodKnightDash);
			
			BKDashStopLeft = BKDashStop;
			actualBKDashSpeed = dashSpeed*2;
			direction = point_direction(x,y,mouse_x,mouse_y);
			#region DemonHorn
			if (global.itemSelected[Boss.FlameGate] == true)
			{
				var horn = instance_create_depth(x,y,-y,obj_equipment_demonClaw);
				horn.destroyTime = (maxHp/50)*30;
			}
			#endregion
		}
		if (BKDashStopLeft > 0){BKDashStopLeft--;}
		if (BKDashStopLeft <= 0)
		{
			actualBKDashSpeed -= dashSpeed*2; 
			instance_destroy(obj_bloodKnightDash);
		}
	}
	#endregion
	#region Items
	if (activateRightClickItem == true)
	{
		activateRightClickItem = false;
		#region MadHat
		if (global.itemSelected[Boss.TheMadWitches] == true && place_free(mouse_x,mouse_y))
		{
			if (madHatAmount == 1){instance_create_depth(mouse_x,mouse_y,-mouse_y,obj_equipment_madHat);}
			if (madHatAmount == 2)
			{
				instance_create_depth(mouse_x+5,mouse_y,-mouse_y,obj_equipment_madHat);
				instance_create_depth(mouse_x-5,mouse_y,-mouse_y,obj_equipment_madHat);
			}
			if (madHatAmount == 3)
			{
				instance_create_depth(mouse_x+4,mouse_y+4,-mouse_y,obj_equipment_madHat);
				instance_create_depth(mouse_x-4,mouse_y+4,-mouse_y,obj_equipment_madHat);
				instance_create_depth(mouse_x,mouse_y+6,-mouse_y,obj_equipment_madHat);
			}
		}
		#endregion
		#region Futuristic Soldier
		if (global.itemSelected[Boss.WispSisterJulia] == true)
		{
			global.fSFireRate *= clamp(0.75,0.1*30,1);
		}
		#endregion
	}
	#endregion
#endregion
#region Ult
	#region ShadowAssassin
	if (class == Character.ShadowAssassin)
	{
		if (keyboard_check(ord("E")) && canUlt == true)
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
			hp = maxHp;
		}
	}
	#endregion
	#region Pyromancer
	if (class == Character.Pyromancer)
	{
		if (keyboard_check(ord("E")) && canUlt == true && place_free(mouse_x,mouse_y) )
		{
			canUlt = false;
			ultCooldownLeft = ultCooldown;
			activateUltItem = true;
			
			meteorStun = 0;
			targetX = mouse_x;
			targetY = mouse_y;
			
			meteor = instance_create_depth(targetX+50,targetY-200,-1000,obj_firebolt);
			meteor.direction = 255;
			meteor.image_angle = meteor.direction+90;
			meteor.image_alpha = 0.75;
			meteor.speed = 3;
			meteor.image_xscale = 5;
			meteor.image_yscale = meteor.image_xscale;
			meteor.charge = 15;
			meteor.isMeteor = true;
			
			instance_create_depth(x,y,-y,obj_pyroPortal);
			instance_create_depth(x,y,-y,obj_portal_bottom);
		}
		if (meteorStun == 0 && instance_exists(meteor))
		{
			x = meteor.x;
			y = meteor.y;
			
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
		if (keyboard_check(ord("E")) && canUlt == true)
		{
			canUlt = false;
			ultCooldownLeft = ultCooldown;
			activateUltItem = true;
			
			instance_create_depth(x,y,depth+1,obj_bloodBeamEffect);
			var bloodBeam = instance_create_depth(x,y,depth+2,obj_bloodBeam);
			bloodBeam.image_angle = point_direction(x,y,mouse_x,mouse_y)+270;
			bloodBeam.image_yscale = 20;
			bloodBeam.image_xscale = 1.8;
			with (obj_camera){shake_remain += 15;}
		}
	}
	#endregion
	#region Items
	if (activateUltItem == true)
	{
		activateUltItem = false;
		#region Zombie Head
		if (global.itemSelected[Boss.BloodZombie] == true && instance_exists(par_enemy))
		{
			if (instance_exists(obj_equipment_bloodPuddle) == true)
			{
				instance_destroy(obj_equipment_bloodPuddle);
				var bloodPuddle = instance_create_depth(x,y,-6,obj_equipment_bloodPuddle);
				bloodPuddle.image_xscale = 1.1;
				bloodPuddle.image_yscale = bloodPuddle.image_xscale;
			}
			if (instance_exists(obj_equipment_bloodPuddle) == false)
			{
				var bloodPuddle = instance_create_depth(x,y,-6,obj_equipment_bloodPuddle);
				bloodPuddle.image_xscale = 1.1;
				bloodPuddle.image_yscale = bloodPuddle.image_xscale;
			}
		}
	}
	#endregion
		#region Futuristic Soldier
		if (global.itemSelected[Boss.WispSisterJulia] == true)
		{
			global.fSFireRate *= clamp(0.75,0.1*30,1);
		}
		#endregion
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
		
			canLeftClick = true;
			leftClickCooldownLeft = 0;
			
			with(obj_shadowAttackRange)
			{
				dealDamageTimes += 4;
				dealDamage = true;
			}
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
			
			instance_create_depth(x,y,-y,obj_pyroPortal);
			instance_create_depth(x,y,-y,obj_portal_bottom);
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
			
			var batCircleShotAngle = 0;
			var batCricleShotAmountL = 24;
			repeat(batCricleShotAmountL)
			{
				var batShot = instance_create_depth(x,y+3,depth+1,obj_batProjectile);
				batShot.direction = batCircleShotAngle;
				batShot.speed = 6;
				batShot.sprite_index = spr_batprojectile_long;
				batShot.destroyTime = (0.5)*30;
				batCircleShotAngle += 360/batCricleShotAmountL;
				batShot.follow = false;
			}
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
			horn.destroyTime = (maxHp/50)*30;
		}
		#endregion
		#region Futuristic Soldier
		if (global.itemSelected[Boss.WispSisterJulia] == true)
		{
			global.fSFireRate *= clamp(0.75,0.1*30,1);
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
		var bloodBeam = instance_create_depth(x,y,depth+2,obj_equipment_corruptionBeam);
		bloodBeam.image_angle = point_direction(x,y,mouse_x,mouse_y)+270;
		bloodBeam.image_yscale = 20;
		bloodBeam.image_xscale = 1.8;
		bloodBeam.image_blend = c_fuchsia;
		with (obj_camera){shake_remain += 15;}
		edgeOfCorruptionCharge = 0;
	} 
	if (edgeOfCorruptionCharge < 0){edgeOfCorruptionCharge = 0;}
	#endregion
	#region Zombie Head
	if (place_meeting(x,y,obj_equipment_bloodPuddle)){bPSpeed = 1 + (50)/100;}
	if (!place_meeting(x,y,obj_equipment_bloodPuddle)){bPSpeed = 1;}
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
if (hp <= 0)
{
	state = States.Dead;
	menu = Menues.Death;
	speed = 0;
	moveSpeed = 0;
}
if (state == States.Dead)
{
	image_angle += clamp(1,0,90);
	if (image_angle >= 90)
	{
		sprite_index = deadSprite;
	}
}
#endregion