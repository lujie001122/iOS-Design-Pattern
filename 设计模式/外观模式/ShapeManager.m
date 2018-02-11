//
//  ShapeManager.m
//  测试
//
//  Created by 卢杰 on 2018/2/9.
//  Copyright © 2018年 卢杰. All rights reserved.
//

#import "ShapeManager.h"

@implementation ShapeManager
-(void)drawCircle{
    Circle *_circle = [[Circle alloc]init];
    [_circle draw];
}
-(void)drawSquare{
    Square *_square = [[Square alloc]init];
    [_square draw];
}
@end
