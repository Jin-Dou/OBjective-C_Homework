//
//  Calculator.m
//  Day16_4W_Class
//
//  Created by lanouhn on 15/2/2.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

- (void)Count {
    if ([oper isEqual:@"+"]) {
        NSLog(@"\n%.0f + %.0f = %.2f", a, b, a + b);
    } else if ([oper  isEqual: @"-"]) {
        NSLog(@"\n%.0f - %.0f = %.2f", a, b, a - b);
    } else if ([oper isEqual:@"*"]) {
        NSLog(@"\n%.0f * %.0f = %.2f", a, b, a * b);
    } else if ([oper isEqual:@"/"]) {
        NSLog(@"\n%.0f / %.0f = %.2f", a, b, a / b);
    }else {
        NSLog(@"\n参数有误");
    }
}

- (void)setA:(CGFloat)aA {
    a = aA;
}

- (CGFloat)a {
    return a;
}

- (void)setOper:(NSString *)aOper {
    oper = aOper;
}

- (NSString *)oper {
    return oper;
}

- (void)setB:(CGFloat)aB {
    b = aB;
}

- (CGFloat)b {
    return b;
}

@end
