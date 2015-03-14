//
//  NSMutableArray+convert.m
//  HomeworkNSDate
//
//  Created by lanouhn on 15/3/10.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "NSMutableArray+convert.h"

@implementation NSMutableArray (convert)

- (NSMutableArray *)sortInvertedOrder {
    for (int i = 0; i < self.count / 2; i++) {
        [self exchangeObjectAtIndex:i withObjectAtIndex:self.count - 1 - i];
    }
    return self;
}

@end
