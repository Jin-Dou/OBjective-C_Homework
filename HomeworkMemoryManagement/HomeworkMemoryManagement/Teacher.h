//
//  Teacher.h
//  HomeworkMemoryManagement
//
//  Created by lanouhn on 15/3/12.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "Person.h"
@class OurClass;
@interface Teacher : Person

//@property (nonatomic, retain) NSArray *courseArray;
//@property (nonatomic, retain) NSMutableArray *stuArray;
//@property (nonatomic, retain) OurClass *classStu;

+ (Teacher *)teacherWithName:(NSString *)aName
                         sex:(NSString *)aSex
                         age:(NSInteger)aAge;


- (void)exam:(NSString *)aExam class:(OurClass *)aClass;


@end
