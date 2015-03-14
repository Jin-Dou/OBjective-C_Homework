//
//  Family.h
//  Day18_4W_inheritAndInitMethod
//
//  Created by lanouhn on 15/2/4.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Man;
@class Woman;
@class Child;

@interface Family : NSObject
{
    Man *husband;
    Woman *wife;
    Child *son;
}

- (id)initWithHusband:(Man *)aHusband wife:(Woman *)aWife son:(Child *)aSon;

- (void)party;
- (void)travel;

@end
