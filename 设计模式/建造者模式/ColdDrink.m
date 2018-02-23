//
//  ColdDrink.m
//  设计模式
//
//  Created by 卢杰 on 2018/2/23.
//  Copyright © 2018年 卢杰. All rights reserved.
//

#import "ColdDrink.h"

#import "Bottle.h"

@implementation ColdDrink
-(ItemBase*)packing{
    return [Bottle new];
}
@synthesize price;

@synthesize name;

@synthesize packing;
@end
