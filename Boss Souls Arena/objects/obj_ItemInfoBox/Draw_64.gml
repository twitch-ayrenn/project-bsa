/// @description Insert description here
// You can write your code in this editor

//zombie
if (itemShowInfoFor == Items.Z_PoisonJar)
{
	//cost
	draw_text_transformed_color(800,790,string(global.costPoisonJar),0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
	//Description
	draw_text_transformed_color(665,550,"The poison jar deals twice of",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,575,"(Attack Damage) around you to",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,600,"nearby enemies every 5 seconds.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,625,"Size of area increases with max ",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,650,"health by 2% of (Max Health)",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,675,"Lore: The Death lord Zarodil regrets",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,700,"recruiting the Fat Zombie because",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,725,"instead of adding minions to the dead",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,750,"army the zombie eats them.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	//Name
	draw_text_transformed_color(795,450,"Poison Jar",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	//stats
	draw_text_transformed_color(1130,690,"+5% Damage",0.25,0.25,0,c_red,c_red,c_red,c_red,1);
	draw_text_transformed_color(1130,720,"+5% Health",0.25,0.25,0,c_lime,c_lime,c_lime,c_lime,1);
}
if (itemShowInfoFor == Items.Z_BloodMask)
{
	//cost
	draw_text_transformed_color(800,790,string(global.costBloodMask),0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
	//Description
	draw_text_transformed_color(665,550,"Shooting with your(Left Click)shoots",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,575,"a bullet that deals (Attack Damage)",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,600,"from the zombie head.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,625,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,650,"Lore: The Fat Zombie wields the power",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,675,"of zarodil and that is to draw the",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,700,"strength of his foes.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,725,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	//Name
	draw_text_transformed_color(795,450,"Zombie Head",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	//stats
	draw_text_transformed_color(1130,690,"+15% Damage",0.25,0.25,0,c_red,c_red,c_red,c_red,1);
}
if (itemShowInfoFor == Items.Z_BloodJar)
{
	//cost
	draw_text_transformed_color(800,790,string(global.costBloodJar),0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
	//Description
	draw_text_transformed_color(665,550,"The Blood jar gives the user a",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,575,"berserking power wich makes the user",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,600,"stronger when low on health.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,625,"Damage increase is (MaxHp/hp*10)%.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,650,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,675,"Lore: Zombies can never really die.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,700,"They just come back time and time again.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,725,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	//Name
	draw_text_transformed_color(795,450,"Blood Jar",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	//stats
	draw_text_transformed_color(1130,690,"+5% Health",0.25,0.25,0,c_red,c_red,c_red,c_red,1);
}
if (itemShowInfoFor == Items.W_GreenWispBottle)
{
	//cost
	draw_text_transformed_color(800,790,string(global.costGreenWisp),0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
	//Description
	draw_text_transformed_color(665,550,"Regenerate health over time.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,575,"Amount of health is 2% health points",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,600,"every 1 second.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,625,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,650,"Lore: The green wisps serve the",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,675,"mother as healers. In life before ",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,700,"death and resurection they were ",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,725,"often priests and monks.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	//Name
	draw_text_transformed_color(795,450,"The Green Wisp",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	//stats
	draw_text_transformed_color(1130,690,"-20% Ability Cost",0.25,0.25,0,c_green,c_green,c_green,c_green,1);
}
if (itemShowInfoFor == Items.W_PurpleWispBottle)
{
	//cost
	draw_text_transformed_color(800,790,string(global.costPurpleWisp),0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
	//Description
	//draw_text_transformed_color(665,550,"Basic Attacks(left click) shoots projectiles in a cirkle from your wisp. Amount of projectiles is(maxHp / 25). Damage from projectiles is (maxHp / 150)",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,550,"Basic Attacks(left click) shoots",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,575,"projectiles in a cirkle from your wisp.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,600,"Amount of projectiles is(maxHp)/25.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,625,"Damage from projectiles is(maxHp)/200.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,650,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,675,"Lore: The Wisp Mother resurects the",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,700,"dead and they become wisps that serve",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,725,"in the dead army.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	//Name
	draw_text_transformed_color(795,450,"The Purple Wisp",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	//stats
	draw_text_transformed_color(1130,690,"+20% Health",0.25,0.25,0,c_lime,c_lime,c_lime,c_lime,1);
}
if (itemShowInfoFor == Items.W_RedWispBottle)
{
	//cost
	draw_text_transformed_color(800,790,string(global.costRedWisp),0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
	//Description
	draw_text_transformed_color(665,550,"Increases the range of all your",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,580,"abilities and projectiles with 30%.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,625,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,650,"Lore: In their past life the red wisps",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,675,"were often warriors, fighters, soldiers",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,700,"that died in war.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,725,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	//Name
	draw_text_transformed_color(795,450,"The Red Wisp",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	//stats
	draw_text_transformed_color(1130,690,"+20% Damage",0.25,0.25,0,c_red,c_red,c_red,c_red,1);
}
if (itemShowInfoFor == Items.V_VampireCrown)
{
	//cost
	draw_text_transformed_color(800,790,string(global.costVampireCrown),0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
	//Description
	draw_text_transformed_color(665,550,"You gain 20% more health orbs from",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,575,"all sources.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,600,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,625,"Lore: The Blood Prince slayed his",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,650,"father to prove his power to the Death",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,675,"Lords. Now he serves as an general for",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,700,"the dead army. The Blood Crown has been",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,725,"pased down for generations.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	//Name
	draw_text_transformed_color(795,450,"The Blood Crown",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	//stats
	draw_text_transformed_color(1130,690,"+20% Health",0.25,0.25,0,c_lime,c_lime,c_lime,c_lime,1);
}
if (itemShowInfoFor == Items.V_VampireCloak)
{
	//cost
	draw_text_transformed_color(800,790,string(global.costVampireCloak),0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
	//Description
	draw_text_transformed_color(660,550,"Shoots 5 bats on Dash(space) or",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,575,"teleport and increases amount of",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,600,"projectiles shot from area of effect",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,625,"abilites by 20%. Heal by 100% from",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,650,"bat damage. Amount Increased by ",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,675,"summoning boosts.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,700,"Lore: A cloak that summons bats",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,725,"is a common thing for a vampire to",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,750,"wield but this one has magical powers.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	//Name
	draw_text_transformed_color(795,450,"Cloak of Bats",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	//stats
	draw_text_transformed_color(1130,690,"+15% Damage",0.25,0.25,0,c_red,c_red,c_red,c_red,1);
}
if (itemShowInfoFor == Items.V_VampireBloodNecklace)
{
	//cost
	draw_text_transformed_color(800,790,string(global.costVampireBloodNecklace),0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
	//Description
	draw_text_transformed_color(660,550,"Picking up health orbs shoots damage",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,575,"orbs. They deal(Attack Damage) but",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,600,"you heal for 3x that amount of",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,625,"damage if you hit an enemy.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,650,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,675,"Lord: The necklace belonged to the",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,700,"the red queen. It was passed along",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,725,"to the prince when the queen died.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	//Name
	draw_text_transformed_color(795,450,"The Blood Necklace",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	//stats
	draw_text_transformed_color(1130,690,"+30% Damage",0.25,0.25,0,c_red,c_red,c_red,c_red,1);
}
//witch
if (itemShowInfoFor == Items.W_AnniesDeathCap)
{
	//cost
	draw_text_transformed_color(800,790,string(global.costAnniesDeathCap),0.4,0.4,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
	//Description
	draw_text_transformed_color(665,550,"Annies death cap spawns a deadly",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,575,"rain that deals (Attack Damage)",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,600,"to all enemies every 4 seconds.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,625,"The Rain also heals you for 4% of",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,650,"your Max Health.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,675,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,700,"Lore: Annie the green kills her pray",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,725,"by absorbing their life force. The",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,750,"Witches are not a part of the red army.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	//Name
	draw_text_transformed_color(795,450,"Annies Death Cap",0.4,0.4,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
	//stats
	draw_text_transformed_color(1130,690,"+10% Damage",0.25,0.25,0,c_red,c_red,c_red,c_red,1);
	draw_text_transformed_color(1130,720,"+10% Health",0.25,0.25,0,c_lime,c_lime,c_lime,c_lime,1);
}
if (itemShowInfoFor == Items.W_EliseHead)
{
	//cost
	draw_text_transformed_color(800,790,string(global.costEliseHead),0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
	//Description
	draw_text_transformed_color(665,550,"Elise shoots projectiles in a twister",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,575,"after you use your (Right Click)",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,600,"ability.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,625,"Amount is six times (Attack Damage) ",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,650,"and damage is a third of(Attack Damage).",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,675,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,700,"Lore: Elise gained her imortality from",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,725,"a demonic god summoned by the order of ",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,750,"flames.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	//Name
	draw_text_transformed_color(795,450,"Elise Head",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	//stats
	draw_text_transformed_color(1130,690,"+25% Damage",0.25,0.25,0,c_red,c_red,c_red,c_red,1);
}
if (itemShowInfoFor == Items.W_ScarletsPendant)
{
	//cost
	draw_text_transformed_color(800,790,string(global.costScarletsPendant),0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
	//Description
	draw_text_transformed_color(665,550,"The pendant summons projectiles in a",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,575,"cirkle from enemies that die. ",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,600,"Projectile amount is (MaxHp/20) and",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,625,"projectile damage is (MaxHp/150).",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,650,"This item also increases the amount",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,675,"of projectiles from area of effect",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,700,"abilites by 10%.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,725,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	//Name
	draw_text_transformed_color(795,450,"Scarlets Pendant",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	//stats
	draw_text_transformed_color(1130,690,"+30% Health",0.25,0.25,0,c_lime,c_lime,c_lime,c_lime,1);
}
//keeper
if (itemShowInfoFor == Items.K_KepperCloak)
{
	//cost
	draw_text_transformed_color(800,790,string(global.costCloakOfTheKeeper),0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
	//Description
	draw_text_transformed_color(665,550,"Lore: This Cloak worn by the the ",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,575,"Gravekeeper drains health from",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,600,"its wearer and gives strength.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,625,"The Gravekeeper is a general of ",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,650,"the dead army. He was recruited ",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,675,"by the Death King Zarok Himself.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,700,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,725,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	//Name
	draw_text_transformed_color(795,450,"Cloak Of Pain",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	//stats
	draw_text_transformed_color(1130,690,"+60% Damage",0.25,0.25,0,c_red,c_red,c_red,c_red,1);
	draw_text_transformed_color(1130,720,"-30% Health",0.25,0.25,0,c_lime,c_lime,c_lime,c_lime,1);
}
if (itemShowInfoFor == Items.K_KeeperScythe)
{
	//cost
	draw_text_transformed_color(800,790,string(global.costScytheOfDeath),0.4,0.4,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
	//Description
	draw_text_transformed_color(665,550,"After you use (Right Click) the",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,575,"scyhte spins around you dealing",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,600,"(Attack Damage) damage to enemies ",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,625,"hit by the scyhte blade.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,650,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,675,"Lore: The reason the scythe is so",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,700,"powerfull is because its damages",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,725,"the soul of the thing it strikes.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	//Name
	draw_text_transformed_color(795,450,"Scythe Of Death",0.4,0.4,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
	//stats
	draw_text_transformed_color(1130,690,"+20% Damage",0.25,0.25,0,c_red,c_red,c_red,c_red,1);
}
if (itemShowInfoFor == Items.K_KeeperBatCarrier)
{
	//cost
	draw_text_transformed_color(800,790,string(global.costBatCarrier),0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
	//Description
	draw_text_transformed_color(665,550,"After you use (Right Click) the bat",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,575,"carrier picks you up and increases",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,600,"your movement speed for 1.5 seconds.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,625,"This effect can stack 3 times.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,650,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,675,"Lore: The bat that carried the keeper",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,700,"himself.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,725,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	//Name
	draw_text_transformed_color(795,450,"Bat Carrier",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	//stats
	draw_text_transformed_color(1130,690,"+10% Damage",0.25,0.25,0,c_red,c_red,c_red,c_red,1);
	draw_text_transformed_color(1130,720,"+15% Health",0.25,0.25,0,c_lime,c_lime,c_lime,c_lime,1);
}
//grave of flames
if (itemShowInfoFor == Items.I_GuardianWisp)
{
	//cost
	draw_text_transformed_color(800,790,string(global.costGuardianWisp),0.4,0.4,0,global.goldColor,global.goldColor,c_yellow,c_yellow,1);
	//Description
	draw_text_transformed_color(665,550,"If you die you resurrect into a",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,575,"flame wisp with (3000 + MaxHp/2)Hp",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,600,"and (30 + Attack damage/2) that",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,625,"shots firebolts and can shoot 12",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,650,"firebolts in a cirkle with (Right-Click).",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,675,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,700,"Lore: The Grave of Flames is a place",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,725,"where hell can reach the overworld.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	//Name
	draw_text_transformed_color(795,450,"Guardian Wisp",0.4,0.4,0,global.goldColor,global.goldColor,c_yellow,c_yellow,1);
	//stats
	draw_text_transformed_color(1130,690,"-10% Damage",0.25,0.25,0,c_red,c_red,c_red,c_red,1);
	draw_text_transformed_color(1130,720,"-10% Health",0.25,0.25,0,c_lime,c_lime,c_lime,c_lime,1);
}
if (itemShowInfoFor == Items.I_FlameConsumer)
{
	//cost
	draw_text_transformed_color(800,790,string(global.costFlameConsumerWisp),0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
	//Description
	draw_text_transformed_color(665,550,"Increases (Attack Damage) by 2%",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,575,"every enemy that die and 10% for",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,600,"boss phase change.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,625,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,650,"Lore: Cultists wanted a place to",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,675,"conjure their demoic creatures.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,700,"They wanted to use the flame beasts",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,725,"as weapons against the covenant.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	//Name
	draw_text_transformed_color(795,450,"Flame Consumer Wisp",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	//stats
	draw_text_transformed_color(1130,690,"-10% Damage",0.25,0.25,0,c_red,c_red,c_red,c_red,1);
}
if (itemShowInfoFor == Items.I_SpeedAsh)
{
	//cost
	draw_text_transformed_color(800,790,string(global.costSpeedAsh),0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
	//Description
	draw_text_transformed_color(665,550,"Killing an enemy gives you 1 speed for",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,575,"3 seconds and boss phase changes",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,600,"give you 12 seconds of speed.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,625,"This item also increases your teleport",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,650,"and dash(space) length by 20%.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,675,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,700,"Lore: There was one cultist, the leader",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,725,"of the flame order, brother of the Great",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,750,"Mage but he wanted revenge for their father.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	//Name
	draw_text_transformed_color(795,450,"Speed Ash",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	//stats
	draw_text_transformed_color(1130,690,"+10% Damage",0.25,0.25,0,c_red,c_red,c_red,c_red,1);
	draw_text_transformed_color(1130,720,"+25% Health",0.25,0.25,0,c_lime,c_lime,c_lime,c_lime,1);
}
if (itemShowInfoFor == Items.FG_Pheonix)
{
	//cost
	draw_text_transformed_color(800,790,string(global.costPheonix),0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
	//Description
	draw_text_transformed_color(665,550,"Basic attacks(Left Click) shoots a",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,575,"firebolt that travels twoards you",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,600,"and deals (Attack Damage) to",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,625,"enemies or if it hits you it heals",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,650,"you for (Attack Damage)Hp.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,675,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,700,"Lore: The Order of Flame tries to take",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,725,"over the world and bring hell to it.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	//Name
	draw_text_transformed_color(795,450,"Book of Flames",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	//stats
	draw_text_transformed_color(1130,690,"+35% Damage",0.25,0.25,0,c_red,c_red,c_red,c_red,1);
}
if (itemShowInfoFor == Items.FG_Portals)
{
	//cost
	draw_text_transformed_color(800,790,string(global.costPortal),0.4,0.4,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
	//Description
	draw_text_transformed_color(665,550,"(Right Click) to spawn a portal at",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,575,"your location that shoots at your",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,600,"mouse location that deals",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,625,"(Attack Damage). Amount of",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,650,"portals is 1 + (MaxHp/200) and lasts",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,675,"for (Attack Damage*4) seconds.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,700,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,725,"Lore: The Flame Gate was the orders first",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,750,"successful attempt to conjure flames from hell",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	//Name
	draw_text_transformed_color(795,450,"Book of Portals",0.4,0.4,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
	//stats
	draw_text_transformed_color(1135,685,"+10% Damage",0.2,0.2,0,c_red,c_red,c_red,c_red,1);
	draw_text_transformed_color(1135,705,"+20% Health",0.2,0.2,0,c_lime,c_lime,c_lime,c_lime,1);
	draw_text_transformed_color(1135,725,"+50% Summonings",0.2,0.2,0,global.orange,global.orange,global.orange,global.orange,1);
}
if (itemShowInfoFor == Items.FG_Sacrefices)
{
	//cost
	draw_text_transformed_color(800,790,string(global.costSacrefices),0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
	//Description
	draw_text_transformed_color(665,550,"The Book of Sacrefices offers your",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,575,"damage and health for Speed.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,600,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,625,"Lore: The Great Mage convinced his",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,650,"brother to sacrefice their father",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,675,"for power but the only one who got",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,700,"power was The Great Mage. His brother ",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,725,"was left powerless and mad with revenge",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,750,"for their father. ",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	//Name
	draw_text_transformed_color(795,450,"Book of Sacrefices",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	//stats
	draw_text_transformed_color(1130,690,"-5% Damage",0.25,0.25,0,c_red,c_red,c_red,c_red,1);
	draw_text_transformed_color(1130,720,"-5% Health",0.25,0.25,0,c_lime,c_lime,c_lime,c_lime,1);
}
if (itemShowInfoFor == Items.SW_LifeWisp)
{
	//cost
	draw_text_transformed_color(800,790,string(global.costLifeWisp),0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
	//Description
	draw_text_transformed_color(665,550,"Increases the amount of health orbs",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,575,"gained by 20% and increases max",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,600,"health by 10 Hp for each health orb.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,625,"Max health from this item is 2500.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,650,"Lore: Like the Wisp Mother the Soul",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,675,"Wisp is a powerfull entity of the ",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,700,"death lords. A servant of the king",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,725,"and queen the wisp expands the death",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,750,"army.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	//Name
	draw_text_transformed_color(795,450,"The Life Wisp",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	//stats
	draw_text_transformed_color(1130,690,"-15% Health",0.25,0.25,0,c_lime,c_lime,c_lime,c_lime,1);
}
if (itemShowInfoFor == Items.SW_WispSoul)
{
	//cost
	draw_text_transformed_color(800,790,string(global.costWispSoul),0.4,0.4,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
	//Description
	draw_text_transformed_color(665,550,"Shooting using (Left Click) spawns",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,575,"a small soul wisp that shoots",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,600,"twoards nearest enemy dealing for 25%",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,625,"of (Attack Damage) and lasts for",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,650,"(Attacl Damage) seconds. Amount of",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,675,"wisps is (1 + (AttackDamage/2))",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,700,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,725,"Lore: Each Great Soul is given a powerfull",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,750,"soul from the death lords.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	//Name
	draw_text_transformed_color(795,450,"Wisp Soul",0.4,0.4,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
	//stats
	draw_text_transformed_color(1130,690,"+40% Damage",0.25,0.25,0,c_red,c_red,c_red,c_red,1);
	draw_text_transformed_color(1130,720,"+25% Summonings",0.25,0.25,0,global.orange,global.orange,global.orange,global.orange,1);
}
if (itemShowInfoFor == Items.SW_BookOfHealing)
{
	//cost
	draw_text_transformed_color(800,790,string(global.costBookOfHealing),0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
	//Description
	draw_text_transformed_color(665,550,"Increases all healing recived from ",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,575,"any source by 25%. This includes",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,600,"lifesteal, health orbs and health ",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,625,"regen.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,650,"Lore: The court of Souls is the Death",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,675,"Lords summoning ground. The Death Lords",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,700,"overtook the court of the gods and",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,725,"banished the holy and unholy and claimed",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,750,"it for themselves.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	//Name
	draw_text_transformed_color(795,450,"Book Of Healing",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	//stats
	draw_text_transformed_color(1130,690,"-20% Ability Cost",0.25,0.25,0,c_green,c_green,c_green,c_green,1);
	draw_text_transformed_color(1130,720,"-10% Damage",0.25,0.25,0,c_red,c_red,c_red,c_red,1);
	draw_text_transformed_color(1130,750,"-10% Health",0.25,0.25,0,c_lime,c_lime,c_lime,c_lime,1);
}
if (itemShowInfoFor == Items.SG_AngelsFeather)
{
	//cost
	draw_text_transformed_color(800,790,string(global.costAngelsFeather),0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
	//Description
	draw_text_transformed_color(665,550,"Using (Right Click) ablity teleports",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,575,"you to your mouse cursor. This item",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,600,"also increases range of all abilities",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,625,"and projectiles by 15%.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,650,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,675,"Lore: The Holy God of good was banished",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,700,"from court of gods. The Angel Guard and ",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,725,"Devil Guard where captured and defeated",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,750,"by the Death Lords and Corrupted.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	//Name
	draw_text_transformed_color(795,450,"The Angels Head",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	//stats
	draw_text_transformed_color(1130,690,"+45% Health",0.25,0.25,0,c_lime,c_lime,c_lime,c_lime,1);
}
if (itemShowInfoFor == Items.SG_DevilsFeather)
{
	//cost
	draw_text_transformed_color(800,790,string(global.costDevilsFeather),0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
	//Description
	draw_text_transformed_color(665,550,"Using (Right Click) ability deals",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,575,"(Attack Damage) to nearest enemy",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,600,"and harvests (Max Health/50) health",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,625,"orbs.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,650,"Lore: Even if it may seem so the Devil",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,675,"God only punishes the bad but he does not",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,700,"wish death upon the good unlike the Death.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,725,"Lords. The Death Lords durring their time",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,750,"tried to conquer the world but was shut down.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	//Name
	draw_text_transformed_color(795,450,"The Devils Head",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	//stats
	draw_text_transformed_color(1130,690,"+30% Damage",0.25,0.25,0,c_red,c_red,c_red,c_red,1);
	draw_text_transformed_color(1130,720,"+30% Health",0.25,0.25,0,c_lime,c_lime,c_lime,c_lime,1);
}
if (itemShowInfoFor == Items.SG_SoulSword)
{
	//cost
	draw_text_transformed_color(800,790,string(global.costSoulSword),0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
	//Description
	draw_text_transformed_color(665,550,"Dashing or Teleporting shoots a big ",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,575,"sword projectile that deals ",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,600,"(Attack Damage)*2. This Item also",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,625,"increases dash(space) and teleport length",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,650,"by 25%.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,675,"Lore: The Soul Guards fought once against",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,700,"the Death Lords and along side the fair",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,725,"gods. The Fair gods won durring the death ",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,750,"war but the death lords rise once again.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	//Name
	draw_text_transformed_color(795,450,"The Soul Sword",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	//stats
	draw_text_transformed_color(1130,690,"+45% Damage",0.25,0.25,0,c_red,c_red,c_red,c_red,1);
}
if (itemShowInfoFor == Items.DL_BladeOfPower)
{
	//cost
	draw_text_transformed_color(800,790,string(global.costBladeOfPower),0.4,0.4,0,global.goldColor,global.goldColor,c_yellow,c_yellow,1);
	//Description
	draw_text_transformed_color(665,550,"Blade Of Speed Grants the wielder",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,575,"extra speed and grants 10 one",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,600,"(Attack Damage) per 1 base movement",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,625,"speed. This item also increases",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,650,"your speed by 40%.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,675,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,700,"Lore: The Death General cant be killed",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,725,"and always seeks revenge on those",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,750,"who try to kill him.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	//Name
	draw_text_transformed_color(795,450,"Blade Of Speed",0.4,0.4,0,global.goldColor,global.goldColor,c_yellow,c_yellow,1);
	//stats
	draw_text_transformed_color(1130,690,"50% Damage",0.25,0.25,0,c_red,c_red,c_red,c_red,1);
	draw_text_transformed_color(1130,720,"40% Speed",0.25,0.25,0,c_blue,c_blue,c_blue,c_blue,1);
	draw_text_transformed_color(1130,750,"",0.25,0.25,0,c_lime,c_lime,c_lime,c_lime,1);
}
if (itemShowInfoFor == Items.DL_QueensHead)
{
	//cost
	draw_text_transformed_color(800,790,string(global.costQueensHead),0.4,0.4,0,global.goldColor,global.goldColor,c_yellow,c_yellow,1);
	//Description
	draw_text_transformed_color(665,550,"Zeria's head spawns a Spectral Head",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,575,"that copies your (Left Click) ability",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,600,"and shoots it towards mouse location.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,625,"This effect can only be used once",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,650,"every second.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,675,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,700,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,725,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,750,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	//Name
	draw_text_transformed_color(795,450,"Zeria's Head",0.5,0.5,0,global.goldColor,global.goldColor,c_yellow,c_yellow,1);
	//stats
	draw_text_transformed_color(1130,690,"30% Damage",0.25,0.25,0,c_red,c_red,c_red,c_red,1);
	draw_text_transformed_color(1130,720,"60% Health",0.25,0.25,0,c_lime,c_lime,c_lime,c_lime,1);
	draw_text_transformed_color(1130,750,"",0.25,0.25,0,c_lime,c_lime,c_lime,c_lime,1);
}
if (itemShowInfoFor == Items.DL_KingsHead)
{
	//cost
	draw_text_transformed_color(800,790,string(global.costKingsHead),0.4,0.4,0,global.goldColor,global.goldColor,c_yellow,c_yellow,1);
	//Description
	draw_text_transformed_color(665,550,"Zarok's Head grants a wisp shield.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,575,"Shield health is 5% of max health",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,600,"and 200% of (Attack Damage). The ",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,625,"health is increased by summoning",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(665,650,"boosts. The wisp shoots in a cirkle",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,675,"every 5 seconds. Projectile amount ",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,700,"is 5 + 1% of max health and damage ",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,725,"is 50% of (Attack Damage). This Item",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(660,750,"also increases health orbs by 25%.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	//Name
	draw_text_transformed_color(795,450,"Zarok's Head",0.4,0.4,0,global.goldColor,global.goldColor,c_yellow,c_yellow,1);
	//stats
	draw_text_transformed_color(1130,690,"45% Damage",0.25,0.25,0,c_red,c_red,c_red,c_red,1);
	draw_text_transformed_color(1130,720,"45% Health",0.25,0.25,0,c_lime,c_lime,c_lime,c_lime,1);
	draw_text_transformed_color(1130,750,"25% Summonings",0.25,0.25,0,global.orange,global.orange,global.orange,global.orange,1);
}