//
//  Man.m
//  Day18_4W_inheritAndInitMethod
//
//  Created by lanouhn on 15/2/4.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "Man.h"
#import "Child.h"
#import "Woman.h"

@implementation Man

- (id)init {
    if (self = [super init]) {
        sex = @"男";
    }
    return self;
}

- (id)initWithWife:(Woman *)aWife son:(Child *)aSon {
    if (self = [super init]) {
        wife = aWife;
        son = aSon;
    }
    return self;
}

- (void)setWife:(Woman *)aWife {
    wife = aWife;
}
- (Woman *)wife {
    return wife;
}

- (void)setSon:(Child *)aSon {
    son = aSon;
}
- (Child *)son {
    return son;
}

- (void)sayHi {
    NSLog(@"大家好, 我叫%@, %@, %ld岁, 是%@的丈夫, %@的爸爸!", name, sex, age, wife.name, son.name);
}

- (void)makeMoney {
    NSLog(@"%@要努力工作赚钱!", name);
}

@end
