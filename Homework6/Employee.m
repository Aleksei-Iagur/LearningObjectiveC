//
//  Employee.m
//  Homework6
//
//  Created by MAC  on 12.06.16.
//  Copyright © 2016 Lexo. All rights reserved.
//

#import "Employee.h"

@implementation Employee

-(void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:_name forKey:@"name"];
    [aCoder encodeObject:_surname forKey:@"surname"];
    [aCoder encodeInteger:_salary forKey:@"salary"];
}

-(id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self) {
        _name = [aDecoder decodeObjectForKey:@"name"];
        _surname = [aDecoder decodeObjectForKey:@"surname"];
        _salary = (unsigned)[aDecoder decodeIntegerForKey:@"salary"];
    }
    return self;
}
@end
