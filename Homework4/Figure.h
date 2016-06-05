//
//  Figure.h
//  Homework 4
//
//  Created by MAC  on 05.06.16.
//  Copyright © 2016 Lexo. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum
{
    CircleType,
    RectangleType,
    EllipseType
} FigureType;

@interface Figure : NSObject{

@public
int width;
int height;
Figure* next;
    
}

- (float) Square;
- (void) Description: (FigureType) figureType WithDimensionValue: (float) dimensionValue;

@end
