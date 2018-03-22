//
//  Employee.m
//  设计模式
//
//  Created by 卢杰 on 2018/3/22.
//  Copyright © 2018年 卢杰. All rights reserved.
//

#import "Employee.h"

@implementation Employee
- (instancetype)init
{
    self = [super init];
    if (self) {
        _subordinates = [NSMutableArray new];
    }
    return self;
}
+(Employee *)employeeWithName:(NSString *)name dept:(NSString *)dept salary:(int)salary{
    Employee *e = [Employee new];
    e.name = name;
    e.dept = dept;
    e.salary = salary;
    
    return e;
}
-(void)add:(Employee *)e{
    [_subordinates addObject:e];
}
-(void)delete:(Employee *)e{
    [_subordinates removeObject:e];
}
- (NSString *)description
{
    return [NSString stringWithFormat:@"Employee:[Name:%@ Dept:%@ salary:%d\n]", _name,_dept,_salary];
}
@end
