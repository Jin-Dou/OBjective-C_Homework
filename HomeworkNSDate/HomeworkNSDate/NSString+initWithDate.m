//
//  NSString+initWithDate.m
//  HomeworkNSDate
//
//  Created by lanouhn on 15/3/10.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import "NSString+initWithDate.h"

@implementation NSString (initWithDate)


- (id)initWithDate:(NSDate *)aDate forFormat:(NSString *)aString {
    if (self = [super init]) {
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:aString];
        self = [formatter stringFromDate:aDate];
    }
    return self;
}
@end
