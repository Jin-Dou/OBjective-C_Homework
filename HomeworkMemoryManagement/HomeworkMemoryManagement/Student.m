//
//  Student.m
//  HomeworkMemoryManagement
//
//  Created by lanouhn on 15/3/12.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "Student.h"

@implementation Student

+ (Student *)studentWithName:(NSString *)aName
                        age:(NSInteger)aAge
                        sex:(NSString *)aSex {
    Student *student = [[Student alloc] initWithName:aName age:aAge sex:aSex];
//    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
//    student.dic = dic;
//    [dic release];
    student.dic = [NSMutableDictionary dictionaryWithCapacity:0];
    return [student autorelease];
}

- (id)initWithName:(NSString *)aName
              age:(NSInteger)aAge
              sex:(NSString *)aSex {
    if (self = [super init]) {
        self.name = aName;
        self.sex = aSex;
        self.age = aAge;
    }
    return self;
}

- (void)compareWithAge:(Student *)aStudent {
    if (self.age > aStudent.age) {
        NSLog(@"%@的年龄比%@大", self.name, aStudent.name);
    } else if (self.age < aStudent.age) {
        NSLog(@"%@的年龄比%@大", aStudent.name, self.name);
    } else {
        NSLog(@"%@和%@同岁", self.name, aStudent.name);
    }
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"name:%@  sex:%@  age:%ld  dic:%@", self.name, self.sex, self.age, _dic];
}

- (void)dealloc
{
    [_dic release];
    [super dealloc];
    
}










@end
