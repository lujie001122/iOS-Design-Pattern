//
//  Item.h
//  设计模式
//
//  Created by 卢杰 on 2018/2/23.
//  Copyright © 2018年 卢杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Packing.h"

@protocol Item <NSObject>

@property (nonatomic, copy)NSString  *name;

@property (nonatomic, copy)id<Packing> packing;

@property (nonatomic, assign)float  price;

@end
