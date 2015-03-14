//
//  Teacher.m
//  Day16_4W_Class
//
//  Created by lanouhn on 15/2/2.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher

//初始化
- (id)init {
    nameOfTeacher = @"刘辉";
    return self;
}

//讲课
- (void)teach {
    NSLog(@"\n上课教学");
}

//布置作业
- (id)giveHomework {
    NSString *homework = @"类的创建与调用";
    NSLog(@"\n布置%@作业", homework);
    return homework;
}

//验收作业
- (void)checkHomework:(NSString *)homework {
    if ([homework  isEqual: @"类的创建与调用"]) {
        NSLog(@"完成");
    } else {
        NSLog(@"未完成");
    }
}

//解决问题
- (void)solveTheProblem {
    NSLog(@"\n解决问题");
}

//自我介绍
- (void)introduce {
    NSLog(@"\n我叫%@, %@, %ld岁, 是教%@课的老师, 很高兴认识大家!", nameOfTeacher, genderOfTeacher, ageOfTeacher, course);
}

@end
