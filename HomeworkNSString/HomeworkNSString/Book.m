//
//  Book.m
//  NSStringHomeworks
//
//  Created by lanouhn on 15/3/5.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "Book.h"

@implementation Book

@synthesize name;
@synthesize price;

- (NSString *)description {
    return [NSString stringWithFormat:@"name:%@, price:%.2lf", name, price];
}

- (id)initWithName:(NSString *)aName price:(NSInteger)aPrice {
    if (self = [super init]) {
        name = aName;
        price = aPrice;
    }
    return self;
}



@end
