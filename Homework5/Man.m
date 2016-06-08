//
//  Man.m
//  Homework5
//
//  Created by MAC  on 08.06.16.
//  Copyright © 2016 Lexo. All rights reserved.
//

#import "Man.h"

@implementation Man

- (id) initWithAge:(int) age name:(NSString*) name {
    if (self = [super init]) {
        self.age = age;
        self.name = name;
    }
    
    return self;
}

+(id) ManWithAge:(int)age name:(NSString*)name {
    return [[Man new] initWithAge:age name:name];
}

- (NSString*) creatureInfo {
    return [NSString stringWithFormat: @"Name: %@, age: %i", [self name], [self age]];
}

@end
