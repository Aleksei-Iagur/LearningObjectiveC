//
//  Figure.m
//  Homework 4
//
//  Created by MAC  on 05.06.16.
//  Copyright © 2016 Lexo. All rights reserved.
//

#import "Figure.h"

@implementation Figure



- (float) Square {
    
    return -1;
}

- (void) Description: (FigureType) figureType WithDimensionValue: (float) dimensionValue {
    
    NSString* figureTypeName, *dimensionName;
    
    switch (figureType) {
        case CircleType:
            figureTypeName = @"circle";
            dimensionName = @"length";
            break;
        case RectangleType:
            figureTypeName = @"rectangle";
            dimensionName = @"perimeter";
            break;
        case EllipseType:
            figureTypeName = @"ellipse";
            dimensionName = @"length";
            break;
    }
    
    NSLog(@"Square of a %@ = %.2f, %@ = %.2f", figureTypeName, [self Square], dimensionName, dimensionValue);
}

@end
