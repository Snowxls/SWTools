//
//  SWTools.h
//  SWTools
//
//  Created by Snow WarLock on 2020/8/21.
//  Copyright © 2020 Snowxls. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIColor+SWColor.h"
#import "UILabel+SWTextSize.h"
#import "NSObject+SWData.h"
#import "UITextView+SWRange.h"
#import "NSObject+SWUI.h"
#import "UIScreen+SWScreen.h"
#import "UIView+SWViewTools.h"
#import "UIImageView+SWRadius.h"

@interface SWTools : NSObject

/**
 获取单例
 */
+(id)sharedInstance;

/**
 获取路径文件md5值
 @param path 文件路径
 */
+ (NSString *)getFileMD5WithPath:(NSString *)path;

/**
 获取输入的md5值
 @param input 输入内容
 */
+ (NSString *)md5:(NSString *)input;

/**
 时间转long数据
 @param datetime 输入时间
 */
+ (long long)getDateTimeTOMilliSeconds:(NSDate *)datetime;

/**
 Json转String
 */
+ (NSString *)convertToJsonData:(id)dict;

/**
 Json转字典 正常规格JsonString
 */
+ (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString;

/**
 Json转数组
 */
+ (NSArray *)arrayWithJsonString:(NSString *)jsonString;

/**
 获取设备Id
 */
+ (NSString *)getDeviceId;


/**
 Json转字典 JsonString需要处理'[' ']'
 */
+ (NSDictionary *)dictionaryUnSymbolWithJsonString:(NSString *)jsonString;

/**
 NSDate转String yyyy-MM-dd HH:mm:ss
 */
+ (NSString*)getDateStringWithDate:(NSDate*)date;

/**
 NSDate转String yyyy-MM-dd
 */
+ (NSString*)getDayStringWithDate:(NSDate*)date;

/**
 获取当前时间转的String
 */
+ (NSString*)getIdFromDate;

/**
 时间比较
 */
+ (int)compareDate:(NSString*)date01 withDate:(NSString*)date02;

@end
