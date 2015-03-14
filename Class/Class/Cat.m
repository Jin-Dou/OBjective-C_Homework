//
//  Cat.m
//  Day16_4W_Class
//
//  Created by lanouhn on 15/2/2.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "Cat.h"

@implementation Cat

- (id)init {
    name = @"花猫";
    return self;
}

- (void)sayHello {
    NSLog(@"\n喵喵喵");
}

//设置器
- (void)setName:(NSString *)aName {
    name = aName;
}
- (void)setBreed:(NSString *)aBreed {
    breed = aBreed;
}

//访问器
- (NSString *)name {
    return name;
}
- (NSString *)breed {
    return breed;
}

@end
