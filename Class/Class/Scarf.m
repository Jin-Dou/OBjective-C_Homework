//
//  Scarf.m
//  Day16_4W_Class
//
//  Created by lanouhn on 15/2/2.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "Scarf.h"

@implementation Scarf

- (id)init {
    cloth = @"聚酯纤维";
    return  self;
}

- (void)use {
    NSLog(@"\n一件%@的围巾是由%@制作成的", self->color, self->cloth);
}

- (void)setCloth:(NSString *)aCloth {
    cloth = aCloth;
}

- (NSString *)cloth {
    return cloth;
}

- (void)setLongth:(NSInteger)aLongth {
    longth = aLongth;
}

- (NSInteger)longth {
    return longth;
}

- (void)setColor:(NSString *)aColor {
    color = aColor;
}

- (NSString *)color {
    return color;
}


@end
