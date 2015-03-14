//
//  Woman.h
//  Day18_4W_inheritAndInitMethod
//
//  Created by lanouhn on 15/2/4.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "Person.h"
@class Man;
@class Child;



@interface Woman : Person
{
    Man *husband;
    Child *son;
}

- (id)initWithHusband:(Man *)aHusband son:(Child *)aSon;

- (void)setHunband:(Man *)aHunband;
- (Man *)hunband;

- (void)setSon:(Child *)aSon;
- (Child *)son;

- (void)sayHi;

- (void)doHomework;
- (void)cook;

@end
