//
//  Teacher.m
//  HomeworkMemoryManagement
//
//  Created by lanouhn on 15/3/12.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "Teacher.h"
#import "Student.h"
#import "OurClass.h"
@implementation Teacher

+ (Teacher *)teacherWithName:(NSString *)aName
                         sex:(NSString *)aSex
                         age:(NSInteger)aAge {
    Teacher *teacher = [[Teacher alloc] initWithName:aName sex:aSex age:aAge];
    return [teacher autorelease];
}



- (void)exam:(NSString *)aExam class:(OurClass *)aClass {
    for (int i = 0; i < aClass.stuArray.count; i++) {
        CGFloat score = (arc4random() % (1000 - 600 + 1) + 600) / 10.0;
        [[aClass.stuArray[i] dic] setObject:[NSNumber numberWithFloat:score] forKey:aExam];
        NSLog(@"%@的%@考了%.1lf分", [aClass.stuArray[i] name], aExam, score);
    }
}
- (void)dealloc
{
    [super dealloc];
}
@end
