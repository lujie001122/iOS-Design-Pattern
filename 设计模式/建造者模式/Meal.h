//
//  Meal.h
//  设计模式
//
//  Created by 卢杰 on 2018/2/23.
//  Copyright © 2018年 卢杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ItemBase.h"

@interface Meal : NSObject
-(void)addFoodItems:(ItemBase*)item;
-(float)getCost;
-(void)showItems;
@end
