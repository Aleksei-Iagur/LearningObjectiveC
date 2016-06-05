//
//  Ellipse.m
//  Homework 4
//
//  Created by MAC  on 05.06.16.
//  Copyright © 2016 Lexo. All rights reserved.
//

#import "Ellipse.h"

@implementation Ellipse

- (float) Square
{
    return M_PI * width * height;
}

- (void) Description
{
    float length = M_PI * (width + height);
    [super Description:EllipseType WithDimensionValue:length];
}

@end
