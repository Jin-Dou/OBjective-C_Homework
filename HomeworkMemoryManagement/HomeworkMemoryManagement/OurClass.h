//
//  OurClass.h
//  HomeworkMemoryManagement
//
//  Created by lanouhn on 15/3/12.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Teacher, Student;
@interface OurClass : NSObject

@property (nonatomic, retain)Teacher *teacher;
@property (nonatomic, retain) NSMutableArray *stuArray;


- (void)replaceTeacher:(Teacher *)aTeacher;

- (void)addStudent:(Student *)aStudent;

- (void)deleteStudent:(Student *)aStudent;



@end
