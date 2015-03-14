//
//  Person.m
//  Day18_4W_inheritAndInitMethod
//
//  Created by lanouhn on 15/2/4.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)init {
    if (self = [super init]) {
        name = @"某某某";
        age = 0;
        sex = @"未知";
    }
    return self;
}

- (id)initWithName:(NSString *)aName age:(NSInteger)aAge sex:(NSString *)aSex {
    if (self = [super init]) {
        name = aName;
        age = aAge;
        sex = aSex;
    }
    return self;
}

- (void)setAge:(NSInteger)aAge {
    age = aAge;
}
- (NSInteger)age {
    return age;
}

- (void)setName:(NSString *)aName {
    name = aName;
}
- (NSString *)name {
    return name;
}

- (void)setSex:(NSString *)aSex {
    sex = aSex;
}
- (NSString *)sex {
    return sex;
}

@end
