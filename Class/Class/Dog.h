//
//  Dog.h
//  Day16_4W_Class
//
//  Created by lanouhn on 15/2/2.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dog : NSObject
{
    NSString * name;
    NSInteger age;
    NSString * color;
}

//行为
- (void)sayHi;

//设置器
- (void)setName:(NSString *)aName;
- (void)setAge:(NSInteger)aAge;
- (void)setColor:(NSString *)aColor;

//访问器
- (NSString *)name;
- (NSInteger)age;
- (NSString *)color;

@end

