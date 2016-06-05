//
//  Rectangle.m
//  Homework 4
//
//  Created by MAC  on 05.06.16.
//  Copyright © 2016 Lexo. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

- (float) Square
{
    return width * height;
}

- (void) Description
{
    float perimeter = 2 * (width + height);
    [super Description:RectangleType WithDimensionValue:perimeter];
}

@end
