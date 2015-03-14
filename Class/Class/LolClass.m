//
//  LolClass.m
//  Day16_4W_Class
//
//  Created by lanouhn on 15/2/2.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "LolClass.h"

@implementation LolClass

//初始化(设置学校名字:蓝鸥)
- (id)init {
    nameOfOrganization = @"蓝鸥";
    return self;
}

//集体活动
- (void)groupActivity {
    NSLog(@"\n集体活动");
}

//开班仪式
- (void)start {
    NSLog(@"\n开班仪式");
}

@end
