//
//  Dog.m
//  Homework5
//
//  Created by MAC  on 08.06.16.
//  Copyright © 2016 Lexo. All rights reserved.
//

#import "Dog.h"

@implementation Dog

- (id) initWithAge:(int) age name:(NSString*) name {
    if (self = [super init]) {
        self.age = age;
        self.name = name;
    }
    
    return self;
}

+(id) DogWithAge:(int)age name:(NSString*)name {
    return [[Dog new] initWithAge:age name:name];
}

- (NSString*) creatureInfo {
    return [NSString stringWithFormat: @"Name: %@, age: %i", [self name], [self age]];
}

@end
