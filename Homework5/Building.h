//
//  Building.h
//  Homework5
//
//  Created by MAC  on 08.06.16.
//  Copyright © 2016 Lexo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CreatureProtocol.h"

@interface Building : NSObject <CreatureProtocol>

- (id) initWithName:(NSString*)name andCreationDate:(int)creationDate;

@property NSString* name;
@property int age;

@end
