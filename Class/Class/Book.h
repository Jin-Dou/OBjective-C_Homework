//
//  Book.h
//  Day16_4W_Class
//
//  Created by lanouhn on 15/2/2.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject
{
    NSString * name;
    CGFloat length;
    CGFloat width;
    CGFloat weight;
}

- (void)read;

//设置器
- (void)setName:(NSString *)aName;
- (void)setLength:(CGFloat)aLength;
- (void)setWidth:(CGFloat)aWidth;
- (void)setWeight:(CGFloat)aWeight;

//访问器
- (NSString *)name;
- (CGFloat)length;
- (CGFloat)width;
- (CGFloat)weight;

@end
