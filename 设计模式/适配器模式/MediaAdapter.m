//
//  MediaAdapter.m
//  设计模式
//
//  Created by 卢杰 on 2018/2/24.
//  Copyright © 2018年 卢杰. All rights reserved.
//

#import "MediaAdapter.h"
#import "Mp4Player.h"
#import "VlcPlayer.h"

@implementation MediaAdapter
+(void)playWithName:(NSString *)fileName andType:(NSString *)type{
    if ([@"vlc" isEqualToString:type]) {
        [VlcPlayer playVlcWithName:fileName];
    }else if ([@"mp4" isEqualToString:type]){
        [Mp4Player playMP4WithName:fileName];
    }else{
        NSLog(@"Invalid media %@ format not supported。name is %@",type,fileName);
    }
}
@end
