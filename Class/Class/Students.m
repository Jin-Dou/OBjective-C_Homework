//
//  Students.m
//  Day16_4W_Class
//
//  Created by lanouhn on 15/2/2.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "Students.h"

@implementation Students

//初始化
- (id)init {
    nameOfStudent = @"张三";
    return self;
}

//学习
- (void)study {
    NSLog(@"\n努力学习");
}

//做作业
- (void)doingHomeWork {
    NSLog(@"\n做作业ing...");
}

//提出问题
- (void)giveProblem:(NSString *)problem {
    NSLog(@"\n问题:%@", problem);
}

//回答问题
- (void)answerTheQuestion; {
    NSLog(@"\n想要知道答案,晚上来我办公室");
}

//自我介绍
- (void)introduce {
    NSLog(@"\n我叫%@, 性别%@, 年龄%ld, 学号是%ld", nameOfStudent, genderOfStudent, ageOfStudent, numberOfStudent);
}

@end
