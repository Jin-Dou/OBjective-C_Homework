//
//  main.m
//  NSStringHomeworks
//
//  Created by lanouhn on 15/3/5.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"
#import "Person.h"
#import "BookManager.h"





int main(int argc, const char * argv[]) {
    @autoreleasepool {
    /*
     作业1
     截取字符串“20|http://www.baidu.com”中 “|” 前面和后面的字符串，并输出。
     将“文艺青年”改成“213青年”。
     */
        NSString *string1 =@"20|http://www.baidu.com";
        NSString *s1 = [string1 substringToIndex:2];
        NSLog(@"前边的字符串是:%@", s1);
        NSString *s2 = [string1 substringFromIndex:3];
        NSLog(@"后边的字符串是:%@", s2);
        
        NSArray *subStrings = [string1 componentsSeparatedByString:@"|"];
        NSLog(@"%@", subStrings);
        NSLog(@"%@", [subStrings firstObject]);
        NSLog(@"%@", [subStrings lastObject]);
        
        NSString *string2 = @"文艺青年";
        NSLog(@"修改前:%@", string2);
        NSString *s3 = [string2 stringByReplacingOccurrencesOfString:@"文艺" withString:@"213"];
        NSLog(@"修改后:%@", s3);
        
    /*
     作业2
     图书管理
     1、使用数组管理所有书籍。
     2、数组可以添加、删除。
     3、可以从数组根据书名查找书籍，并修改书籍的价格。
     4、展示所有书籍清单（书名）。
     */
        Book *book1 = [[Book alloc] initWithName:@"平凡的世界" price:34.5];

        Book *book2 = [[Book alloc] initWithName:@"钢铁是怎样炼成的" price:20.5];

        Book *book3 = [[Book alloc] initWithName:@"诛仙" price:10.5];

        Book *book4 = [[Book alloc] initWithName:@"战争与和平" price:50.5];
        
        BookManager *array1 = [[BookManager alloc] init];
//        NSArray *bokArray = [[NSArray alloc] initWithObjects:book1, book2, book3, book4, nil];
        
        [array1 addBook:book1];
        [array1 addBook:book2];
        [array1 addBook:book3];
        [array1 addBook:book4];

        NSLog(@"\n===============所有书单:=================\n");
        [array1 print];
//        NSLog(@"%@", array1);
//添加书籍
        Book *book5 = [[Book alloc] initWithName:@"哈利波特和凤凰社" price:80];
        [array1 addBook:book5];
        NSLog(@"\n添加书籍:\n");
        [array1 print];
        //如果数组不初始化,不能使用
        NSMutableArray *bookArray;
        [bookArray addObject:book1];
//删除书籍
        [array1->books removeObject:book5];
        NSLog(@"\n删除书籍\n");
        [array1 print];
        
        
//3、从数组根据书名查找书籍，并修改书籍的价格。
        NSString *bookName = @"战争与和平";
        NSInteger pri = 2;
        [array1 findInName:bookName price:pri];
        
//4、展示所有书籍清单（书名）。
        [array1 print];
        
//     作业3
//     实现简单通讯录操作。
//     1、定义联系人类Person。实例变量：姓名、性别、电话号码、住址、分组名称。方法：自定义初始化方法（姓名、电话号码）、显示联系人信息
//     2、在main.m中定义可变数组，管理所有联系人。可以添加新联系人对象，如果姓名或电话号码为空，打印添加失败。
//     3、获取某个分组下的所有联系人。
//     4、根据电话号码搜索联系人。
//     5、获取所有女性联系人
//     6、根据姓名删除联系人
//     7、删除某个分组全部联系人 
//     8、展示通讯录中所有联系人
     
        Person *p1 = [[Person alloc] initWithName:@"Janny" number:@"123456" sex:@"男" address:@"郑州" arrayName:@"亲人"];
        Person *p2 = [[Person alloc] initWithName:@"Lilei" number:@"8745546" sex:@"女" address:@"郑州" arrayName:@"同学"];
        Person *p3 = [[Person alloc] initWithName:@"Danny" number:@"145487316" sex:@"男" address:@"广州" arrayName:@"亲人"];
        Person *p4 = [[Person alloc] initWithName:@"HanMeiMei" number:@"48431236" sex:@"男" address:@"新加坡" arrayName:@"亲人"];
        Person *p5 = [[Person alloc] initWithName:@"DaTou" number:@"48431356" sex:@"女" address:@"新乡" arrayName:@"同学"];

        NSMutableArray *array2 = [[NSMutableArray alloc] initWithCapacity:0];
        NSArray *arr1 = [NSArray arrayWithObjects:p1, p2, p3, p4, p5, nil];
        [array2 addObjectsFromArray:arr1];
//2.添加联系人
        NSLog(@"\n2.获取某个分组下的所有联系人\n");
        Person *pp = [[Person alloc] initWithName:@"qwqw" number:@"1231"];
        pp.sex = @"";
        pp.address = @"";
        pp.arrayName = @"";
        if ([pp.name isEqualToString:@""] || [pp.number isEqualToString:@""]) {
            
            NSLog(@"姓名或号码为空,添加失败!");
        } else {
            [array2 addObject:pp];
            NSLog(@"添加成功");
            NSLog(@"%@", [array2 lastObject]);
        }
        
//3.获取某个分组下的所有联系人
        NSLog(@"3.获取某个分组下的所有联系人\n");
        NSString *arrName = @"亲人";
        NSInteger b = 0;
        for (Person *temp in array2) {
            if ([temp.arrayName isEqualToString:arrName]) {
                NSLog(@"%@", temp);
                b = 1;
            }
        }
        if (b == 0) {
            NSLog(@"没有'%@'此分组", arrName);
        }
//4、根据电话号码搜索联系人。
        NSLog(@"4、根据电话号码搜索联系人\n");
        NSString *n = @"123456";
        NSInteger c = 0;
        for (Person *temp in array2) {
            if ([temp.number isEqualToString:n]) {
                NSLog(@"%@", temp);
                c = 1;
            }
        }
        if (c == 0) {
            NSLog(@"\n没有'%@'此号码", n);
        }

        
//5、获取所有女性联系人
        NSLog(@"5、获取所有女性联系人\n");
        NSString *sexTest = @"女";
        NSInteger d = 0;
        for (Person *temp in array2) {
            if ([temp.sex isEqualToString:sexTest]) {
                NSLog(@"%@", temp);
                d = 1;
            }
        }
        if (d == 0) {
            NSLog(@"没有'%@'此性别联系人", sexTest);
        }

        
//6、根据姓名删除联系人
        NSLog(@"\n6、根据姓名删除联系人\n");
        NSString *nameDel = @"DaTou";
        NSInteger e = 0;
        for (int i = 0; i < array2.count; i++) {
            Person *temp = [array2 objectAtIndex:i];
            if ([temp.name isEqualToString:nameDel]) {
                [array2 removeObject:temp];
                NSLog(@"已删除姓名为%@的联系人", nameDel);
                e++;
            }
        }
        if (e == 0) {
            NSLog(@"没有'%@'此姓名的联系人", nameDel);
        }

//        for (Person *temp in array2) {
//            if ([temp.name isEqualToString:nameDel]) {
//                [array2 removeObject:temp];
//                NSLog(@"已删除姓名为%@的联系人", nameDel);
//                e++;
//            }
//        }
//        if (e == 0) {
//            NSLog(@"没有'%@'此姓名的联系人", nameDel);
//        }
//        for (NSInteger i = 0; i < [array2 count]; i++) {
//            Person *p = [array2 objectAtIndex:i];
//            NSString *n = p.name;
//            if ([n isEqualToString:nameDel]) {
//                [array2 removeObjectAtIndex:i];
//                NSLog(@"已删除姓名为%@的联系人", nameDel);
//                i--;
//                e++;
//            }
//        }
//        if (e == 0) {
//            NSLog(@"没有'%@'此姓名的联系人", nameDel);
//        }
//        for (int i = 0; i < array2.count; i++) {
//            NSLog(@"%@", [array2 objectAtIndex:i]);
//        }
    
//7、删除某个分组全部联系人

//        NSString *arrName1 = @"亲人";
//        static NSInteger f = 0;
//        for (Person *temp in array2) {
//            if ([temp.arrayName isEqualToString:arrName1]) {
//                [array2 removeObject:temp];
//                f++;
//            }
//            NSLog(@"已删除%@分组所有联系人", arrName1);
//        }
//        if (b == 0) {
//            NSLog(@"没有'%@'此分组", arrName1);
//        }

        NSLog(@"\n7、删除某个分组全部联系人\n");
        NSString *arrName1 = @"亲人";
        NSInteger m = 0;
        for (int i = 0; i < array2.count; i++) {
            Person *t = [array2 objectAtIndex:i];
            if ([t.arrayName isEqualToString:arrName1]) {
                [array2 removeObjectAtIndex:i];
                i--;
                m++;
            }
        }
        if (m == 0) {
            NSLog(@"没有'%@'此分组的联系人", arrName1);
        }
        NSLog(@"已删除%ld个分组为'%@'的联系人", m, arrName1);
        
        
        
        
        
        
//8、展示通讯录中所有联系人
        NSLog(@"\n8、展示通讯录中所有联系人\n");
        for (Person *temp in array2) {
            NSLog(@"%@", temp);
        }
       
    
    
    
    
    
    
    
    
    
    
    
    
    }
    return 0;
}
