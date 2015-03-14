//
//  AddressContact.h
//  HomeworkNSDictionary
//
//  Created by lanouhn on 15/3/6.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressContact : NSObject
{
    NSString *name;
    NSString *sex;
    NSString *number;
    NSString *address;
    NSString *groupName;
    NSInteger age;
}
@property NSString *name, *sex, *number, *address, *groupName;
@property NSInteger age;

+ (AddressContact *)addressContactWithName:(NSString *)aName
                                       sex:(NSString *)aSex
                                    number:(NSString *)aNumber
                                   address:(NSString *)aAddress
                                       age:(NSInteger)aAge;
- (id)initWithName:(NSString *)aName number:(NSString *)aNumber;

@end
