//
//  AddressBook.h
//  HomeworkBlock
//
//  Created by lanouhn on 15/3/9.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>
@class AddressPerson;

@interface AddressBook : NSObject
{
    NSMutableDictionary *dic;
    NSMutableArray *nameArr;
}
@property NSMutableDictionary *dic;
@property NSMutableArray *nameArr;

+ (AddressBook *)addressBookWithKeyName:(NSArray *)keyName;

- (void)addPersonWithPerson:(AddressPerson *)aPerson keyName:(NSArray *)aKeyName;

//- (void)printPersonWithKeyName:(NSArray *)keyName;




@end
