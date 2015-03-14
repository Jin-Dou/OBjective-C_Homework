//
//  Dog.m
//  Day16_4W_Class
//
//  Created by lanouhn on 15/2/2.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "Dog.h"

@implementation Dog

- (id)init {
    color = @"黑白点";
    return self;
}

- (void)sayHi {
    NSLog(@"\n汪汪汪...");
}

- (void)setName:(NSString *)aName {
    name = aName;
}
- (void)setAge:(NSInteger)aAge {
    age = aAge;
}
- (void)setColor:(NSString *)aColor {
    color = aColor;
}

- (NSString *)name {
    return name;
}
- (NSInteger)age {
    return age;
}
- (NSString *)color {
    return color;
}

@end
