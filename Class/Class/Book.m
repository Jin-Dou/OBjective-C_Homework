//
//  Book.m
//  Day16_4W_Class
//
//  Created by lanouhn on 15/2/2.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "Book.h"

@implementation Book

- (id)init {
    name = @"书";
    return self;
}

- (void)read {
    NSLog(@"\n这本书的名字叫做平凡的世界,作者路遥...");
}

//设置器
- (void)setName:(NSString *)aName {
    name = aName;
}
- (void)setLength:(CGFloat)aLength{
    length = aLength;
}
- (void)setWidth:(CGFloat)aWidth{
    width = aWidth;
}
- (void)setWeight:(CGFloat)aWeight{
    weight = aWeight;
}


//访问器
- (NSString *)name {
    return name;
}
- (CGFloat)length {
    return length;
}
- (CGFloat)width {
    return width;
}
- (CGFloat)weight {
    return weight;
}

@end