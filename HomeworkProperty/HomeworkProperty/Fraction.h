//
//  Fraction.h
//  HomeworkProperty
//
//  Created by lanouhn on 15/3/11.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>





@interface Fraction : NSObject

@property (nonatomic, readwrite, assign) NSInteger numerator, denominator;

- (id)initWithNumera:(NSInteger)aNumera denom:(NSInteger)aDenom;

- (void)reduction;

- (Fraction *)addWithFraction:(Fraction *)aFraction;

- (Fraction *)minusWithFraction:(Fraction *)aFraction;

- (Fraction *)mulWithFraction:(Fraction *)aFraction;

- (Fraction *)divWithFraction:(Fraction *)aFraction;

- (void)compareWithFraction:(Fraction *)aFraction;

- (void)print;

@end
