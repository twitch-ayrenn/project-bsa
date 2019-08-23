/// @description Insert description here
draw_text_transformed_color(1150,100,"Name:",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_color(1130,140,"Contract Info:",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_color(1130,770,"Rewards:",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_color(1300,790,"",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
if(bossShowInfoFor == Bosses.The_Fat_Zombie)
{
	//name
	draw_text_transformed_color(1250,100,"The Fat Zombie",0.4,0.4,0,c_lime,c_lime,c_green,c_green,1);
	//Description
	//draw_text_transformed_color(11,175,"gggggggggggggggggggggggggggggggggg",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,175,"The Fat Zombie will be your first",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,200,"target, he has been killing",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,225,"visitors of the graveyard and pose",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,250,"a large threat as he eats them and",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,275,"becomes stronger over time.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,325,"Dead Army Position:",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,365,"The Fat Zombie is servant of the",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,390,"Death General Zarodil. A servant",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,415,"Zarodil is not pleased with but",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,440,"an important step closer to the",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,465,"Death General.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,490,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,525,"Notes:",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,565,"The Fat Zombie has layers of fat",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,590,"increasing his health tremendously.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,615,"The poison killed one of my finest",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,640,"men, so dont stand in it.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	//reward money
	if (global.hasSlainTheGraveKeeper == false)
	{
		draw_text_transformed_color(1300,770,global.totalRewardZombie,0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
	}
	if (global.hasSlainTheGraveKeeper == true)
	{
		draw_text_transformed_color(1300,770,global.totalRewardZombie+900,0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
	}
}
if(bossShowInfoFor == Bosses.The_Wisp_Mother && global.hasSlainFatZombiePhase2)
{
	//name
	draw_text_transformed_color(1250,100,"The Wisp Mother",0.4,0.4,0,c_aqua,c_aqua,c_aqua,c_aqua,1);
	//Description
	//name
	//draw_text_transformed_color(11,175,"gggggggggggggggggggggggggggggggggg",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,175,"Some of the dead have been returning",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,200,"from their graves. They have been",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,225,"resurected by the The Wisp Mother.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,250,"We need to stop her!",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,275,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,325,"Dead Army Position:",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,365,"The Wisp Mother works for the Death",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,390,"King Zarok as a summoner along with",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,415,"the Soul Wisp from the court of souls.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,440,"The Dead Army grows everyday that ",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,465,"the Wisp Mother is alive. We need",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,490,"to stop her!",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,525,"Notes:",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,565,"Dont get outnumbered by killing her",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,590,"minions. Some of her servants heal",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,615,"her making her near imortal so",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,640,"target them.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	//reward
	draw_text_transformed_color(1300,770,global.totalRewardWispMother,0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
}
if(bossShowInfoFor == Bosses.The_Blood_Prince && global.hasSlainTheWispMother)
{
	//name
	draw_text_transformed_color(1250,100,"The Blood Prince",0.4,0.4,0,c_red,c_red,c_red,c_red,1);
	//Description
	//draw_text_transformed_color(11,175,"gggggggggggggggggggggggggggggggggg",0.25,0.25,0,c_black,c_black,c_black,c_black,1);	
	draw_text_transformed_color(1130,175,"The Blood Pirnce has been very blood",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,200,"thirsty for a while. We must cleanse",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,225,"the graveyard from the vampire",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,250,"before it can be considerd safe to",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,275,"visit the graveyard.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,325,"Dead Army Position:",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,365,"The Vampire is the only of his",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,390,"kind in the dead army. Most",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,415,"vampires are a part of the Blood",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,440,"Moon Clan but youngest of his",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,465,"brothers the blood prince was not",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,490,"happy with his position in the clan.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,525,"Notes:",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,565,"Vampires regen alot of health from",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,590,"their attacks so avoid getting hit by",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,615,"them. The prince also vields the ",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,640,"ability to teleport.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	
	//reward
	draw_text_transformed_color(1300,770,global.totalRewardBloodPrince,0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
}
if(bossShowInfoFor == Bosses.The_Mad_Witches && global.hasSlainTheWispMother)
{
	//name
	draw_text_transformed_color(1250,100,"The Mad Witches",0.4,0.4,0,c_lime,c_yellow,global.orange,c_lime,1);
	//Description
	//draw_text_transformed_color(11,175,"gggggggggggggggggggggggggggggggggg",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,175,"The three Mad Witches Annie, Scarlet",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,200,"and Elise absorb the faith of the",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,225,"priests of the graveyard.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,250,"They corrupt the graveyard with",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,275,"their burning rain and must die!",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,325,"Dead Army Position:",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,365,"The Witches Magic curses and ",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,390,"spells where proved very usefull",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,415,"in war. Three witches could take",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,440,"down thousands of enemies for the",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,465,"dead army.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,525,"Notes:",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,565,"Slayer you will need to out sustain",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,590,"the toxic rain. The witches heal each",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,615,"other, but not evenly though.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,640,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	
	//reward
	draw_text_transformed_color(1300,770,global.totalRewardWitches,0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
}
if(bossShowInfoFor == Bosses.The_GraveKeeper && global.hasSlainTheBloodPrince || bossShowInfoFor == Bosses.The_GraveKeeper && global.hasSlainTheMadWitches)
{
	//name
	draw_text_transformed_color(1250,108,"The Last Gravekeeper",0.3,0.3,0,c_dkgray,c_dkgray,c_dkgray,c_dkgray,1);
	//Description
	//draw_text_transformed_color(11,175,"gggggggggggggggggggggggggggggggggg",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,175,"The Gravekeepers are those who burry",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,200,"the dead and protect the graveyard.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,225,"But their all dead or corrupted like",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,250,"this one. End his suffering!",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,275,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,325,"Dead Army Position:",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,365,"The Death Queen corrupted one",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,390,"Gravekeeper. The keeper grew stronger",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,415,"than all his brothers and with his",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,440,"new found powers slaughtered all",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,465,"of the other gravekeeper.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,525,"Notes:",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,565,"The Gravekeepers Scythe of Death",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,590,"hits hard and fast so be ready to",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,615,"run.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,640,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	
	//reward
	draw_text_transformed_color(1300,770,global.totalRewardKeeper,0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
}
if(bossShowInfoFor == Bosses.The_Infernal_Wisp && global.hasSlainTheGraveKeeper == true)
{
	//name
	draw_text_transformed_color(1250,108,"The Infernal Wrath",0.35,0.35,0,global.orange,global.orange,global.orange,global.orange,1);
	//Description
	//draw_text_transformed_color(11,175,"gggggggggggggggggggggggggggggggggg",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,175,"The Order of Flames have summoned",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,200,"a creature of hell, an infernal.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,225,"Kill the cultists and slay the ",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,250,"infernal.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,275,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,325,"Dead Army Position:",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,365,"The Order of Flames is a branch",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,390,"of the Dead Army atempting to",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,415,"summon the enteties of hell ",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,440,"and add them to the dead army.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,465,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,525,"Notes:",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,565,"The infernal splits up in to two",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,590,"after death.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,615,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,640,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	
	//reward
	draw_text_transformed_color(1300,770,global.totalRewardInfernalWisp,0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
}
if(bossShowInfoFor == Bosses.The_Flame_Gate && global.hasSlainTheGraveKeeper == true)
{
	//name
	draw_text_transformed_color(1250,100,"The Flame Gate",0.4,0.4,0,c_orange,c_orange,c_maroon,c_maroon,1);
	//Description
	//draw_text_transformed_color(11,175,"gggggggggggggggggggggggggggggggggg",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,175,"The Gate Of Flame summons demoic",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,200,"flame to the overworld. The Flame",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,225,"Gate was summoned by the leader",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,250,"of the Order Of Flames, Brother",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,275,"of The Great Mage.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,325,"Dead Army Position:",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,365,"The Order Of Flames always need",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,390,"sacrefices to summon the demoic",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,415,"beings and so the Great Cementary",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,440,"is the perfect place for them",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,465,"to get these sacrefices.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,525,"Notes:",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,565,"The Flame Gate while imobile deals",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,590,"massive damage as well as summons",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,615,"other demoic gates.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,640,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	
	//reward
	draw_text_transformed_color(1300,770,global.totalRewardFlameGate,0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
}
if(bossShowInfoFor == Bosses.The_Soul_Wisp && global.hasSlainTheFlameGate == true || bossShowInfoFor == Bosses.The_Soul_Wisp && global.hasSlainTheInfernalWisp == true)
{
	//name
	draw_text_transformed_color(1250,100,"The Soul Wisp",0.4,0.4,0,c_aqua,c_aqua,c_teal,c_teal,1);
	//Description
	//draw_text_transformed_color(11,175,"gggggggggggggggggggggggggggggggggg",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,175,"The Soul Wisp is a conjurer for",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,200,"the Dead Army adding new souls",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,225,"to it. It was give the name Soul",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,250,"Wisp for when it damaged a foe",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,275,"it damaged the soul of the foe.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,325,"Dead Army Position:",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,365,"Second of its Kind The Soul Wisp",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,390,"much stronger than the Wisp",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,415,"Mother can summon far more minions",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,440,"for the dead army and its power",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,465,"given to it by the King Himself.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,525,"Notes:",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,565,"Exepect to be outnumberd by this",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,590,"summoner. Health might not be for",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,615,"good use as the Soul Wisp deals",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,640,"damage to the soul.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	
	//reward
	draw_text_transformed_color(1300,770,global.totalRewardTheSoulWisp,0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
}
if(bossShowInfoFor == Bosses.The_Soul_Guards && global.hasSlainTheFlameGate == true || bossShowInfoFor == Bosses.The_Soul_Guards && global.hasSlainTheInfernalWisp == true)
{
	//name
	draw_text_transformed_color(1250,100,"The Soul Guard",0.4,0.4,0,c_teal,c_teal,c_blue,c_blue,1);
	//Description
	//draw_text_transformed_color(11,175,"gggggggggggggggggggggggggggggggggg",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,175,"The Angel Guard and the Devil Guard",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,200,"where created by the fair gods, the",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,225,"Holy one and the devil God. While",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,250,"protecting the Cementary against",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,275,"the dead army they where defeated.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,325,"Dead Army Position:",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,365,"The Soul Guards are now apart of",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,390,"the Dead Army and serve Death Queen",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,415,"Zeria as her personal guards.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,440,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,465,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,525,"Notes:",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,565,"The Guard hits hard so dodge his",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,590,"attacks if posible and when he",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,615,"swings his blade, run!!!",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,640,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	
	//reward
	draw_text_transformed_color(1300,770,global.totalRewardTheSoulGuards,0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
}
if(bossShowInfoFor == Bosses.Death_General_Zarodil && global.hasSlainTheSoulGuards == true || bossShowInfoFor == Bosses.Death_General_Zarodil && global.hasSlainTheSoulWisp == true)
{
	//name
	draw_text_transformed_color(1245,105,"Death General Zarodil",0.325,0.325,0,c_black,c_black,c_dkgray,c_dkgray,1);
	//Description
	//draw_text_transformed_color(11,175,"gggggggggggggggggggggggggggggggggg",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,175,"We are close to the king but Death",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,200,"General Zarodil and the rest of",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,225,"the Death Knights protect the king",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,250,"and queen and need to be slain",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,275,"now.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,325,"Dead Army Position:",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,365,"General Zarodil has highest rank of",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,390,"all death knights. He second to the",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,415,"queen is the closest to the Zarok",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,440,"the death king.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,465,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,525,"Notes:",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,565,"One on one combat with Zarodil is",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,590,"lethal but its the only way to",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,615,"defeat him. Dodge his attacks",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,640,"because they hit fast and hard.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	
	//reward
	draw_text_transformed_color(1300,770,global.totalRewardDeathGeneralZarodil,0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
}
if(bossShowInfoFor == Bosses.Death_Queen_Zeria && global.hasSlainTheSoulGuards == true || bossShowInfoFor == Bosses.Death_Queen_Zeria && global.hasSlainTheSoulWisp == true)
{
	//name
	draw_text_transformed_color(1245,105,"Death Queen Zeria",0.35,0.35,0,c_teal,c_teal,c_silver,c_silver,1);
	//Description
	//draw_text_transformed_color(11,175,"gggggggggggggggggggggggggggggggggg",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,175,"The Queen needs to die for the",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,200,"queen is the strongest conjurer",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,225,"of the dead army.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,250,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,275,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,325,"Dead Army Position:",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,365,"The Queens is the second most ",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,390,"powerfull being after the death",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,415,"king himself. Zeria was the ruler ",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,440,"of the frozen mountains but she ",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,465,"was slain by her own people.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,525,"Notes:",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,565,"The queen summons Spectral heads",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,590,"wich copy her spells.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,615,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,640,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	
	//reward
	draw_text_transformed_color(1300,770,global.totalRewardDeathQueenZeria,0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
}
if(bossShowInfoFor == Bosses.Death_King_Zarok && global.hasSlainTheSoulGuards == true || bossShowInfoFor == Bosses.Death_King_Zarok && global.hasSlainTheSoulWisp == true)
{
	//name
	draw_text_transformed_color(1245,105,"Death King Zarok",0.35,0.35,0,c_red,global.goldColor,c_red,global.goldColor,1);
	//Description
	//draw_text_transformed_color(11,175,"gggggggggggggggggggggggggggggggggg",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,175,"The King himself, the leader of",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,200,"dead army, you have come far,",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,225,"slayer but one last challange",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,250,"awaits you.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,275,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,325,"Dead Army Position:",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,365,"The King and Queen were both once",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,390,"rulers. Both betrayed by their",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,415,"people and now wish to retake what ",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,440,"was once theirs. We hunt them down",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,465,"for the way they want their power",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,490,"back is wrong.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,525,"Notes:",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,565,"Zarok is a summoner and will summon",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,590,"minions that need to be dealt with.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,615,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	
	//reward
	draw_text_transformed_color(1300,770,global.totalRewardDeathKingZarok,0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
}
if(bossShowInfoFor == Bosses.Death_Lords && global.assasinAll && global.warriorAll && global.mageAll && global.shopAll && global.bloodAll)
{
	//name
	draw_text_transformed_color(1245,105,"The Death Lords",0.35,0.35,0,c_red,c_white,c_red,c_white,1);
	//Description
	//draw_text_transformed_color(11,175,"gggggggggggggggggggggggggggggggggg",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,175,"The Death Lords await you!",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,200,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,225,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,250,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,275,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,325,"Dead Army Position:",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,365,"At the top of the chain there",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,390,"lie the Death Lords, the leaders",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,415,"of the Dead Army.",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,440,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,465,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,490,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,525,"Notes:",0.4,0.4,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,565,"One by one they shall fall!",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,590,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(1130,615,"",0.25,0.25,0,c_black,c_black,c_black,c_black,1);
	
	//reward
	draw_text_transformed_color(1300,770,"15000",0.4,0.4,0,c_black,c_black,c_yellow,c_yellow,1);
}