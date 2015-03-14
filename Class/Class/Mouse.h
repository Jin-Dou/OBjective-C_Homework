//
//  Mouse.h
//  Day16_4W_Class
//
//  Created by lanouhn on 15/2/2.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Mouse : NSObject
{
    NSString * name;
    NSInteger number;
    
}

- (void)shout;

- (void)setName:(NSString *)aName;

- (NSString *)name;

- (void)setNumber:(NSInteger)aNumber;

- (NSInteger)number;
@end
