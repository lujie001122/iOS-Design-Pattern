//
//  DrawAPI.h
//  设计模式
//
//  Created by 卢杰 on 2018/2/26.
//  Copyright © 2018年 卢杰. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DrawAPI <NSObject>
-(void)drawCircleWithRadius:(int)radius pointX:(int)x pointY:(int)y;
@end
