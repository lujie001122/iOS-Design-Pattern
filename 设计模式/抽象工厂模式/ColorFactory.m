//
//  ColorFactory.m
//  设计模式
//
//  Created by 卢杰 on 2018/2/22.
//  Copyright © 2018年 卢杰. All rights reserved.
//

#import "ColorFactory.h"
#import "Blue.h"
#import "Red.h"

@implementation ColorFactory
-(NSObject *)colorFillWithType:(int)type{
    if (type == 1) {
        Red* red = [Red new];
        return red;
    }else if (type == 2){
        Blue* blue = [Blue new];
        return blue;
    }
    return nil;
}
@end
