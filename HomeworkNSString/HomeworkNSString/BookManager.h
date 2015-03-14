//
//  BookManager.h
//  NSStringHomeworks
//
//  Created by lanouhn on 15/3/6.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Book;

@interface BookManager : NSObject
{
    @public
    NSMutableArray *books;
}
- (void)addBook:(Book *)aBook;
- (void)print;

- (void)findInName:(NSString *)aName price:(NSInteger)aPrice;

@end
