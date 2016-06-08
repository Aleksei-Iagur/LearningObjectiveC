//
//  Dog.h
//  Homework5
//
//  Created by MAC  on 08.06.16.
//  Copyright © 2016 Lexo. All rights reserved.
//

#import "Creature.h"
#import "CreatureProtocol.h"

@interface Dog : Creature <CreatureProtocol>

- (id) initWithAge:(int) age name:(NSString*) name;

+ (id) DogWithAge:(int) age name:(NSString*) name;

@end
