//
//  main.m
//  Homework6
//
//  Created by MAC  on 12.06.16.
//  Copyright © 2016 Lexo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 2
        NSArray *namesArray = @[@"John", @"Tim", @"Ted", @"Aaron", @"Steven"];
        NSArray *surnamesArray = @[@"Smith", @"Dow", @"Isaacson", @"Pennyworth", @"Jenkins"];
        
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        NSString *name, *surname;
        Employee *employee;
        int salary;
        
        // 3
        for (int i = 0; i < 10; i++) {
            name = namesArray[arc4random() % namesArray.count];
            surname = surnamesArray[arc4random() % namesArray.count];
            salary = 1000 + arc4random() % 1000;
            
            employee = [Employee new];
            employee.name = name;
            employee.surname = surname;
            employee.salary = salary;
            
            [employees addObject:employee];
        }
        
        // 4
        for (Employee *empl in employees)
        {
            NSLog(@"%@ %@'s salary is $%d", [empl name], [empl surname], [empl salary]);
        }
        
        // 5
        NSMutableArray *employeesWithEvenSalary = [NSMutableArray new];
        
        for (Employee *empl in employees)
        {
            if ([empl salary] % 2 == 0) {
                [employeesWithEvenSalary addObject:empl];            }
        }
        
        // 6
        for (Employee *empl in employeesWithEvenSalary)
        {
            [employees removeObject:empl];
        }
        
        NSLog(@"-------------");
        for (Employee *empl in employees)
        {
            NSLog(@"%@ %@'s salary is $%d", [empl name], [empl surname], [empl salary]);
        }
        
        // 7
        NSString* fileName = @"MyArray.saved";
        NSData* savedArray = [NSKeyedArchiver archivedDataWithRootObject:employees];
        [savedArray writeToFile:fileName atomically:NO];
        
        NSData* loadedData = [NSData dataWithContentsOfFile:fileName];
        NSMutableArray* loadedArray = [NSKeyedUnarchiver unarchiveObjectWithData:loadedData];
        
        NSLog(@"-------------");
        for (Employee *empl in loadedArray)
        {
            NSLog(@"%@ %@'s salary is $%d", [empl name], [empl surname], [empl salary]);
        }
    }
    return 0;
}
