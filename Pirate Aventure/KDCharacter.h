//
//  KDCharacter.h
//  Pirate Aventure
//
//  Created by Arturo Dodd Vaudrecourt on 5/16/14.
//  Copyright (c) 2014 Dodd.mx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KDArmor.h"
#import "KDWeapon.h"

@interface KDCharacter : NSObject

@property (strong, nonatomic) KDArmor *armor;
@property (strong, nonatomic) KDWeapon *weapon;
@property (nonatomic) int damage;
@property (nonatomic) int health;



@end
