//
//  AbstractFactory.m
//  设计模式
//
//  Created by 卢杰 on 2018/2/22.
//  Copyright © 2018年 卢杰. All rights reserved.
//

#import "AbstractFactory.h"
#import "CarFactory.h"
#import "ColorFactory.h"

@implementation AbstractFactory
+(NSObject *)getFactoryWithType:(int)type{
    if (type == 1) {
        return [CarFactory new];
    }else if (type == 2){
        return [ColorFactory new];
    }
    return nil;
}
@end
