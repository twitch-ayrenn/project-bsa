/// @description Code
#region Vars
if (hp > maxHp){hp = maxHp;}
depth = -y;
blackOutAlpha += clamp(0.1/30,0,1);//Varus
randomize();
#endregion
#region Movement
actualSpeed = moveSpeed;
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
if (keyboard_check(ord("A")) && keyboard_check(ord("S")) || keyboard_check(ord("A")) && keyboard_check(ord("W"))
||  keyboard_check(ord("D")) && keyboard_check(ord("S")) || keyboard_check(ord("D")) && keyboard_check(ord("W")))
{
	actualSpeed = actualSpeed^0.5;
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
		if (mouse_check_button_released(mb_left) && canLeftClick == true)
		{
			if (distance_to_point(mouse_x,mouse_y) <= teleportRange && place_free(mouse_x,mouse_y))
			{
				canLeftClick = false;
				leftClickCooldownLeft = leftClickCooldown;
				instance_create_depth(x,y,depth,obj_tpEffect);
				image_alpha = 0;
				if (global.soundOn == true)
				{
					audio_play_sound(snd_teleport,Prioity.Low,false);
				}
		
				x = mouse_x;
				y = mouse_y;
				var angleL = 0;
				var amountL = int64(16);
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
		if (mouse_check_button_released(mb_left) && canLeftClick == true)
		{
			if (distance_to_point(mouse_x,mouse_y) > teleportRange && place_free(mouse_x,mouse_y))
			{
				canLeftClick = false;
				leftClickCooldownLeft = leftClickCooldown/2;
				knivesToThrow += 6;
				throwingDirection = point_direction(x,y,mouse_x,mouse_y);
			}
		}
	}
	#endregion
	#region Pyromancer
	if (class == Character.Pyromancer)
	{
		if (mouse_check_button_released(mb_left) && canLeftClick == true)
		{
			canLeftClick = false;
			leftClickCooldownLeft = leftClickCooldown;
			
			repeat(9)
			{
				var fireBolt = instance_create_depth(x,y+3,depth+1,obj_firebolt);
				fireBolt.direction = point_direction(x,y,mouse_x,mouse_y) + irandom_range(-35,35);
				fireBolt.image_angle = fireBolt.direction+90;
				fireBolt.speed = 5;
				fireBolt.image_xscale = 1;
				fireBolt.image_yscale = fireBolt.image_xscale;
			}
			var fbPAngleL = 0;
			var fbPAmountL = 9;
			repeat(fbPAmountL)
			{
				var fireBolt = instance_create_depth(x,y+3,depth+1,obj_firebolt);
				fireBolt.direction = fbPAngleL;
				fireBolt.image_angle = fireBolt.direction+90;
				fireBolt.speed = 4;
				fireBolt.image_xscale = 0.75;
				fireBolt.image_yscale = fireBolt.image_xscale;
				fireBolt.timeToDestroy = 18;
				fbPAngleL += 360/fbPAmountL;
			}
			if (instance_exists(obj_pyroPortal))
			{
				with (obj_pyroPortal)
				{
					repeat(9)
					{
						var fireBolt = instance_create_depth(x,y+3,depth+1,obj_firebolt);
						fireBolt.direction = point_direction(x,y,mouse_x,mouse_y) + irandom_range(-35,35);
						fireBolt.image_angle = fireBolt.direction+90;
						fireBolt.speed = 5;
						fireBolt.image_xscale = 1;
						fireBolt.image_yscale = fireBolt.image_xscale;
					}
					var fbPAngleL = 0;
					var fbPAmountL = 9;
					repeat(fbPAmountL)
					{
						var fireBolt = instance_create_depth(x,y+3,depth+1,obj_firebolt);
						fireBolt.direction = fbPAngleL;
						fireBolt.image_angle = fireBolt.direction+90;
						fireBolt.speed = 4;
						fireBolt.image_xscale = 0.75;
						fireBolt.image_yscale = fireBolt.image_xscale;
						fireBolt.timeToDestroy = 18;
						fbPAngleL += 360/fbPAmountL;
					}
				}
			}
		}
	}
	#endregion
	#region Bloodknight
	if (class == Character.BloodKnight)
	{
		if (mouse_check_button_released(mb_left) && canLeftClick == true)
		{
			canLeftClick = false;
			leftClickCooldownLeft = leftClickCooldown;
			
			if (rightClickMode == 1)
			{
				repeat(int64(batAmount))
				{
					var batShot = instance_create_depth(x+irandom_range(-25,25),y+irandom_range(-25,25),depth+1,obj_batProjectile);
					batShot.speed = 6;
					batShot.sprite_index = spr_batprojectile_long;
					batShot.direction = point_direction(x,y,mouse_x,mouse_y);
					batShot.destroyTime = 1*30;
				}
			}
			if (rightClickMode == 2)
			{
				repeat(int64(batAmount*2))
				{
					var batShot = instance_create_depth(x+irandom_range(-25,25),y+irandom_range(-25,25),depth+1,obj_batProjectile);
					batShot.speed = 6;
					batShot.sprite_index = spr_batprojectile_baby;
					batShot.direction = point_direction(x,y,mouse_x,mouse_y);
					batShot.destroyTime = 0.5*30;
				}
			}
			if (rightClickMode == 3)
			{
				repeat(int64(batAmount))
				{
					var batShot = instance_create_depth(x+irandom_range(-25,25),y+irandom_range(-25,25),depth+1,obj_batProjectile);
					batShot.speed = 6;
					batShot.sprite_index = spr_batprojectile_heal;
					batShot.direction = point_direction(x,y,mouse_x,mouse_y);
					batShot.destroyTime = 0.5*30;
				}
			}
			batAmount++;
			if (batAmount > 3){batAmount = 1;}
		}
	}
	#endregion
	#region Items
	#endregion
	#region onGoingEffects
	if (class == Character.ShadowAssassin)
	{
		if (knivesToThrow > 0 )
		{
			knivesThrownStacks++;	
		}
		if (knivesThrownStacks >= (0.333)*30 )
		{
			var dagger = instance_create_depth(x,y,depth+1,obj_dashKnife);
			dagger.direction = throwingDirection;
			dagger.speed = 7;
			dagger.image_angle = throwingDirection-90;
			dagger.image_xscale = 1;
			dagger.image_yscale = 1;
			knivesThrownStacks = 0;
			knivesToThrow -= 1;
		}
	}
	#endregion
#endregion
#region RightClick
	#region ShadowAssassin
	if (class == Character.ShadowAssassin)
	{
		if (mouse_check_button_released(mb_right) && canRightClick == true && canLeftClick == false)
		{
			canRightClick = false;
			rightClickCooldownLeft = rightClickCooldown;
			canLeftClick = true;
			leftClickCooldownLeft = 0;
			var angleR = 5;
			var amountR = int64(12);
			repeat(amountR)
			{
				var rightDagger = instance_create_depth(x,y,depth+1,obj_daggerProjectile);
				rightDagger.direction = angleR;
				rightDagger.speed = 7;
				rightDagger.image_angle = angleR-90;
				rightDagger.image_xscale = 0.9;
				rightDagger.image_yscale = 1.1;
				angleR += 360/amountR;
			}
		}
	}
	#endregion
	#region Pyromancer
	if (class == Character.Pyromancer)
	{
		if (mouse_check_button_released(mb_right) && canRightClick == true && pyroPortalAmount > 0)
		{
			canRightClick = false;
			rightClickCooldownLeft = rightClickCooldown;
			
			instance_create_depth(mouse_x,mouse_y,-mouse_y,obj_pyroPortal);
			instance_create_depth(mouse_x,mouse_y,-mouse_y,obj_portal_bottom);
			instance_create_depth(mouse_x,mouse_y,-mouse_y,obj_portalAttackRange);
			
			var fbPAngleL = 0;
			var fbPAmountL = 9;
			repeat(fbPAmountL)
			{
				var fireBolt = instance_create_depth(x,y+3,depth+1,obj_firebolt);
				fireBolt.direction = fbPAngleL;
				fireBolt.image_angle = fireBolt.direction+90;
				fireBolt.speed = 4;
				fireBolt.image_xscale = 0.75;
				fireBolt.image_yscale = fireBolt.image_xscale;
				fireBolt.timeToDestroy = 18;
				fbPAngleL += 360/fbPAmountL;
			}
			if (instance_exists(obj_pyroPortal))
			{
				with (obj_pyroPortal)
				{
					var fbPAngleL = 0;
					var fbPAmountL = 9;
					repeat(fbPAmountL)
					{
						var fireBolt = instance_create_depth(x,y+3,depth+1,obj_firebolt);
						fireBolt.direction = fbPAngleL;
						fireBolt.image_angle = fireBolt.direction+90;
						fireBolt.speed = 4;
						fireBolt.image_xscale = 0.75;
						fireBolt.image_yscale = fireBolt.image_xscale;
						fireBolt.timeToDestroy = 18;
						fbPAngleL += 360/fbPAmountL;
					}
				}
			}
		}	
	}
	#endregion
	#region Bloodknight
	if (class == Character.BloodKnight)
	{
		if (mouse_check_button_released(mb_right) && canRightClick == true)
		{
			canRightClick = false;
			rightClickCooldownLeft = rightClickCooldown;
			
			rightClickMode++;
			if (rightClickMode > 3){rightClickMode = 1;}
		}
	}
	#endregion
#region Items
#endregion
#endregion
#region Ult
	#region ShadowAssassin
	if (class == Character.ShadowAssassin)
	{
		if (keyboard_check(ord("E")) && canUlt == true )
		{
			canUlt = false;
			ultCooldownLeft = ultCooldown;
			canRightClick = true;
			rightClickCooldownLeft = 0;
			canLeftClick = true;
			leftClickCooldownLeft = 0;
			var amountU = int64(24);
			var angelU = 20;
			repeat(amountU)
			{
				var ultDagger = instance_create_depth(x,y,depth+1,obj_daggerProjectile);
				ultDagger.direction = angelU;
				ultDagger.speed = 7;
				ultDagger.image_angle = angelU-90;
				ultDagger.image_xscale = 0.9;
				ultDagger.image_yscale = 1.1;
				angelU += 360/amountU;
			}
		}
	}
	#endregion
	#region Pyromancer
	if (class == Character.Pyromancer)
	{
		if (keyboard_check(ord("E")) && canUlt == true)
		{
			canUlt = false;
			ultCooldownLeft = ultCooldown;	
			
			var fireBolt = instance_create_depth(x,y+3,depth+1,obj_firebolt);
			fireBolt.direction = point_direction(x,y,mouse_x,mouse_y);
			fireBolt.image_angle = fireBolt.direction+90;
			fireBolt.speed = 5;
			fireBolt.image_xscale = 1;
			fireBolt.image_yscale = fireBolt.image_xscale;
			fireBolt.grow = true;
			fireBolt.destroy = false;
			
			var fbPAngleL = 0;
			var fbPAmountL = 9;
			repeat(fbPAmountL)
			{
				var fireBolt = instance_create_depth(x,y+3,depth+1,obj_firebolt);
				fireBolt.direction = fbPAngleL;
				fireBolt.image_angle = fireBolt.direction+90;
				fireBolt.speed = 4;
				fireBolt.image_xscale = 0.75;
				fireBolt.image_yscale = fireBolt.image_xscale;
				fireBolt.timeToDestroy = 18;
				fbPAngleL += 360/fbPAmountL;
			}
				
			if (instance_exists(obj_pyroPortal))
			{
				with (obj_pyroPortal)
				{
					var fireBolt = instance_create_depth(x,y+3,depth+1,obj_firebolt);
					fireBolt.direction = point_direction(x,y,mouse_x,mouse_y);
					fireBolt.image_angle = fireBolt.direction+90;
					fireBolt.speed = 5;
					fireBolt.image_xscale = 1;
					fireBolt.image_yscale = fireBolt.image_xscale;
					fireBolt.grow = true;
					fireBolt.destroy = false;
				
					var fbPAngleL = 0;
					var fbPAmountL = 9;
					repeat(fbPAmountL)
					{
						var fireBolt = instance_create_depth(x,y+3,depth+1,obj_firebolt);
						fireBolt.direction = fbPAngleL;
						fireBolt.image_angle = fireBolt.direction+90;
						fireBolt.speed = 4;
						fireBolt.image_xscale = 0.75;
						fireBolt.image_yscale = fireBolt.image_xscale;
						fireBolt.timeToDestroy = 18;
						fbPAngleL += 360/fbPAmountL;
					}
				}
			}
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
			dashStopLeft = dashStop;
			global.iFrame = true;
			speed = dashSpeed;
			direction = point_direction(x,y,mouse_x,mouse_y);
		
			canLeftClick = true;
			leftClickCooldownLeft = 0;
			var amountD = int64(14);
			var angelD = 10;
			repeat(amountD)
			{
				var dashDagger = instance_create_depth(x,y,depth+1,obj_daggerProjectile);
				dashDagger.direction = angelD;
				dashDagger.speed = 5;
				dashDagger.image_angle = angelD-90;
				dashDagger.image_xscale = 0.9;
				dashDagger.image_yscale = 1.1;
				angelD += 360/amountD;
			}
		}
	}
#endregion
	#region Pyromancer
	if (class == Character.Pyromancer)
	{
		if (keyboard_check(vk_space) && canDash == true)
		{
			canDash = false;
			dashCooldownLeft = dashCooldown;
			dashStopLeft = dashStop;
			global.iFrame = true;
			speed = dashSpeed;
			direction = point_direction(x,y,mouse_x,mouse_y);
			
			with (obj_pyroAttackRange)
			{
				dealDamage = true;
			}
			var fbPAngleL = 0;
			var fbPAmountL = 9;
			repeat(fbPAmountL)
			{
				var fireBolt = instance_create_depth(x,y+3,depth+1,obj_firebolt);
				fireBolt.direction = fbPAngleL;
				fireBolt.image_angle = fireBolt.direction+90;
				fireBolt.speed = 4;
				fireBolt.image_xscale = 0.75;
				fireBolt.image_yscale = fireBolt.image_xscale;
				fireBolt.timeToDestroy = 18;
				fbPAngleL += 360/fbPAmountL;
			}
			if (instance_exists(obj_pyroPortal))
			{
				with (obj_pyroPortal)
				{
					var fbPAngleL = 0;
					var fbPAmountL = 9;
					repeat(fbPAmountL)
					{
						var fireBolt = instance_create_depth(x,y+3,depth+1,obj_firebolt);
						fireBolt.direction = fbPAngleL;
						fireBolt.image_angle = fireBolt.direction+90;
						fireBolt.speed = 4;
						fireBolt.image_xscale = 0.75;
						fireBolt.image_yscale = fireBolt.image_xscale;
						fireBolt.timeToDestroy = 18;
						fbPAngleL += 360/fbPAmountL;
					}
				}
			}
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
			dashStopLeft = dashStop;
			global.iFrame = true;
			speed = dashSpeed;
			direction = point_direction(x,y,mouse_x,mouse_y);
			
			var batCircleShotAngle = 0;
			var batCricleShotAmountL = 12;
			repeat(batCricleShotAmountL)
			{
				var batShot = instance_create_depth(x,y+3,depth+1,obj_batProjectile);
				batShot.direction = batCircleShotAngle;
				batShot.speed = 6;
				batShot.sprite_index = spr_batprojectile_baby;
				batShot.destroyTime = (0.5)*30;
				batCircleShotAngle += 360/batCricleShotAmountL;
				batShot.follow = false;
			}
		}
	}
	#endregion
	#region Items
	
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
	speed = 0; 
	direction = 0;
	global.iFrame = false;
}
if (ultCooldownLeft > 0){ultCooldownLeft--;}
if (ultCooldownLeft <= 0){canUlt = true;}
#endregion