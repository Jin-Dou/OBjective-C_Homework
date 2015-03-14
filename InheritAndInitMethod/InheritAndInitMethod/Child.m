//
//  Child.m
//  Day18_4W_inheritAndInitMethod
//
//  Created by lanouhn on 15/2/4.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "Child.h"
#import "Man.h"
#import "Woman.h"

@implementation Child

- (id)initWithFather:(Man *)aFather mother:(Woman *)aMother {
    if (self = [super init]) {
        father = aFather;
        mother = aMother;
    }
    return self;
}

- (void)setFather:(Man *)aFather {
    father = aFather;
}
- (Man *)father {
    return father;
}

- (void)setMother:(Woman *)aMother {
    mother = aMother;
}
- (Woman *)mother {
    return mother;
}

- (void)sayHi {
    NSLog(@"大家好, 我叫%@, %@, %ld岁, 我的爸爸叫%@, 我的妈妈叫%@!", name, sex, age, father.name, mother.name);
}

- (void)play {
    NSLog(@"%@跑出去玩去了!", name);
}

- (void)study {
    NSLog(@"%@开始学习了!", name);
}
@end
