//
//  Pen.m
//  Day16_4W_Class
//
//  Created by lanouhn on 15/2/2.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "Pen.h"

@implementation Pen

- (id)init {
    color = @"黑色";
    return self;
}

- (void)look {
    NSLog(@"\n我有一只%@牌的钢笔,它是%@的", self->type, self->color);
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

- (void)setWeight:(CGFloat)aWeight {
    weight = aWeight;
}

- (CGFloat)weight {
    return weight;
}


@end
