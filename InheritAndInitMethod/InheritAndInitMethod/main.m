//
//  main.m
//  Day18_4W_inheritAndInitMethod
//
//  Created by lanouhn on 15/2/4.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Child.h"
#import "Woman.h"
#import "Family.h"
#import "Man.h"
#import "Person.h"
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    
    
    /*
    作业1
    基于昨天的作业2,将3个僵尸类使用继承重新定义。
    使⽤用完整的初始化⽅方法。
    定义并实现便利构造器⽅方法。
    */
    
    //OK
    
    
    /*
    作业2
    定义类:Family,Man,Woman,Child 
    Family里包含实例变量hunband,wife,son,方法party,travel。
    Man里包含wife,age,sex,name,son,方法makeMoney
    Woman里包含hunband,age,sex,name,son,方法doHousework,cook
    Child里包含age,sex,name,father,mother,⽅法play,study
    提示:是否可以定义一个⽗类Person?
    */
    
//    Man *man1 = [[Man alloc] initWithName:@"李晨" age:38 sex:@"男"];
//    Woman *woman1 = [[Woman alloc] initWithName:@"范冰冰" age:35 sex:@"女"];
//    Child *child1 = [[Child alloc] initWithName:@"小苹果" age:5 sex:@"男"];
//    man1.wife = woman1;
//    man1.son = child1;
//    [man1 makeMoney];
//    [man1 sayHi];
//    
//    woman1.hunband = man1;
//    woman1.son = child1;
//    [woman1 doHomework];
//    [woman1 cook];
//    [woman1 sayHi];
//    
//    child1.father = man1;
//    child1.mother = woman1;
//    [child1 play];
//    [child1 study];
//    [child1 sayHi];
//    
//    Family *family = [[Family alloc] initWithHusband:man1 wife:woman1 son:child1];
//    [family party];
//    [family travel];
    
        
    /*
    作业3
    定义⼀个分数类(Fraction)
    实例变量:分⼦,分⺟
    ⽅法:初始化方法(2个参数),便利构造器,约分,打印,加, 减,乘,除。
    提示:加法运算 - (Fraction *)addFraction:(Fraction *)anotherFraction
    */
    
    Fraction *fraction = [[Fraction alloc] initWithNume:4 deno:8];
    
    //约分
    fraction = [fraction reduction];
    //打印
    [fraction print];
    Fraction * f1 = [Fraction fractionWithNume:2 deno:3];
    //加
    [fraction addFraction:f1];
    //减
    [fraction reduceFraction:f1];
    //乘
    [fraction rideFraction:f1];
    //除
    [fraction divFraction:f1];

    
    return 0;
}
