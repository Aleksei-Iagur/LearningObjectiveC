//
//  main.m
//  Homework5
//
//  Created by MAC  on 08.06.16.
//  Copyright © 2016 Lexo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Creature.h"
#import "CreatureProtocol.h"
#import "Dog.h"
#import "Man.h"
#import "Woman.h"
#import "Building.h"

typedef enum {
    DogClass,
    ManClass,
    WomanClass,
    numberOfClasses
} Classes;

int main(int argc, const char * argv[]) {
    Creature* getRandomCreature();
    @autoreleasepool {
        id <CreatureProtocol> creature = getRandomCreature();
        NSLog(@"Random creature: %@", [creature creatureInfo]);
        
        Building* building = [[Building new] initWithName:@"Living Shangri-La" andCreationDate:2008];
        NSLog(@"Building: %@", [building creatureInfo]);
    }
    return 0;
}

id<CreatureProtocol> getRandomCreature() {
    int selectedClass = arc4random() % numberOfClasses;
    
    switch (selectedClass) {
        case DogClass:
            return [[Dog new] initWithAge:5 name:@"Pluto"];
        case ManClass:
            return [[Man new] initWithAge:69 name:@"Donald Trump"];
        case WomanClass:
            return [[Woman new] initWithAge:68 name:@"Hillary Clinton"];
        default:
            return nil;
    }
}