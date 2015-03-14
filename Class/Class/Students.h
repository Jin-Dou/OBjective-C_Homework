//
//  Students.h
//  Day16_4W_Class
//
//  Created by lanouhn on 15/2/2.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Students : NSObject
{
    @public
    NSString * nameOfStudent;//名字
    NSString * genderOfStudent;//性别
    NSInteger ageOfStudent;//年龄
    NSInteger numberOfStudent;//学号
}
- (void)study;//学习
- (void)doingHomeWork;//做作业
- (void)giveProblem:(NSString *)problem;//提出问题
- (void)answerTheQuestion;//回答问题
- (void)introduce;//自我介绍
@end
