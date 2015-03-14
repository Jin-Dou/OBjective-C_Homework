//
//  Person.m
//  NSStringHomeworks
//
//  Created by lanouhn on 15/3/5.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)initWithName:(NSString *)aName number:(NSString *)aNumber {
    if (self = [super init]) {
        name = aName;
        number = aNumber;
    }
    return self;
}

- (id)initWithName:(NSString *)aName number:(NSString *)aNumber sex:(NSString *)aSex address:(NSString *)aAddress arrayName:(NSString *)aArrayName {
    if (self = [super init]) {
        name = aName;
        number = aNumber;
        sex = aSex;
        address = aAddress;
        arrayName = aArrayName;
    }
    return self;
}




@synthesize name, sex, number, address, arrayName;

- (NSString *)description {
    return [NSString stringWithFormat:@"\n姓名:%@\n性别:%@\n电话号码:%@\n住址:%@\n分组名称:%@", name, sex, number, address, arrayName];
}






@end
