//
//  ZombieAA.m
//  Day17_4W_instanceVariable
//
//  Created by lanouhn on 15/2/3.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "Zombie.h"
#import "ZombieA.h"

@implementation ZombieA
- (id)init {
    if (self = [super init]) {
        HP = 80;
        lostHP = 2;
        prop = @"路障";
        weakNess = @"水淹";
    }
    return self;
}
- (id)initWithProp:(NSString *)aProp weakness:(NSString *)aWeakNess {
    if (self = [super init]) {
        prop = aProp;
        weakNess = aWeakNess;
    }
    return self;
}

#pragma mark 便利构造器

+ (Zombie *)zombieWithHP:(NSInteger)aHP lostHP:(NSInteger)aLostHP prop:(NSString *)aProp weakness:(NSString *)aWeakNess {
    Zombie *zombie = [[Zombie alloc] initWithHP:aHP lostHP:aLostHP];
    return zombie;
}


//剩余血量
- (void)loseHP:(int)attackTime {
    for (int i = 1; i <= attackTime; i++) {
        [NSThread sleepForTimeInterval:0.12];
        HP = HP- lostHP;
        if (HP <= 40 && [prop isEqualToString:@"路障"]) {
            prop = @"失去道具";
            lostHP = 4;
            NSLog(@"路障僵尸被砍%d刀时,失去路障装备", i);
        }
        if (HP <= 0) {
            HP = 0;
            NSLog(@"路障僵尸被砍%d刀,死亡!", i);
            break;
        }
        NSLog(@"路障僵尸失血%ld,剩余%ld血量", lostHP, HP);
    }
}

//是否死亡
- (void)dieOrNot {
    if (HP == 0) {
        NSLog(@"路障僵尸已被砍死");
    } else {
        NSLog(@"剩余血量%ld", HP);
    }
}

- (NSString *)prop {
    return prop;
}

- (NSString *)weakNess {
    return weakNess;
}


@end
