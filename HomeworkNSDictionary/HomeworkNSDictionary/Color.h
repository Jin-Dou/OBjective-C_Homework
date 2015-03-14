//
//  Color.h
//  HomeworkNSDictionary
//
//  Created by lanouhn on 15/3/6.
//  Copyright (c) 2015年 Jin. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 /作业1
 处理工程文件crayons.txt中的文本信息，文本内容是关于颜色的，每行都是一个颜色的信息，Almond #EED9C4，前一个字符串是颜色的名称，后一个字符串是颜色的16进制色值，处理文本完成如下需求
 1、使用字典管理所有的颜色，即字典中存储的是多个键值对，颜色名称为key，16进制颜色值（不带#）是value。
 2、取出所有的key，升序排列。
 3、取出所有的value，按照排序后的key排列。
 4、使用一个新的字典管理颜色，对颜色进行分类管理，即：“A”，“B”，“C”…即这个字典包含多个键值对，key是26个字母，value是数组，数组里存放的是Color对象（包含name和colorValue）。需要自己创建Color类。
 //作业2
 实现中等难度通讯录。需求：
 1、定义联系人类AddressContact。实例变量：姓名（拼音，首字母大写）、性别、电话号码、住址、分组名称、年龄。方法：自定义初始化方法（姓名、电话号码）、显示联系人信息
 2、在main.m中定义字典，分组管理所有联系人。分组名为26个大写的英文字母。
 3、可以添加联系人对象，如果姓名或电话号码为空，添加失败。添加联系人到匹配的分组。
 //4、获取某个分组名称下所有联系人，并且按照姓名升序排列。
 5、从通讯录中根据电话号码搜索联系人。
 6、获取所有女性的联系人，并且按照年龄的降序排列。
 7、根据姓名删除某个联系人。
 8、删除某个分组的全部联系人。
 
 
 */
@interface Color : NSObject
{
    NSString *name;
    NSString *colorValue;
}
@property NSString *name, *colorValue;

+ (Color *)colorWithName:(NSString *)aName colorValue:(NSString *)aColorValue;
- (id)initWithName:(NSString *)aName colorValue:(NSString *)aColorValue;
@end
