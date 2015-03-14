//
//  Phone.m
//  Day16_4W_Class
//
//  Created by lanouhn on 15/2/2.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "Phone.h"

@implementation Phone

- (id)init {
    type = @"诺基亚";
    return self;
}

- (void)call:(NSString *)number {
    NSLog(@"\n正在与%@通话中...", number);
}
- (void)hangUp {
    NSLog(@"\n通话结束");
}

- (void)setType:(NSString *)aType {
    type = aType;
}

- (NSString *)type {
    return type;
}

- (void)setColor:(NSString *)aColor {
    color = aColor;
}

- (NSString *)color {
    return color;
}

@end
