//
//  Fraction.m
//  HomeworkProperty
//
//  Created by lanouhn on 15/3/11.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction


- (id)initWithNumera:(NSInteger)aNumera denom:(NSInteger)aDenom {
    if (self = [super init]) {
        _numerator = aNumera;
        _denominator = aDenom;
    }
    return self;
}

//约分
- (void)reduction {
    NSInteger temp = 0, a = self.numerator, b = self.denominator;
    if (a < 0) {
        a = -1 * a;
    }
    if (b < 0) {
        b = -1 * b;
        _denominator *= -1;
        _numerator *= -1;
    }
    while (b != 0) {
        temp = a % b;
        a = b;
        b = temp;
    }
    temp = a;
    self.numerator = self.numerator / a;
    self.denominator = self.denominator / a;
    
}
//加法
- (Fraction *)addWithFraction:(Fraction *)aFraction {
    Fraction *returnF = [[Fraction alloc] init];
    returnF.numerator = self.numerator * aFraction.denominator + self.denominator * aFraction.numerator;
    returnF.denominator = self.denominator * aFraction.denominator;
    [returnF reduction];
    return returnF;
}

//减法
- (Fraction *)minusWithFraction:(Fraction *)aFraction {
    Fraction *returnF = [[Fraction alloc] init];
    returnF.numerator = self.numerator * aFraction.denominator - self.denominator * aFraction.numerator;
    returnF.denominator = self.denominator * aFraction.denominator;
    [returnF reduction];
    return returnF;
}
//乘
- (Fraction *)mulWithFraction:(Fraction *)aFraction {
    Fraction *returnF = [[Fraction alloc] init];
    returnF.numerator = self.numerator * aFraction.numerator;
    returnF.denominator = self.denominator * aFraction.denominator;
    [returnF reduction];
    return returnF;
}
//除
- (Fraction *)divWithFraction:(Fraction *)aFraction {
    Fraction *returnF = [[Fraction alloc] init];
    returnF.numerator = self.numerator * aFraction.denominator ;
    returnF.denominator = self.denominator * aFraction.numerator;
    [returnF reduction];
    return returnF;
}
//比较
- (void)compareWithFraction:(Fraction *)aFraction {
    Fraction *returnF = [self minusWithFraction:aFraction];
    if (returnF.denominator == 0) {
        NSLog(@"分母不能为0");
        return;
    }
    if (self.denominator == 0) {
        NSLog(@"分母不能为0");
        return;
    }
    if (returnF.numerator > 0) {
        NSLog(@"%@大于%@", self, aFraction);
    } else if (returnF.numerator < 0) {
        NSLog(@"%@小于%@", self, aFraction);
    } else {
        NSLog(@"两数相等");
    }
}
//打印
- (void)print {
    NSLog(@"打印");
}

- (NSString *)description
{
    if (_numerator == _denominator) {
        return [NSString stringWithFormat:@"1"];
    } else if (_numerator == 0) {
        return [NSString stringWithFormat:@"0"];
    } else if (_denominator == 0) {
        return [NSString stringWithFormat:@"分母不能为0"];
    } else {
        return [NSString stringWithFormat:@"%ld/%ld", _numerator, _denominator];
    }
}






@end
