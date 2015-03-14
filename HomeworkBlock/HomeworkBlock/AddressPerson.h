//
//  AddressPerson.h
//  HomeworkBlock
//
//  Created by lanouhn on 15/3/9.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressPerson : NSObject
{
    NSString *name;
    NSString *address;
    NSString *mail;
    NSString *number;
}

@property NSString *name, *address, *mail, *number;

- (id)initWithName:(NSString *)aName address:(NSString *)aAddress mail:(NSString *)aMail number:(NSString *)aNumber;






@end
