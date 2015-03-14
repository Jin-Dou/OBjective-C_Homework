//
//  Fraction.h
//  Day18_4W_inheritAndInitMethod
//
//  Created by lanouhn on 15/2/4.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
{
    NSInteger nume;
    NSInteger deno;
}
//初始化参数
- (id)initWithNume:(NSInteger)aNume deno:(NSInteger)aDeno;

#pragma mark setter getter

- (void)setNume:(NSInteger)aNume;
- (void)setDeno:(NSInteger)aDeno;

- (NSInteger)nume;
- (NSInteger)deno;


#pragma mark 便利构造器
+ (Fraction *)fractionWithNume:(NSInteger) aNume deno:(NSInteger)aDeno;

//约分
- (Fraction *)reduction;

//打印
- (void)print;

//加
- (Fraction *)addFraction:(Fraction *)anotherFraction;

//减
- (Fraction *)reduceFraction:(Fraction *)anotherFraction;

//乘
- (Fraction *)rideFraction:(Fraction *)anotherFraction;

//除
- (Fraction *)divFraction:(Fraction *)anotherFraction;







@end
