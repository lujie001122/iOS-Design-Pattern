//
//  CarFactory.m
//  设计模式
//
//  Created by 卢杰 on 2018/2/22.
//  Copyright © 2018年 卢杰. All rights reserved.
//

#import "CarFactory.h"
#import "SUV.h"
#import "Bus.h"

@implementation CarFactory
-(NSObject *)carRunWithType:(int)type{
    if (type == 1) {
        SUV* suv = [SUV new];
        return suv;
    }else if (type == 2){
        Bus* bus = [Bus new];
        return bus;
    }
    return nil;
}
@end
