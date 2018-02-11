//
//  Germ.m
//  测试
//
//  Created by 卢杰 on 2018/2/11.
//  Copyright © 2018年 卢杰. All rights reserved.
//

#import "Germ.h"

@implementation Germ
-(id)copyWithZone:(NSZone *)zone{
    Germ *germ = [[Germ alloc]init];
    germ.name = self.name;
    return germ;
}
@end
