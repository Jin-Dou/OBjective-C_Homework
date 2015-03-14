//
//  Book.h
//  NSStringHomeworks
//
//  Created by lanouhn on 15/3/5.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject
{
    NSString *name;
    CGFloat price;
}

@property NSString *name;
@property CGFloat price;

- (id)initWithName:(NSString *)aName price:(NSInteger)aPrice;

@end
