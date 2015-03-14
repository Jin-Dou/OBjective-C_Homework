//
//  Phone.h
//  Day16_4W_Class
//
//  Created by lanouhn on 15/2/2.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Phone : NSObject
{
    NSString * type;
    NSString * color;
}
- (void)call:(NSString *)number;
- (void)hangUp;

- (void)setType:(NSString *)aType;

- (NSString *)type;

- (void)setColor:(NSString *)aColor;

- (NSString *)color;

@end
