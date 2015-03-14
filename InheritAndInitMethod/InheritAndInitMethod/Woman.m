//
//  Woman.m
//  Day18_4W_inheritAndInitMethod
//
//  Created by lanouhn on 15/2/4.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "Woman.h"
#import "Child.h"
#import "Man.h"



@implementation Woman

- (id)init {
    if (self = [super init]) {
        sex = @"女";
    }
    return self;
}

- (id)initWithHusband:(Man *)aHusband son:(Child *)aSon {
    if (self = [super init]) {
        husband = aHusband;
        son = aSon;
    }
    return self;
}

- (void)setHunband:(Man *)aHunband {
    husband = aHunband;
}
- (Man *)hunband {
    return husband;
}

- (void)setSon:(Child *)aSon {
    son = aSon;
}
- (Child *)son {
    return son;
}

- (void)sayHi {
    NSLog(@"大家好, 我叫%@, %@, %ld岁, 是%@的妻子, %@的妈妈!", name, sex, age, husband.name, son.name);
}


- (void)doHomework {
    NSLog(@"%@正在做家务!", name);
}

- (void)cook {
    NSLog(@"%@正在做饭!", name);
}


@end
