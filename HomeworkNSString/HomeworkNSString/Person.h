//
//  Person.h
//  NSStringHomeworks
//
//  Created by lanouhn on 15/3/5.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *name;
    NSString *sex;
    NSString *number;
    NSString *address;
    NSString *arrayName;
}
@property NSString *name, *sex, *number, *address, *arrayName;

- (id)initWithName:(NSString *)aName number:(NSString *)aNumber;
- (id)initWithName:(NSString *)aName number:(NSString *)aNumber sex:(NSString *)aSex address:(NSString *)aAddress arrayName:(NSString *)aArrayName;

@end
