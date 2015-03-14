//
//  Zombie.h
//  Day17_4W_instanceVariable
//
//  Created by lanouhn on 15/2/3.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Zombie : NSObject
{
    NSInteger HP;
    NSInteger lostHP;
}

- (id)initWithHP:(NSInteger)aHP lostHP:(NSInteger)aLostHP;

#pragma mark 便利构造器

+ (Zombie *)zombieWithHP:(NSInteger)aHP lostHP:(NSInteger)aLostHP;



//剩余血量
- (void)loseHP:(int)attackTime;
//是否死亡
- (void)dieOrNot;

- (NSInteger)HP;


@end
