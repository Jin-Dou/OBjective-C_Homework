//
//  BookManager.m
//  NSStringHomeworks
//
//  Created by lanouhn on 15/3/6.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "BookManager.h"
#import "Book.h"
@implementation BookManager

- (id)init {
    if (self = [super init]) {
        books = [[NSMutableArray alloc] initWithCapacity:0];
    }
    return self;
}

- (void)addBook:(Book *)aBook {
    [books addObject:aBook];
}

- (void)print {
    for (Book *bookT in books) {
        NSLog(@"%@", bookT);
    }
}




- (void)findInName:(NSString *)aName price:(NSInteger)aPrice {
    NSInteger a = 0;
    for (Book *temp in books) {
        if ([temp.name isEqualToString:aName]) {
            NSLog(@"%@修改前的价格是%.2lf人民币", aName, temp.price);
            temp.price = aPrice;
            NSLog(@"%@修改后的价格是%.2lf人民币\n", aName, temp.price);
            a = 1;
        }
    }
    if (a == 0) {
        NSLog(@"查找的书籍不存在!");
    }
    
}

@end
