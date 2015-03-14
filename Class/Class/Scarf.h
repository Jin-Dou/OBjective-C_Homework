//
//  Scarf.h
//  Day16_4W_Class
//
//  Created by lanouhn on 15/2/2.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Scarf : NSObject
{
    NSString * cloth;
    NSInteger longth;
    NSString * color;
}
- (void)use;

- (void)setCloth:(NSString *)aCloth;

- (NSString *)cloth;

- (void)setLongth:(NSInteger)aLongth;

- (NSInteger)longth;

- (void)setColor:(NSString *)aColor;

- (NSString *)color;

@end
