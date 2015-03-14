//
//  Mouse.m
//  Day16_4W_Class
//
//  Created by lanouhn on 15/2/2.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "Mouse.h"

@implementation Mouse
- (id)init {
    name = @"老鼠";
    return self;
}

- (void)shout {
    NSLog(@"\n%@叽叽叽地叫...", self->name);
}

- (void)setName:(NSString *)aName {
    name = aName;
}

- (NSString *)name {
    return name;
}

- (void)setNumber:(NSInteger)aNumber {
    number = aNumber;
}

- (NSInteger)number {
    return number;
}


@end
