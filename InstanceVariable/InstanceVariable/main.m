//
//  main.m
//  Day17_4W_instanceVariable
//
//  Created by lanouhn on 15/2/3.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Zombie.h"
#import "ZombieA.h"
#import "ZombieB.h"

int main(int argc, const char * argv[]) {
    
    
    /*
    1、定义普通僵尸类:
    实例变量:僵尸总血量、僵尸每次失血量。
    方法:初始化方法(总血量)、被打击失血、死亡。
    2、定义路障僵尸类: 
    实例变量:僵尸总血量、僵尸每次失血量,道具,弱点。
    方法:初始化方法(总血量)、被打击失血、失去装备、死亡。 
    3、定义铁桶僵尸类:
    实例变量:僵尸总血量、僵尸每次失血量,道具,弱点。
    方法:初始化方法(总血量)、被打击失血、失去装备、死亡。
    4、在main.m中创建普通僵尸对象,设置总血量50,每次失血量为 3,没有道具。 
    5、在main.m中创建路障僵尸对象,设置总血量80,每次失血量为 2,设置道具为路障。
    6、在main.m中创建铁桶僵尸对象,设置总血量120,每次失血量为 1,设置道具为铁桶。
    
    */
    
    Zombie *zombie1 = [[Zombie alloc] init];
    [zombie1 loseHP:12];//剩余血量
    [zombie1 dieOrNot];//是否死亡
    ZombieA *zombieA1 = [[ZombieA alloc] init];
    [zombieA1 loseHP:30];//剩余血量

    [zombieA1 dieOrNot];//是否死亡


    ZombieB *zombieB1 = [[ZombieB alloc] init];
    [zombieB1 loseHP:800];//剩余血量

    [zombieB1 dieOrNot];//是否死亡

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return 0;
}
