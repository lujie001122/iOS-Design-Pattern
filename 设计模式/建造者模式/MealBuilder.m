//
//  MealBuilder.m
//  设计模式
//
//  Created by 卢杰 on 2018/2/23.
//  Copyright © 2018年 卢杰. All rights reserved.
//

#import "MealBuilder.h"
#import "Meal.h"
#import "VegBurger.h"
#import "Coke.h"
#import "ChickenBurger.h"
#import "Pepsi.h"

@implementation MealBuilder
-(Meal*)prepareVegMeal{
    Meal *meal = [Meal new];
    [meal addFoodItems: [VegBurger new]];
    [meal addFoodItems:[Coke new]];
    return meal;
}
-(Meal*)prepareNonVegMeal{
    Meal *meal = [Meal new];
    [meal addFoodItems: [ChickenBurger new]];
    [meal addFoodItems:[Pepsi new]];
    return meal;
}
@end
