//
//  KDFactory.m
//  Pirate Aventure
//
//  Created by Arturo Dodd Vaudrecourt on 4/27/14.
//  Copyright (c) 2014 Dodd.mx. All rights reserved.
//

#import "KDFactory.h"
#import "KDTile.h"

@implementation KDFactory

-(NSArray *)tiles
{
    KDTile *tile1 = [[KDTile alloc] init];
    tile1.story = @"Story 1: Captain, we need a fearless leader such as you to undertake a voyage. You must stop the evil pirate Boss before he steals any more plunder. Would you like a blunted sword to get started";
    tile1.backgroundImage = [UIImage imageNamed:@"PirateStart.jpg"];
    KDWeapon *bluntedSword = [[KDWeapon alloc]init];
    bluntedSword.name = @"Blunted Sword";
    bluntedSword.damage = 12;
    tile1.weapon = bluntedSword;
    tile1.actionButtonName = @"Take the Sword";
    
    KDTile *tile2 = [[KDTile alloc] init];
    tile2.story = @"Story 2: You have come across an armory. Would you like to upgrade your armor to steel armor?";
    tile2.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    KDArmor *steelArmor = [[KDArmor alloc]init];
    steelArmor.name = @"Steel Armor";
    steelArmor.health = 8;
    tile2.armor = steelArmor;
    tile2.actionButtonName = @"Upgrade Armor";
    
    KDTile *tile3 = [[KDTile alloc] init];
    tile3.story = @"Story 3: A mysterious dock appears on the horizon. Should we stop and ask for directions?";
    tile3.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    tile3.healthEffect = 12;
    tile3.actionButtonName = @"Stop at the Dock";
    
    KDTile *tile4 = [[KDTile alloc] init];
    tile4.story = @"Story 4: You have found a parrot can be used in your armor slot! Parrots are a great defender and are fiercly loyal to their captain.";
    tile4.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    KDArmor *parrotArmor = [[KDArmor alloc] init];
    parrotArmor.name = @"Parrot";
    parrotArmor.health = 20;
    tile4.actionButtonName = @"Adopt Parrot";
    
    KDTile *tile5 = [[KDTile alloc] init];
    tile5.story = @"Story 5: You have stumbled upon a cache of pirate weapons. Would you like to upgrade to a pistol?";
    tile5.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    KDWeapon *pistolWeapon = [[KDWeapon alloc] init];
    pistolWeapon.name = @"Pistol";
    pistolWeapon.damage = 17;
    tile5.actionButtonName = @"Take Pistol";
    
    KDTile *tile6 = [[KDTile alloc] init];
    tile6.story = @"Story 6: You have been captured by pirates and are ordered to walk the plank";
    tile6.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    tile6.healthEffect = -22;
    tile6.actionButtonName = @"Show no fear!";
    
    KDTile *tile7 = [[KDTile alloc] init];
    tile7.story = @"Story 7: You sight a pirate battle off the coast";
    tile7.backgroundImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    tile7.healthEffect = 8;
    tile7.actionButtonName = @"Fight those scum";
    
    KDTile *tile8 = [[KDTile alloc] init];
    tile8.story = @"Story 8: The legend of the deep, the mighty kraken appears";
    tile8.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    tile8.healthEffect = -46;
    tile8.actionButtonName = @"Abandon ship";
    
    KDTile *tile9 = [[KDTile alloc] init];
    tile9.story = @"Story 9: You stumble upon a hidden cave of pirate treasure";
    tile9.backgroundImage = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    tile9.healthEffect = 20;
    tile9.actionButtonName = @"Take Treasure";
    
    KDTile *tile10 = [[KDTile alloc] init];
    tile10.story = @"Story 10: A group of pirates attempts to board your ship";
    tile10.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    tile10.healthEffect = -15;
    tile10.actionButtonName = @"Repel the invaders!!";
    
    KDTile *tile11 = [[KDTile alloc] init];
    tile11.story = @"Story 11: In the deep of the sea many things live and many things can be found. Will the fortune bring help or ruin?";
    tile11.backgroundImage = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    tile11.healthEffect = -7;
    tile11.actionButtonName = @"Swim deeper";
    
    KDTile *tile12 = [[KDTile alloc] init];
    tile12.story = @"Story 12: Your final faceoff with the fearsome pirate boss";
    tile12.backgroundImage = [UIImage imageNamed:@"PirateBoss.jpeg"];
    tile12.healthEffect = -15;
    tile12.actionButtonName = @"Fight!";
    
    NSMutableArray *firstColumn = [[NSMutableArray alloc] init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    NSMutableArray *secondColumn = [[NSMutableArray alloc] init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    
    NSMutableArray *thirdColumn = [[NSMutableArray alloc] init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    
    NSMutableArray *fourthColumn = [[NSMutableArray alloc] init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
    
    NSArray *tiles = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    
    return tiles;
}

-(KDCharacter *)character {
 
    KDCharacter *character = [[KDCharacter alloc]init];
    character.health = 100;
    
    KDArmor *armor = [[KDArmor alloc]init];
    armor.name = @"Cloak";
    armor.health = 5;
    
    character.armor = armor;
    
    KDWeapon *weapon = [[KDWeapon alloc]init];
    weapon.name = @"Fists";
    weapon.damage = 10;
    
    character.weapon = weapon;
    
    return character;
    
}

-(KDBoss *)boss{
    KDBoss *boss = [[KDBoss alloc]init];
    boss.health = 150;
    
    return boss;
}
















@end
