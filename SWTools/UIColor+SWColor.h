//
//  UIColor+SWColor.h
//  SWTools
//
//  Created by Snow WarLock on 2020/8/21.
//  Copyright © 2020 Snowxls. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (SWColor)

/**
 16进制ARGB转UIColor
 @param argb 16进制ARGB
 */
- (UIColor*) initWithARGB:(unsigned long)argb;

/**
 16进制RGB转UIColor
 @param rgb 16进制ARGB
 */
- (UIColor*) initWithRGB:(unsigned long)rgb;

/**
 16进制ARGB转UIColor
 @param argb 16进制ARGB
 */
+ (UIColor*) colorWithARGB:(unsigned long)argb;

/**
 16进制RGB转UIColor
 @param rgb 16进制ARGB
 */
+ (UIColor*) colorWithRGB:(unsigned long)rgb;

/**
色号文本转UIColor
@param stringToConvert 色号文本 ARGB
*/
+ (UIColor *)colorWithHexString:(NSString *)stringToConvert;

@end
