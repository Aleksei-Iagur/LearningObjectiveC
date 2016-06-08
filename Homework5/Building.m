//
//  Building.m
//  Homework5
//
//  Created by MAC  on 08.06.16.
//  Copyright © 2016 Lexo. All rights reserved.
//

#import "Building.h"

@implementation Building

- (id) initWithName:(NSString*)name andCreationDate:(int)creationDate {
    if (self = [super init]) {
        self.name = name;
        self.age = 2016-creationDate;
    }
    
    return self;
}

- (NSString*) creatureInfo {
    return [NSString stringWithFormat:@"Name: %@, age: %i", [self name], [self age]];
}

@end
