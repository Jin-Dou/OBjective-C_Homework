//
//  Color.m
//  HomeworkNSDictionary
//
//  Created by lanouhn on 15/3/6.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "Color.h"

@implementation Color


@synthesize name, colorValue;

- (id)initWithName:(NSString *)aName colorValue:(NSString *)aColorValue {
    if (self = [super init]) {
        name = aName;
        colorValue = aColorValue;
    }
    return self;
}

+ (Color *)colorWithName:(NSString *)aName colorValue:(NSString *)aColorValue {
    Color *color = [[Color alloc] init];
    color.name = aName;
    color.colorValue = aColorValue;
    return color;
}
- (NSString *)description {
    return [NSString stringWithFormat:@"%@ = %@", name, colorValue];
}
@end
