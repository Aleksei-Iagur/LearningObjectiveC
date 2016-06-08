//
//  Creature.h
//  Homework5
//
//  Created by MAC  on 08.06.16.
//  Copyright © 2016 Lexo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CreatureProtocol.h"

@interface Creature : NSObject <CreatureProtocol>

@property (nonatomic, readwrite, retain) NSString* name;
@property int age;

@end
