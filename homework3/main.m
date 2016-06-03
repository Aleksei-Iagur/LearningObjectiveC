//
//  main.m
//  Homework3
//
//  Created by MAC  on 11.03.16.
//  Copyright © 2016 Lexo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Orange.h"

typedef struct
{
    NSString *name;
    unsigned productionYear;
    unsigned horsePower;
} Car;

int main(int argc, const char * argv[]) {

    /*
    Car honda;
    honda.name = @"Honda";
    honda.productionYear = 2012;
    honda.horsePower = 132;
    */
    
    Car honda = {@"Honda", 2012, 132};
    
    Car *hondaPtr = &honda;
    
    for (int i = 0; i < 5; i++) {
        hondaPtr->horsePower++;
    }
    
    NSLog(@"The number of horse powers = %i", honda.horsePower);
    
    Orange *someOrange = [[Orange alloc] init];
    someOrange->color = @"Orange";
    someOrange->taste = @"Sweet";
    someOrange->radius = 95;
    
    NSLog(@"Orange has %@ color and %@ taste", someOrange->color, someOrange->taste);
    
    [someOrange orangeVolume];
    
    return 0;
}

