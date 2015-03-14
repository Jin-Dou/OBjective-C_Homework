//
//  Calculator.h
//  Day16_4W_Class
//
//  Created by lanouhn on 15/2/2.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject
{
    CGFloat a;
    NSString * oper;
    CGFloat b;
}

- (void)Count;

- (void)setA:(CGFloat)aA;

- (CGFloat)a;

- (void)setOper:(NSString *)aOper;

- (NSString *)oper;

- (void)setB:(CGFloat)aB;

- (CGFloat)b;


@end
