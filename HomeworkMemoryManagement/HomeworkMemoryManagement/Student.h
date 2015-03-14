//
//  Student.h
//  HomeworkMemoryManagement
//
//  Created by lanouhn on 15/3/12.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "Person.h"


@interface Student : Person

@property (nonatomic, retain) NSMutableDictionary *dic;

+ (Student *)studentWithName:(NSString *)aName
                        age:(NSInteger)aAge
                        sex:(NSString *)aSex;

- (id)initWithName:(NSString *)aName
              age:(NSInteger)aAge
              sex:(NSString *)aSex;

- (void)compareWithAge:(Student *)aStudent;

@end
