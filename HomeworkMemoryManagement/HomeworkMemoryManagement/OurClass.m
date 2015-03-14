//
//  OurClass.m
//  HomeworkMemoryManagement
//
//  Created by lanouhn on 15/3/12.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "OurClass.h"
#import "Teacher.h"
#import "Student.h"
@implementation OurClass


//lazyloading:懒加载
//- (NSMutableArray *)studentArray {
//    if (_stuArray == nil) {
//        self.stuArray = [NSMutableArray arrayWithCapacity:0];
//    }
//    return _stuArray;
//}

- (id)init {
    if (self = [super init]) {
        self.stuArray = [NSMutableArray arrayWithCapacity:0];
    }
    return self;
}



- (void)replaceTeacher:(Teacher *)aTeacher {
    [_teacher release];
    _teacher = [aTeacher retain];
}

- (void)addStudent:(Student *)aStudent {
    [_stuArray addObject:aStudent];
}

- (void)deleteStudent:(Student *)aStudent {
    [_stuArray removeObject:aStudent];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"teacher:%@  students:%@", _teacher, _stuArray];
}

- (void)dealloc
{
//    NSLog(@"OurClass is dealloc");
    [_teacher release];
    [_stuArray release];
    [super dealloc];
}
@end
