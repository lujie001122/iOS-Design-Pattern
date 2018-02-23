//
//  ItemBase.m
//  设计模式
//
//  Created by 卢杰 on 2018/2/23.
//  Copyright © 2018年 卢杰. All rights reserved.
//

#import "ItemBase.h"
#import "Wrapper.h"

@implementation ItemBase
-(ItemBase*)packing{
    return [Wrapper new];
}
@synthesize price;

@synthesize name;

@synthesize packing;
@end
