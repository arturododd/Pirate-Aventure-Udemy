//
//  KDFactory.h
//  Pirate Aventure
//
//  Created by Arturo Dodd Vaudrecourt on 4/27/14.
//  Copyright (c) 2014 Dodd.mx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KDCharacter.h"
#import "KDBoss.h"

@interface KDFactory : NSObject

-(NSArray *)tiles;
-(KDCharacter *)character;
-(KDBoss *)boss;

@end
