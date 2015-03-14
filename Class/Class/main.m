//
//  main.m
//  Day16_4W_Class
//
//  Created by lanouhn on 15/2/2.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LolClass.h"
#import "Teacher.h"
#import "Students.h"
#import "Mouse.h"
#import "Pen.h"
#import "Phone.h"
#import "Cat.h"
#import "Cup.h"
#import "Scarf.h"
#import "Shoes.h"
#import "Book.h"
#import "Calculator.h"
#import "Dog.h"

int main(int argc, const char * argv[]) {
    
    /*
    作业1
    定义10个类:
    1、声明:实例变量、方法。实现:初始化方法、自定义方法、自我
    介绍方法。(方法实现时,以NSLog输出即可)
    2、在main.m中分别创建10个类的对象。
    3、给对象的实例变量进行赋值、取值操作,执行方法。
   */
//    Mouse *mouse = [[Mouse alloc] init];
//    mouse->name = @"老鼠";
//    mouse->number = 1;
//    [mouse shout];
//    
//    Phone *phone = [[Phone alloc] init];
//    phone->type = @"魅族";
//    phone->color = @"白色";
//    [phone call:@"13592409317"];
//    [phone hangUp];
//    
//    Cup *cup = [[Cup alloc] init];
//    cup->color = @"透明";
//    cup->capacity = 500;
//    [cup introduce];
//    
//    Scarf *scarf = [[Scarf alloc] init];
//    scarf->color = @"黑白色";
//    scarf->cloth = @"仿毛呢";
//    scarf->longth = 1.5;
//    [scarf use];
//    
//    Pen *pen = [[Pen alloc] init];
//    pen->color = @"黑色";
//    pen->type = @"英雄";
//    pen->weight = 60;
//    [pen look];
//    
//    Shoes *shoes = [[Shoes alloc] init];
//    shoes->type = @"阿迪达斯";
//    shoes->color = @"棕色";
//    shoes->useTime = 3;
//    [shoes introduce];
//    
//    Dog *dog = [[Dog alloc] init];
//    dog->color = @"黄色";
//    dog->age = 3;
//    dog->name = @"哮天犬";
//    [dog sayHi];
//    
//    Book *book = [[Book alloc] init];
//    book->length = 80;
//    book->name = @"平凡的世界";
//    book->width = 60;
//    book->weight = 55;
//    [book read];
//    
//    Cat *cat = [[Cat alloc] init];
//    cat->name = @"米米";
//    cat->breed = @"美国短尾猫";
//    [cat sayHello];
//    
//    Calculator *calculator = [[Calculator alloc] init];
//    calculator->a = 1;
//    calculator->b = 2;
//    calculator->oper = @"+";
//    [calculator Count];
    /*
    ￼作业2
    1、早9:30开班仪式开始。(NSLog(@“开班仪式正式开始”))
    2、刘辉老师做自我介绍。
    3、三名学生做自我介绍。
    需求: (1)定义一个班级类(LoLClass)。
    实例变量:所属培训机构名称,班级名,班级人数、授课老师名字、开班日期。 方法:初始化(设置学校名字:蓝鸥)、集体活动、开班仪式。
    (2)定义一个老师类。 实例变量:名字、性别、年龄、正在教的课程。 方法:初始化、讲课、布置作业、验收作业、解决问题、自我介绍。
    (3)定义一个学生类。
    实例变量:名字、性别、年龄、学号。 方法:初始化、学习、做作业、提出问题、回答问题、自我介绍。
    注:方法以NSLog输出为主
    */
    
    LolClass *class = [[LolClass alloc] init];
    class->nameOfOrganization = @"蓝鸥3G学院";
    class->nameOfClass = @"ZZS150118";
    class->numberOfClass = 43;
    class->nameOfTeacher = @"刘辉";
    class->dateTime = @"2015-01-12";
    NSLog(@"\n%@郑州校区%@班开班仪式于%@正式开始, 下边请老师同学发言!", class->nameOfOrganization, class->nameOfClass, class->dateTime);

    
    Teacher *teacher1 = [[Teacher alloc] init];
    teacher1->nameOfTeacher = @"维克托";
    teacher1->genderOfTeacher = @"男";
    teacher1->ageOfTeacher = 32;
    teacher1->course = @"IOS编程开发";
    [teacher1 introduce];
    
    Students *stu1 = [[Students alloc] init];
    stu1->nameOfStudent = @"盲僧";
    stu1->genderOfStudent = @"男";
    stu1->ageOfStudent = 38;
    stu1->numberOfStudent = 11331412;
    [stu1 introduce];
    
    Students *stu2 = [[Students alloc] init];
    stu2->nameOfStudent = @"阿卡利";
    stu2->genderOfStudent = @"女";
    stu2->ageOfStudent = 28;
    stu2->numberOfStudent = 14343;
    [stu2 introduce];

    Students *stu3 = [[Students alloc] init];
    stu3->nameOfStudent = @"提莫";
    stu3->genderOfStudent = @"未知";
    stu3->ageOfStudent = 9;
    stu3->numberOfStudent = 41414;
    [stu3 introduce];

    
    
    
    
    
    
    
    
    
    return 0;
}
