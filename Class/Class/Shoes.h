//
//  shoes.h
//  Day16_4W_Class
//
//  Created by lanouhn on 15/2/2.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Shoes : NSObject
{
    NSString * color;
    NSString * type;
    NSInteger useTime;
}
- (void)introduce;

- (void)setColor:(NSString *)aColor;

- (NSString *)color;

- (void)setType:(NSString *)aType;

- (NSInteger)type;

- (void)setUseTime:(NSInteger)aUseTime;

- (NSInteger)useTime;

@end
