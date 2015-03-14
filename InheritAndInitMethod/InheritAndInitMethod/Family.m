//
//  Family.m
//  Day18_4W_inheritAndInitMethod
//
//  Created by lanouhn on 15/2/4.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "Family.h"
#import "Child.h"
#import "Man.h"
#import "Woman.h"

@implementation Family


- (id)initWithHusband:(Man *)aHusband wife:(Woman *)aWife son:(Child *)aSon {
    if (self = [super init]) {
        husband = aHusband;
        wife = aWife;
        son = aSon;
    }
    return self;
}

- (void)party {
    NSLog(@"丈夫%@, 妻子%@, 儿子%@正在举行聚会!", [husband name], [wife name], [son name]);
}
- (void)travel {
    NSLog(@"丈夫%@, 妻子%@, 儿子%@准备去济州岛旅行!", [husband name], [wife name], [son name]);
}

@end
