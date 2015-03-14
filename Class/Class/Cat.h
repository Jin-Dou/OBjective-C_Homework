//
//  Cat.h
//  Day16_4W_Class
//
//  Created by lanouhn on 15/2/2.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cat : NSObject
{
    NSString * name;
    NSString * breed;//品种
}

//行为
- (void)sayHello;

//设置器
- (void)setName:(NSString *)aName;
- (void)setBreed:(NSString *)aBreed;

//访问器
- (NSString *)name;
- (NSString *)breed;

@end
