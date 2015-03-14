//
//  Cup.m
//  Day16_4W_Class
//
//  Created by lanouhn on 15/2/2.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "Cup.h"

@implementation Cup

- (id)init {
    color = @"白色";
    return self;
}

- (void)introduce {
    NSLog(@"\n一个%@的杯具容量%.1fml", self->color, self->capacity);
}

- (void)setColor:(NSString *)aColor {
    color =aColor;
}

- (NSString *)color {
    return color;
}

- (void)setCapacity:(CGFloat)aCapacity {
    capacity = aCapacity;
}

- (CGFloat)capacity {
    return  capacity;
}


@end
