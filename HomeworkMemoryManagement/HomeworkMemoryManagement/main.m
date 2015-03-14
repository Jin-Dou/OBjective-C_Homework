//
//  main.m
//  HomeworkMemoryManagement
//
//  Created by lanouhn on 15/3/12.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"
#import "Teacher.h"
#import "OurClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student *s1 = [Student studentWithName:@"aaa" age:18 sex:@"m"];
        Student *s2 = [Student studentWithName:@"bbb" age:24 sex:@"f"];
        Student *s3 = [Student studentWithName:@"ccc" age:7 sex:@"m"];

        Teacher *t1 = [Teacher teacherWithName:@"Mr.Wang" sex:@"m" age:36];
        OurClass *class18 = [[OurClass alloc] init];
        [class18 addStudent:s1];
        [class18 addStudent:s2];
        [class18 addStudent:s3];
        class18.teacher = t1;
        [s1 release];
        [s2 release];
        [s3 release];
        [t1 exam:@"Path" class:class18];
        [t1 exam:@"English"  class:class18];
        [t1 exam:@"Chinese"  class:class18];
        [t1 exam:@"History"  class:class18];
        NSLog(@"%@ %@ %@", s1.dic, s2.dic, s3.dic);
        [t1 release];
        [class18 release];
    
    
    
    
    }
    return 0;
}

/*
 做一个班级信息程序，包含4个自定义的类：OurClass、Teacher、Student、Person。
 OurClass代表班级，里面包含一个Teacher对象，和一个NSMutableArray（用于存放多个Student对象）班级能够更换老师，能够增添学生和移除学生。
 Person类作为Student、Teacher类的父类，定义公共属性和方法。Student包含一个成绩属性（NSMutableDictionary类型），能存储课程名称和成绩，Student类还能比较年龄大小。Teacher类有一个exam:方法（参数是课程名称，内部是每个学生设置考试成绩，成绩随机）。
 
 
 */
