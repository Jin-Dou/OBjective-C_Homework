//
//  ZombieAAA.m
//  Day17_4W_instanceVariable
//
//  Created by lanouhn on 15/2/3.
//  Copyright (c) 2015年 Jin. All rights reserved.
//
#import "Zombie.h"
#import "ZombieA.h"
#import "ZombieB.h"

@implementation ZombieB
- (id)init {
    if (self = [super init]) {
        HP = 120;
        lostHP = 1;
        prop = @"铁桶";
        weakNess = @"火烧";
    }
    return self;
}

//剩余血量
- (void)loseHP:(int)attackTime {
    for (int i = 1; i <= attackTime; i++) {
        [NSThread sleepForTimeInterval:0.5];
        HP = HP- lostHP;
        if (HP <= 60 && [prop isEqualToString:@"铁桶"]) {
            prop = @"失去道具";
            lostHP = 3;
            NSLog(@"铁桶僵尸被砍%d刀时,失去铁桶装备", i);
        }
        if (HP <= 0) {
            HP = 0;
            NSLog(@"铁桶僵尸被%d刀砍死", i);
            break;
        }
        NSLog(@"铁桶僵尸失血%ld,剩余%ld血量", lostHP, HP);
    }
}
//是否死亡
- (void)dieOrNot {
    if (HP == 0) {
        NSLog(@"铁桶僵尸已被砍死");
    } else {
        NSLog(@"剩余血量%ld", HP);
    }
}

@end
