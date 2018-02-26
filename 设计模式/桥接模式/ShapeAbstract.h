//
//  ShapeAbstract.h
//  设计模式
//
//  Created by 卢杰 on 2018/2/26.
//  Copyright © 2018年 卢杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DrawAPI.h"
@interface ShapeAbstract : NSObject<DrawAPI>
@property(nonatomic, strong)id<DrawAPI> drawApi;

@end
