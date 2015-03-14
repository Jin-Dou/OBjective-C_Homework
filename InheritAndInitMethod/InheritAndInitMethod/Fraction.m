//
//  Fraction.m
//  Day18_4W_inheritAndInitMethod
//
//  Created by lanouhn on 15/2/4.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction



//初始化参数
- (id)initWithNume:(NSInteger)aNume deno:(NSInteger)aDeno {
    if (self = [super init]) {
        nume = aNume;
        deno = aDeno;
    }
    if (deno == 0) {
        NSLog(@"****************");
        NSLog(@"分母不能为0");
        return 0;
    }
    return self;
}


#pragma mark setter getter

- (void)setNume:(NSInteger)aNume {
    nume = aNume;
}
- (void)setDeno:(NSInteger)aDeno {
    deno = aDeno;
}

- (NSInteger)nume {
    return nume;
}
- (NSInteger)deno {
    return deno;
}

#pragma mark 便利构造器
+ (Fraction *)fractionWithNume:(NSInteger)aNume deno:(NSInteger)aDeno {
    Fraction *fraction = [[Fraction alloc] initWithNume:aNume deno:aDeno];
    return fraction;
}

//约分
- (Fraction *)reduction {
    NSInteger a = nume;
    NSInteger b = deno;
    while (b != 0) {
        NSInteger temp = a % b;
        a = b;
        b = temp;
    }
    Fraction *f = [[Fraction alloc] initWithNume:(nume / a) deno:(deno / a)];
    return f;
}

//打印
- (void)print {
    if (nume == deno) {
        NSLog(@"1");
    } else {
        NSLog(@"%ld / %ld", nume, deno);
    }
}

//加
- (Fraction *)addFraction:(Fraction *)anotherFraction {
    Fraction *fra = [[Fraction alloc] initWithNume:(nume * anotherFraction.deno + deno * anotherFraction.nume) deno:deno * anotherFraction.deno];
    fra = [fra reduction];
    [fra print];
    return fra;
}

//减
- (Fraction *)reduceFraction:(Fraction *)anotherFraction {
    Fraction *fra = [[Fraction alloc] initWithNume:nume * anotherFraction.deno - deno * anotherFraction.nume deno:deno * anotherFraction.deno];
    fra = [fra reduction];
    [fra print];
    return fra;
}

//乘
- (Fraction *)rideFraction:(Fraction *)anotherFraction {
    Fraction *fra = [[Fraction alloc] initWithNume:nume * anotherFraction.nume deno:deno * anotherFraction.deno];
    fra = [fra reduction];
    [fra print];
    return fra;

}


//除
- (Fraction *)divFraction:(Fraction *)anotherFraction {
    Fraction *fra = [[Fraction alloc] initWithNume:nume * anotherFraction.deno deno:deno * anotherFraction.nume];
    fra = [fra reduction];
    [fra print];
    return fra;

}



@end
