//
//  main.m
//  HomeworkProperty
//
//  Created by lanouhn on 15/3/11.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
    //创建一个Fraction类（分数）实现分数的加减乘除，比较大小、约分等方法。
    //要求：为类添加属性
    
        Fraction *f1 = [[Fraction alloc] initWithNumera:6 denom:7];
        Fraction *f2 = [[Fraction alloc] initWithNumera:2 denom:0];
        //约分
        [f1 reduction];
        NSLog(@"%@", f1);
        //加
        NSLog(@"%@", [f1 addWithFraction:f2]);
        //减
        NSLog(@"%@", [f1 addWithFraction:f2]);
        //乘
        NSLog(@"%@", [f1 mulWithFraction:f2]);
        //除
        NSLog(@"%@", [f1 divWithFraction:f2]);
        //比较大小
        [f1 compareWithFraction:f2];
    
    
    
    
    
    
    
    
    }
    return 0;
}
