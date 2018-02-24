//
//  AdvancedMediaPlayer.h
//  设计模式
//
//  Created by 卢杰 on 2018/2/24.
//  Copyright © 2018年 卢杰. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AdvancedMediaPlayer <NSObject>
+(void)playVlcWithName:(NSString *)fileName;
+(void)playMP4WithName:(NSString *)fileName;
@end
