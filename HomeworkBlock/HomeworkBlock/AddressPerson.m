//
//  AddressPerson.m
//  HomeworkBlock
//
//  Created by lanouhn on 15/3/9.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "AddressPerson.h"

@implementation AddressPerson

@synthesize name, address, mail, number;

- (id)initWithName:(NSString *)aName address:(NSString *)aAddress mail:(NSString *)aMail number:(NSString *)aNumber {
    if (self = [super init]) {
        name = aName;
        address = aAddress;
        mail = aMail;
        number = aNumber;
    }
    return self;
}


- (NSString *)description {
    return [NSString stringWithFormat:@"name:%@  address:%@  mail:%@  number:%@", name, address, mail, number];
}
@end
