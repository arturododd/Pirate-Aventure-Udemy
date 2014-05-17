//
//  KDTile.h
//  Pirate Aventure
//
//  Created by Arturo Dodd Vaudrecourt on 4/27/14.
//  Copyright (c) 2014 Dodd.mx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KDWeapon.h"
#import "KDArmor.h"

@interface KDTile : NSObject

@property (strong, nonatomic) NSString *story;
@property (strong, nonatomic) UIImage *backgroundImage;
@property (strong, nonatomic) NSString *actionButtonName;
@property (strong, nonatomic) KDWeapon *weapon;
@property (strong, nonatomic) KDArmor *armor;
@property (nonatomic) int healthEffect;

@end
