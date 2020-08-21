//
//  NSObject+SWData.h
//  SWTools
//
//  Created by Snow WarLock on 2020/8/21.
//  Copyright © 2020 Snowxls. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (SWData)

/**
 字典转JsonData
 @param dic 字典模型
 */
+ (NSData *)getDataWithDictionary:(NSDictionary *)dic;

/**
 数组转JsonData
 @param arr 数组模型
 */
+ (NSData *)getDataWithArray:(NSArray *)arr;

/**
 set转JsonData
 @param set 数组模型
 */
+ (NSData *)getDataWithSet:(NSSet *)set;

@end

NS_ASSUME_NONNULL_END
