//
//  main.m
//  HomeworkBlock
//
//  Created by lanouhn on 15/3/9.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressPerson.h"
#import "AddressBook.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
//1.创建一个数组，初始化为@"123",@"21",@"33",@"69",@"108",@"256"。使用Block语法，进行数组的排序。并输出内容。
        
        
        NSArray *numArr = @[@"123", @"21", @"33", @"69", @"108", @"256"];
        NSArray *sortArray = [numArr sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        if ([obj1 intValue] < [obj2 intValue]) {
            return NSOrderedAscending;
        } else if ([obj1 intValue] > [obj2 intValue]) {
            return NSOrderedDescending;
        } else {
            return NSOrderedSame;
        }
    }];
        NSLog(@"%@", sortArray);
    

/*
 实现通讯录，需求：
 1、创建联系人类AddressPerson,联系人可以存储姓名、地址、邮箱、电话号码。
 2、创建通讯录AddressBook类。
 3、通讯录可以添加联系人。要求：验证邮箱格式是否正确，姓名不能为空。
 4、通讯录输出所有联系人。要求：按照姓名首字母分组，使用字典按首字母存储信息。
 5、可以按照姓名、电话号码进行联系人搜索。
 6、联系人按姓名排序，要求使用block。
 */
        
    NSArray *keyName = @[@"A", @"B", @"C", @"D", @"E", @"F", @"G", @"H", @"I", @"J", @"K", @"L", @"M", @"N", @"O", @"P", @"Q", @"R", @"S", @"T", @"U", @"V", @"W", @"X", @"Y", @"Z", @"*"];
        
        AddressPerson *p1 = [[AddressPerson alloc] initWithName:@"laowang" address:@"beijing" mail:@"1234324@qq.com" number:@"133545"];
        AddressPerson *p2 = [[AddressPerson alloc] initWithName:@"laoliu" address:@"henan" mail:@"12swe3@sina.com" number:@"6635"];
        AddressPerson *p3 = [[AddressPerson alloc] initWithName:@"dawang" address:@"beijing" mail:@"087324@qq.com" number:@"755445"];
        AddressPerson *p4 = [[AddressPerson alloc] initWithName:@"dabing" address:@"xingyang" mail:@"156689qq.com" number:@"13300998"];
        AddressPerson *p5 = [[AddressPerson alloc] initWithName:@"dagui" address:@"guangzhou" mail:@"24565755@qq.com" number:@"867895"];
        AddressPerson *p6 = [[AddressPerson alloc] initWithName:@"yuryey" address:@"beijing" mail:@"1234324@qq.com" number:@"133576845"];
        AddressPerson *p7 = [[AddressPerson alloc] initWithName:@"1laoniu" address:@"beijing" mail:@"1234324@tyy" number:@"13389545"];

        AddressBook *admin = [AddressBook addressBookWithKeyName:keyName];
//添加联系人
        [admin addPersonWithPerson:p1 keyName:keyName];
        [admin addPersonWithPerson:p2 keyName:keyName];
        [admin addPersonWithPerson:p3 keyName:keyName];
        [admin addPersonWithPerson:p4 keyName:keyName];
        [admin addPersonWithPerson:p5 keyName:keyName];
        [admin addPersonWithPerson:p6 keyName:keyName];
        [admin addPersonWithPerson:p7 keyName:keyName];
        
//输出所有联系人
        NSLog(@"%@", admin.dic);
    
//按照姓名进行搜索
    NSString *nameGive = @"dagui";
        NSString *key = [[nameGive substringToIndex:1] uppercaseString];
        NSArray *value = [admin.dic objectForKey:key];
        BOOL nameFlag = NO;
        for (AddressPerson *person in value) {
            if ([person.name isEqualToString:nameGive] ) {
                NSLog(@"%@", person);
                nameFlag = YES;
            }
        }
        if (nameFlag == NO) {
            NSLog(@"无此联系人!");
        }
//按照电话号码进行搜索
        NSString *numberGive = @"133545";
        BOOL numberFlag = NO;
        for (NSArray *array in [admin.dic allValues]) {
            for (AddressPerson *person in array) {
                if ([person.number isEqualToString:numberGive]) {
                    NSLog(@"%@", person);
                    numberFlag = YES;
                }
            }
        }
        if (numberFlag == NO) {
            NSLog(@"无此联系人!");
        }

    
    
    
    }
    return 0;
}
