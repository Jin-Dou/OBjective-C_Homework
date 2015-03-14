//
//  main.m
//  HomeworkNSDate
//
//  Created by lanouhn on 15/3/10.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSMutableArray+convert.h"
#import "NSString+initWithDate.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      //给NSMutableArray添加convert方法，实现数组倒序。
    
        NSMutableArray *arr = [[NSMutableArray alloc] initWithCapacity:0];
        NSArray *array = @[@"abc", @"bcd", @"cde", @"def", @"efg", @"fgh"];
        [arr addObjectsFromArray:array];
        NSLog(@"%@", [arr sortInvertedOrder]);
        //给NSString添加初始化⽅方法 initWithDate: forFormat:。
        //第⼀个参数是NSDate对象,第⼆个参数是NSString对象,第⼆个参数⽤用来指定NSDateFormatter的format。
        NSString *a = @"gg";
        a = [a initWithDate:[NSDate date] forFormat:@"yyyy年MM月d日 HH:m:ss"];
        NSLog(@"%@", a);
    
    
    
    
    }
    return 0;
}
