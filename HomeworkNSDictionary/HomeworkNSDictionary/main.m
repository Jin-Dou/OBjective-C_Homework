//
//  main.m
//  HomeworkNSDictionary
//
//  Created by lanouhn on 15/3/6.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Color.h"
#import "AddressContact.h"
#import "Manager.h"




int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        //导入文件成字符串
        NSString *string = [[NSString alloc] initWithContentsOfFile:@"/Users/lanouhn/Desktop/代码史诗/作业/HomeworkNSDictionary/HomeworkNSDictionary/crayons.txt" encoding:NSUTF8StringEncoding error:nil];
//        NSLog(@"%@", string);
        //通过换行符对字符串进行分割成不同的小字符串,返回一个数组
        NSArray *array1 = [string componentsSeparatedByString:@"\n"];
        //建立一个可变字典
        NSMutableDictionary *mDic = [[NSMutableDictionary alloc] initWithCapacity:0];
        //通过循环,对各个小字符串进行前后分割, 用@" #"分开, 返回一个有两个元素的数组,将数组的第一个元素赋给key, 第二个赋给value
        for (int i = 0; i < array1.count; i++) {
            NSArray *arrTemp = [[array1 objectAtIndex:i] componentsSeparatedByString:@" #"];
            [mDic setObject:[arrTemp lastObject]  forKey:[arrTemp firstObject]];
        }
        
        //用数组接收所有的key键
        NSArray *keyArray = [mDic allKeys];
        
        //排序后的key键数组
        NSArray *keyArray1 = [keyArray sortedArrayUsingSelector:@selector(compare:)];
//        NSLog(@"%@", keyArray1);
        //建立一个value值可变数组
        NSMutableArray *valueArray = [[NSMutableArray alloc] initWithCapacity:0];
        
        //通过循环遍历排序后的key键, 并将对应的value值存到可变数组中, 并打印
        for (int i = 0; i < keyArray1.count; i++) {
            [valueArray addObject:[mDic objectForKey:keyArray1[i]]];
//            NSLog(@"%@ = %@", keyArray1[i], valueArray[i]);
        }
        
        //建立一个key键数组, 包含26个字母
        NSArray *groupArray = [NSArray arrayWithObjects:@"A", @"B", @"C", @"D", @"E", @"F", @"G", @"H", @"I", @"J", @"K", @"L", @"M", @"N", @"O", @"P", @"Q", @"R", @"S", @"T", @"U", @"V", @"W", @"X", @"Y", @"Z", nil];

        //newDic是一个新的字典管理颜色
        NSMutableDictionary *newDic = [[NSMutableDictionary alloc] initWithCapacity:0];
        
        //遍历key键数组
        for (NSString *group in groupArray) {
            NSMutableArray *arr = [NSMutableArray arrayWithCapacity:0];
            //将26个英文字母作为key键, 可变数组为value值, 添加入新的字典中
            [newDic setObject:arr forKey:group];
            //遍历原字典的key键
            for (NSString *keyTemp in mDic) {
                //取出key键对应的value值
                NSString *valueTemp = [mDic objectForKey:keyTemp];
                //建立一个对象, 将key键作为name, value值为colorValue
                Color *color = [[Color alloc] initWithName:keyTemp colorValue:valueTemp];
                //取出对象的name的第一个字母(都是大写, 不再修改大小写)
                NSString *cName = [[color.name substringToIndex:1] uppercaseString];
                //如果对象的name的第一个字母与大字典newDic的键group相同, 就将对象放到对应group键的value值中, 即数组arr中
                if ([cName isEqualToString:group]) {
                    [arr addObject:color];
                }
            }
        }
//        NSLog(@"%@", newDic);

