/// @description Insert description here
// You can write your code in this editor
shake = 0;
image_index = 1;
blowRoofUp = true;
phase = 3;
with(obj_camera){shake_remain += 4;}
var damageText = instance_create_depth(global.player.x+irandom_range(-8,8),global.player.y+irandom_range(-5,5),global.player.depth-10,obj_textMaker);
	damageText.color = c_yellow;
	damageText.text = "New Item!";
if (gameMaster.chosenBoss == Boss.ArenaKing && kingSuprise == true)
{
	with (obj_arenaKing)
	{
		visible = false;
	}
	gameMaster.menu = Menues.Play;
	gameMaster.chosenBoss = Boss.ArenaKing;
	var king = instance_create_depth(global.arenaMiddleX,global.arenaMiddleY-10,depth-1,obj_allBoss);
	with (king)
	{	
		phase6Hp = tier6Hp*0.25;
		phase6Ms = 2;	
		phase6Dmg = 32.5;
		moveType = MovementType.WalkingTowards;
		//attacks and phase
		tier = 6;
		maxPhase = 6;
		//visual
		size = 1;
		idleSprite = spr_boss_arenaKing_idle;
		chaseSprite = spr_boss_arenaKing_chase;
		normalSprite = spr_boss_arenaKing_normal;
		circleSprite = spr_boss_arenaKing_circle;
		beamSprite = spr_boss_arenaKing_beam;
		rapidFireSprite = spr_boss_arenaKing_rapidFire;
		oneShotSprite = spr_boss_arenaKing_oneShot;
		teleportSprite = spr_boss_arenaKing_teleport;
		gooSprite = spr_boss_arenaKing_goo;
		coneSprite = spr_boss_arenaKing_cone;
		//boss Specfic
		var sword = instance_create_depth(x,y,depth,obj_bossMeleeWeapon);
		sword.sprite_index = spr_kingsEdge_spin;
		sword.spinSpeed = 20;
		
		teleportX = choose(-75,75);
		teleportY = choose(-75,75);
		canTeleport = false;
		teleportTime = (3)*10;
		instance_create_depth(x,y,depth,obj_teleportMarker);
		
		kingCloneX = global.arenaMiddleX+175;
		kingCloneY = global.arenaMiddleY;
		
		sprite_index = normalSprite;

		alpha = 1;
		state = BossStates.Fighting;
		phase = 6;
		hp = phase6Hp;
		moveSpeed = phase6Ms;
		global.bossDamage = phase6Dmg;
		
		actualSpeed = moveSpeed;
		normalMoveSpeed = moveSpeed;
		maxHp = hp;
		normalAlpha = alpha;
		image_xscale = size;
		image_yscale = size;
		timeAfterIndicate = (1.25)*30;
		attackCooldown = (3.5)*30;
	}	
}