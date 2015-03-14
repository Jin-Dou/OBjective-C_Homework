//
//  AddressBook.m
//  HomeworkBlock
//
//  Created by lanouhn on 15/3/9.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "AddressBook.h"
#import "AddressPerson.h"



@implementation AddressBook

@synthesize dic;
@synthesize nameArr;

+ (AddressBook *)addressBookWithKeyName:(NSArray *)keyName {
    AddressBook *admin = [[AddressBook alloc] init];
    admin.dic = [[NSMutableDictionary alloc] initWithCapacity:0];
    admin.nameArr = [[NSMutableArray alloc] initWithCapacity:0];
    
    for (NSString *k in keyName) {
        NSMutableArray *arr = [[NSMutableArray alloc] initWithCapacity:0];
        [admin.dic setObject:arr forKey:k];
    }
    return admin;
}

- (void)addPersonWithPerson:(AddressPerson *)aPerson keyName:(NSArray *)aKeyName  {
    BOOL f = NO;
    BOOL n = YES;
    if ([aPerson.mail containsString:@"@"]) {
        NSArray *a = [aPerson.mail componentsSeparatedByString:@"@"];
        if ([[a firstObject] length] != 0 && [[a lastObject] length] != 0) {
            f =YES;
        } else {
            NSLog(@"%@邮箱填写错误, 添加失败!", aPerson.name);
        }
    } else {
        NSLog(@"%@邮箱填写错误, 添加失败!", aPerson.name);
    }
    
//    NSMutableArray *nameArray = [dic ]
    if ([aPerson.name length] == 0) {
        n = NO;
        NSLog(@"姓名为空, 添加失败!");
    }
    if (n && f) {
        NSString *first = [[aPerson.name substringToIndex:1] uppercaseString];
        NSMutableArray *temp = [[NSMutableArray alloc] initWithCapacity:0];
        if ([aKeyName containsObject:first]) {
            temp = [dic objectForKey:first];
        } else {
            temp = [dic objectForKey:@"*"];
        }
        [temp addObject:aPerson];
        NSArray *sortArray = [temp sortedArrayUsingComparator:^NSComparisonResult(AddressPerson *obj1, AddressPerson *obj2) {
            return [obj1.name compare: obj2.name];
        }];
        NSMutableArray *sortArr = [[NSMutableArray alloc] initWithArray:sortArray];
        if ([aKeyName containsObject:first]) {
            [dic setObject:sortArr forKey:first];
        } else {
            [dic setObject:sortArr forKey:@"*"];
        }

        [dic setObject:sortArr forKey:first];
        NSLog(@"%@添加成功!", aPerson.name);
    }
}






@end
