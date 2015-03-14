//
//  Man.h
//  Day18_4W_inheritAndInitMethod
//
//  Created by lanouhn on 15/2/4.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "Person.h"

@class Woman;
@class Child;

@interface Man : Person
{
    Woman *wife;
    Child *son;
}

# pragma mark 初始化

- (id)initWithWife:(Woman *)aWife son:(Child *)aSon;

# pragma mark setter getter

- (void)setWife:(Woman *)aWife;
- (Woman *)wife;

- (void)setSon:(Child *)aSon;
- (Child *)son;

# pragma mark 方法

- (void)sayHi;

- (void)makeMoney;
@end
