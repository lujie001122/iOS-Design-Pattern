//
//  Employee.h
//  设计模式
//
//  Created by 卢杰 on 2018/3/22.
//  Copyright © 2018年 卢杰. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Employee : NSObject
@property(nonatomic, strong)NSString* name;
@property(nonatomic, strong)NSString* dept;
@property(nonatomic, assign)int salary;
@property(nonatomic, copy)NSMutableArray *subordinates;
+(Employee *)employeeWithName:(NSString *)name dept:(NSString *)dept salary:(int)salary;
-(void)add:(Employee *)e;
-(void)delete:(Employee *)e;
@end
