//
//  main.m
//  Homework 4
//
//  Created by MAC  on 05.06.16.
//  Copyright © 2016 Lexo. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Circle.h"
#import "Rectangle.h"
#import "Ellipse.h"

int main(int argc, const char * argv[]) {
    void InitFigure(Figure* figure);
    Figure* CreateChain(int chainLength);
    BOOL DeleteFigureFromChain(Figure* first, int index);
    Figure* GetFigureFromChain(Figure* first, int index);
    void AddFigureToChain(Figure* figure, Figure* first);
    
    @autoreleasepool {
        Circle* circle = [Circle new];
        InitFigure(circle);
        [circle Description];

        Rectangle* rectangle = [Rectangle new];
        InitFigure(rectangle);
        [rectangle Description];

        Ellipse* ellipse = [Ellipse new];
        InitFigure(ellipse);
        [ellipse Description];
        
        int figureCount = 3;
        Figure* first = CreateChain(figureCount);
        Figure* figure = first;
        
        for (int i = 0; i < figureCount; i++) {
            NSLog(@"Width: %i, Height: %i", figure->width, figure->height);
            figure = figure->next;
        }
        
        NSLog(@"=== Delete ===");
        BOOL figureDeleted = DeleteFigureFromChain(first, 1);
        figureCount = figureDeleted ? figureCount - 1 : figureCount;
        
        figure = first;
        for (int i = 0; i < figureCount; i++) {
            NSLog(@"Width: %i, Height: %i", figure->width, figure->height);
            figure = figure->next;
        }
        
        NSLog(@"=== Add ===");
        Figure* newFigure = [Circle new];
        InitFigure(newFigure);
        
        AddFigureToChain(newFigure, first);
        
        figureCount++;
        figure = first;
        
        for (int i = 0; i < figureCount; i++) {
            NSLog(@"Width: %i, Height: %i", figure->width, figure->height);
            figure = figure->next;
        }
    }
    return 0;
}

void InitFigure(Figure* figure){
    int lowerBound = 5, upperBound = 10;
    
    figure->width = lowerBound + arc4random() % (upperBound + 1 - lowerBound);
    figure->height = lowerBound + arc4random() % (upperBound + 1 - lowerBound);
    
}

Figure* CreateChain(int chainLength){
    Figure* figure = nil;
    Figure* nextFigure = nil;
    
    for (int i = 0; i < chainLength; i++) {
        int lowerBound = 0, upperBound = 2;
        int figureType = lowerBound + arc4random() % (upperBound + 1 - lowerBound);
        
        switch(figureType){
            case CircleType:
                figure = [Circle new];
                break;
            case RectangleType:
                figure = [Rectangle new];
                break;
            case EllipseType:
                figure = [Ellipse new];
                break;
            default:
                [NSException raise:@"Figure type is invalid" format:@"Figure type is invalid"];
        }
        
        InitFigure(figure);
        figure->next = nextFigure;
        nextFigure = figure;
    }
    
    return figure;
}

BOOL DeleteFigureFromChain(Figure* first, int index){
    Figure* GetFigureFromChain(Figure* first, int index);
    
    if (index < 0 | first == nil)
    {
        return NO;
    }
    
    Figure *figure, *next, *previous = nil;
    
    previous = index == 0 ? first : GetFigureFromChain(first, index-1);
    
    if (previous == nil || previous->next == nil)
    {
        return NO;
    }
        
    figure = index == 0 ? first : previous->next;
    
    next = figure->next;
    
    if (previous != nil)
    {
        previous->next = next;
    }
    else
    {
        first = next;
    }
    
    [figure release];
    figure = nil;
    
    return YES;
}

Figure* GetFigureFromChain(Figure* first, int index){
    int currentFigure = 0;
    Figure* figure = first;
    
    while (figure != nil) {
        if (currentFigure == index)
        {
            break;
        }
        
        figure = figure->next;
        currentFigure++;
    }
    
    return figure;
}

void AddFigureToChain(Figure* figure, Figure* first)
{
    if (figure == nil || first == nil)
    {
        return;
    }
    
    Figure* currentFigure = first;
    
    while(currentFigure->next != nil)
    {
        currentFigure = currentFigure->next;
    }
    
    currentFigure->next = figure;
}