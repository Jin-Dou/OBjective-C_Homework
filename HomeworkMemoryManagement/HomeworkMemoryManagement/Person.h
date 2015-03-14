//
//  Person.h
//  HomeworkMemoryManagement
//
//  Created by lanouhn on 15/3/12.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, retain) NSString *name, *sex;
@property (nonatomic, assign) NSInteger age;

- (id)initWithName:(NSString *)aName sex:(NSString *)aSex age:(NSInteger)aAge;


@end
