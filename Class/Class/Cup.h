//
//  Cup.h
//  Day16_4W_Class
//
//  Created by lanouhn on 15/2/2.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cup : NSObject
{
    NSString * color;
    CGFloat capacity;
}
- (void)introduce;

- (void)setColor:(NSString *)aColor;

- (NSString *)color;

- (void)setCapacity:(CGFloat)aCapacity;

- (CGFloat)capacity;

@end
