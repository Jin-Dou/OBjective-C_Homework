//
//  Manager.h
//  HomeworkNSDictionary
//
//  Created by lanouhn on 15/3/7.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>
@class AddressContact;
@interface Manager : NSObject
{
    NSMutableDictionary *dic;
}
@property NSMutableDictionary *dic;

//+ (Manager *)managerWithAlloc;
- (void)addContactWithName:(NSString *)aName
                       sex:(NSString *)aSex
                    number:(NSString *)aNumber
                   address:(NSString *)aAddress
                       age:(NSInteger)aAge;
@end
