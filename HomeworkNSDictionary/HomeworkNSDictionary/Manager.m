//
//  Manager.m
//  HomeworkNSDictionary
//
//  Created by lanouhn on 15/3/7.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "Manager.h"
#import "AddressContact.h"

@implementation Manager

@synthesize dic;
//+ (Manager *)managerWithAlloc {
//    NSMutableDictionary *conDic = [[NSMutableDictionary alloc] initWithCapacity:0];
//    return conDic;
//}
- (void)addContactWithName:(NSString *)aName
                       sex:(NSString *)aSex
                    number:(NSString *)aNumber
                   address:(NSString *)aAddress
                       age:(NSInteger)aAge {
    AddressContact *AddCon1 = [AddressContact addressContactWithName:[aName capitalizedString] sex:aSex number:aNumber address:aAddress age:aAge];
    if ([AddCon1.name isEqualToString:@""] || [AddCon1.number isEqualToString:@""]) {
        NSLog(@"姓名或号码为空,添加失败!");
    } else {
        AddCon1.groupName = [AddCon1.name substringToIndex:1];
        //        NSLog(@"%@", AddCon1.groupName);
        NSMutableArray *conArray = [dic objectForKey:AddCon1.groupName];
        [conArray addObject:AddCon1];
        NSLog(@"%@添加成功", AddCon1.name);
    }
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@", dic];
}











@end
