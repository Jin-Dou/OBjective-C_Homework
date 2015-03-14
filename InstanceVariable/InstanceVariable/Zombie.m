//
//  Zombie.m
//  Day17_4W_instanceVariable
//
//  Created by lanouhn on 15/2/3.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "Zombie.h"

@implementation Zombie

- (id)init {
    if (self = [super init]) {
        HP = 50;
        lostHP = 3;
    }
    return self;
}

- (id)initWithHP:(NSInteger)aHP lostHP:(NSInteger)aLostHP {
    if (self = [super init]) {
        HP = aHP;
        lostHP = aLostHP;
    }
    return self;
}

#pragma mark 便利构造器

+ (Zombie *)zombieWithHP:(NSInteger)aHP lostHP:(NSInteger)aLostHP {
    Zombie *zombie = [[Zombie alloc] initWithHP:aHP lostHP:aLostHP];
    return zombie;
}


//剩余血量
- (void)loseHP:(int)attackTime {
    for (int i = 1; i <= attackTime; i++) {
        [NSThread sleepForTimeInterval:0.5];
    HP = HP - lostHP;
        if (HP <= 0) {
            HP = 0;
            NSLog(@"普通僵尸被%d刀砍死", i);
        }
        NSLog(@"铁桶僵尸失血%ld,剩余%ld血量", lostHP, HP);
    }
}
//是否死亡
- (void)dieOrNot {
    if (HP == 0) {
        NSLog(@"普通僵尸已被打死");
    } else {
        NSLog(@"剩余血量%ld", HP);
    }
}

- (NSInteger)HP {
    return HP;
}



@end
