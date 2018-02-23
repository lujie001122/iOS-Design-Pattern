//
//  Meal.m
//  设计模式
//
//  Created by 卢杰 on 2018/2/23.
//  Copyright © 2018年 卢杰. All rights reserved.
//

#import "Meal.h"


@interface Meal()
@property(nonatomic,copy)NSMutableArray<ItemBase *> *items;
@end

@implementation Meal
-(instancetype)init{
    if (self == [super init]) {
        _items = [[NSMutableArray alloc]init];
    }
    return self;
}
-(void)addFoodItems:(ItemBase*)item{
    [_items addObject:item];
}
-(float)getCost{
    float cost = 0.0f;
    for (int i = 0; i < _items.count; i++) {
         cost += _items[i].price;
    }
    return cost;
}
-(void)showItems{
    for (int i = 0; i < _items.count; i++) {
        NSLog(@"name:%@ -- Packing:%@---price%f",_items[i].name,_items[i].packing,_items[i].price);
    }
}
@end
