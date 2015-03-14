//
//  Child.h
//  Day18_4W_inheritAndInitMethod
//
//  Created by lanouhn on 15/2/4.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "Person.h"
@class Man;
@class Woman;



@interface Child : Person
{
    Man *father;
    Woman *mother;
}

- (id)initWithFather:(Man *)aFather mother:(Woman *)aMother;

- (void)setFather:(Man *)aFather;
- (Man *)father;

- (void)setMother:(Woman *)aMother;
- (Woman *)mother;

- (void)sayHi;

- (void)play;
- (void)study;

@end
