//
//  Employee.h
//  Homework6
//
//  Created by MAC  on 12.06.16.
//  Copyright © 2016 Lexo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Employee : NSObject <NSCoding>

@property unsigned salary;
@property NSString *name;
@property NSString *surname;

@end