//
//  AddressContact.m
//  HomeworkNSDictionary
//
//  Created by lanouhn on 15/3/6.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "AddressContact.h"

@implementation AddressContact

@synthesize name, sex, number, address, groupName, age;
- (id)initWithName:(NSString *)aName number:(NSString *)aNumber {
    if (self = [super init]) {
        name = aName;
        number = aNumber;
    }
    return self;
}

+ (AddressContact *)addressContactWithName:(NSString *)aName
                                       sex:(NSString *)aSex
                                    number:(NSString *)aNumber
                                   address:(NSString *)aAddress
                                       age:(NSInteger)aAge {
    AddressContact *addCon = [[AddressContact alloc] initWithName:aName number:aNumber];
    addCon.sex = aSex;
    addCon.address = aAddress;
    addCon.age = aAge;
    return addCon;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"Name = %@  Sex = %@  Number = %@  Address = %@  GroupName = %@  Age = %ld", name, sex, number, address, groupName, age];
//    return [NSString stringWithFormat:@"姓名:%@\n性别:%@\n电话号码:%@\n地址:%@\n分组名称:%@\n年龄:%ld", name, sex, number, address, groupName, age];
}




@end
