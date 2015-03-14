//
//  Teacher.h
//  Day16_4W_Class
//
//  Created by lanouhn on 15/2/2.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Teacher : NSObject
{
    @public
    NSString * nameOfTeacher;//名字
    NSString * genderOfTeacher;//性别
    NSInteger ageOfTeacher;//年龄
    NSString * course;//正在教的课程
}

- (void)teach;//讲课
- (id)giveHomework;//布置作业
- (void)checkHomework:(NSString *)homework;//验收作业
- (void)solveTheProblem;//解决问题
- (void)introduce;//自我介绍
@end
