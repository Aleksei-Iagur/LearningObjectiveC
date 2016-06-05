//
//  Circle.m
//  Homework 4
//
//  Created by MAC  on 05.06.16.
//  Copyright © 2016 Lexo. All rights reserved.
//

#import "Circle.h"

@implementation Circle

- (float) Square
{
    return M_PI * width * width;
}

- (void) Description
{
    float length = 2 * M_PI * width;
    [super Description:CircleType WithDimensionValue:length];
}

@end