///////////////////////////////////////////////////////////////
        
        Manager *user = [[Manager alloc] init];
        NSMutableDictionary *conDic = [[NSMutableDictionary alloc] initWithCapacity:0];
        user.dic = conDic;
        NSArray *groupArr = [NSArray arrayWithObjects:@"A", @"B", @"C", @"D", @"E", @"F", @"G", @"H", @"I", @"J", @"K", @"L", @"M", @"N", @"O", @"P", @"Q", @"R", @"S", @"T", @"U", @"V", @"W", @"X", @"Y", @"Z", nil];

        for (NSString *group in groupArr) {
            NSMutableArray *conArray = [[NSMutableArray alloc] initWithCapacity:0];
            [conDic setObject:conArray forKey:group];
        }
    
    //添加
        [user addContactWithName:@"Wangmingwen" sex:@"m" number:@"123345" address:@"GaoXinQu" age:23];
        [user addContactWithName:@"Wangxiaohong" sex:@"f" number:@"568345" address:@"GaoXinQu" age:22];
        [user addContactWithName:@"Wangmingyang" sex:@"m" number:@"753345" address:@"GaoXinQu" age:24];
        [user addContactWithName:@"Wanghuisi" sex:@"f" number:@"97345" address:@"GaoXinQu" age:18];
        [user addContactWithName:@"" sex:@"f" number:@"6123345" address:@"GaoXinQu" age:30];

        
//        for (NSString *key in conDic) {
//            NSLog(@"%@", [conDic objectForKey:key]);
//        }
        NSLog(@"%@", conDic);
        /*
//4.获取某个分组下所有联系人, 并按照姓名升序排列
        NSString *groupTest = @"W";
        NSMutableArray *sortByNameArray = [conDic objectForKey:groupTest];
        BOOL flag = YES;
        for (int i = 0; i <sortByNameArray.count - 1 && flag; i++) {
            flag = NO;
            for (int j = 0; j <sortByNameArray.count - i - 1; j++) {
                if ([[sortByNameArray[j] name] compare:[sortByNameArray[j + 1] name]] == 1) {
                    [sortByNameArray exchangeObjectAtIndex:j withObjectAtIndex:j + 1];
                    flag = YES;
                }
            }
        }
//        NSLog(@"%@", conDic);
        
//5.电话号码查找
        NSString *numberTest = @"97345";
        BOOL f = NO;
        for (NSArray *a in [conDic allValues]) {
            for (AddressContact *add in a) {
                if ([add.number isEqualToString:numberTest]) {
                    NSLog(@"\n%@", add);
                    f = YES;
                }
            }
        }
        if (!f) {
            NSLog(@"不存在此号码!");
        }
//6.获取女性联系人, 按年龄降序
        
        NSMutableArray *sexF = [[NSMutableArray alloc] initWithCapacity:0];
        for (NSMutableArray *s in [conDic allValues]) {
            for (AddressContact *a in s) {
                if ([a.sex isEqualToString:@"f"]) {
                    [sexF addObject:a];
                }
            }
        }
        //打印
        //        for (AddressContact *a in sexF) {
        //            NSLog(@"%@", a);
        //        }
        BOOL flag1 = YES;
        for (int i = 0; i < sexF.count - 1 && flag1; i++) {
            flag1 = NO;
            for (int j = 0; j <sexF.count - i - 1; j++) {
                if ([sexF[j] age] < [sexF[j + 1] age]) {
                    [sexF exchangeObjectAtIndex:j withObjectAtIndex:j + 1];
                    flag1 = YES;
                }
            }
        }
        //打印
        for (AddressContact *a in sexF) {
            NSLog(@"%@", a);
        }

//7.根据姓名删除联系人
        NSString *nameTest = @"Wangmingwen";
        
        NSString *nameGroup = [nameTest substringToIndex:1];
        
        NSMutableArray *values = [conDic objectForKey:nameGroup];
        BOOL flag2 = NO;
        for (int i = 0; i < values.count; i++) {
            AddressContact *aCon = [values objectAtIndex:i];
            if ([aCon.name isEqualToString:nameTest]) {
                [values removeObject:aCon];
                NSLog(@"已删除姓名为%@的联系人", aCon.name);
                [conDic setObject:values forKey:nameGroup];
                flag2 = YES;
            }
        }
        if (!f) {
            NSLog(@"不存在此号码!");
        }
        
    //删除某个分组的所有联系人
        NSString *groupTest1 = @"W";
        NSMutableArray *newArray = [[NSMutableArray alloc] initWithCapacity:0];
        [conDic setValue:newArray forKey:groupTest1];
        NSLog(@"%@", user);
        
        */
        
                
    
    
    
    
    }
    return 0;
}
