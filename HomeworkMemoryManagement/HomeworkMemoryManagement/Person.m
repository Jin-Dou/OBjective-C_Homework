//
//  Person.m
//  HomeworkMemoryManagement
//
//  Created by lanouhn on 15/3/12.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)initWithName:(NSString *)aName sex:(NSString *)aSex age:(NSInteger)aAge {
    if (self = [super init]) {
        _name = aName;
        _sex = aSex;
        _age = aAge;
    }
    return self;
}

- (void)dealloc
{
//    NSLog(@"%@ is dealloc", _name);
    [_name release];
    [_sex release];
    [super dealloc];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"name:%@  age:%ld", _name, _age];
}


@end
