//
//  LolClass.h
//  Day16_4W_Class
//
//  Created by lanouhn on 15/2/2.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LolClass : NSObject
{
    @public
    NSString *nameOfOrganization;//所属培训机构名称
    NSString *nameOfClass;//班级名
    NSInteger numberOfClass;//班级人数
    NSString *nameOfTeacher;//授课老师名字
    NSString * dateTime;//开班日期
}
- (void)groupActivity;//集体活动
- (void)start;//开班仪式

@end
