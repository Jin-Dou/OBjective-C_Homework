//
//  Person.h
//  Day18_4W_inheritAndInitMethod
//
//  Created by lanouhn on 15/2/4.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSInteger age;
    NSString *name;
    NSString *sex;
}

- (id)initWithName:(NSString *)aName age:(NSInteger)aAge sex:(NSString *)aSex;

- (void)setAge:(NSInteger)aAge;
- (NSInteger)age;

- (void)setName:(NSString *)aName;
- (NSString *)name;

- (void)setSex:(NSString *)aSex;
- (NSString *)sex;

@end
