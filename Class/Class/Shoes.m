//
//  shoes.m
//  Day16_4W_Class
//
//  Created by lanouhn on 15/2/2.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "Shoes.h"

@implementation Shoes

- (id)init {
    color = @"棕色";
    return self;
}

- (void)introduce {
    NSLog(@"\n我穿着一双%@的%@皮鞋,不过已经穿了%ld月", type, color, useTime);
}

- (void)setColor:(NSString *)aColor {
    color = aColor;
}

- (NSString *)color {
    return color;
}

- (void)setType:(NSString *)aType {
    type = aType;
}

- (NSInteger)type {
    return type;
}

- (void)setUseTime:(NSInteger)aUseTime {
    useTime = aUseTime;
}

- (NSInteger)useTime {
    return useTime;
}

@end
