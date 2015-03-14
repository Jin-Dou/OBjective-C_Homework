//
//  Pen.h
//  Day16_4W_Class
//
//  Created by lanouhn on 15/2/2.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pen : NSObject
{
    NSString * color;
    NSString * type;
    CGFloat weight;
}

- (void)look;

- (void)setColor:(NSString *)aColor;

- (NSString *)color;

- (void)setType:(NSString *)aType;

- (NSInteger)type;

- (void)setWeight:(CGFloat)aWeight;

- (CGFloat)weight;

@end
