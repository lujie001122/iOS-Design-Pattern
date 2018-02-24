//
//  AudioPlayer.m
//  设计模式
//
//  Created by 卢杰 on 2018/2/24.
//  Copyright © 2018年 卢杰. All rights reserved.
//

#import "AudioPlayer.h"
#import "MediaAdapter.h"

@implementation AudioPlayer
+(void)playWithName:(NSString *)fileName andType:(NSString *)type{
    if ([@"mp3" isEqualToString:type]) {
        NSLog(@"Playing mp3 file Name:%@",fileName);
    }else {
        [MediaAdapter playWithName:fileName andType:type];
    }
}
@end
