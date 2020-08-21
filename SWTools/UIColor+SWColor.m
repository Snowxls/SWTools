//
//  UIColor+SWColor.m
//  SWTools
//
//  Created by Snow WarLock on 2020/8/21.
//  Copyright © 2020 Snowxls. All rights reserved.
//

#import "UIColor+SWColor.h"

@implementation UIColor (SWColor)

- (UIColor *)initWithARGB:(unsigned long)argb
{
    CGFloat a = (CGFloat)((argb & 0xff000000) >> 24) / 255.0f;
    CGFloat r = (CGFloat)((argb & 0x00ff0000) >> 16) / 255.0f;
    CGFloat g = (CGFloat)((argb & 0x0000ff00) >> 8 ) / 255.0f;
    CGFloat b = (CGFloat) (argb & 0x000000ff)        / 255.0f;
    return [self initWithRed:r green:g blue:b alpha:a];
}

- (UIColor *)initWithRGB:(unsigned long)rgb
{
    NSInteger argb = 0xff000000 | rgb;
    return [self initWithARGB:argb];
}

+ (UIColor *)colorWithARGB:(unsigned long)argb
{
    return [[UIColor alloc] initWithARGB:argb];
}

+ (UIColor *)colorWithRGB:(unsigned long)rgb
{
    return [[UIColor alloc] initWithRGB:rgb];
}

+ (UIColor *)colorWithHexString:(NSString *)stringToConvert {
    NSString *cString = [[stringToConvert stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    
    if ([cString length] < 8)
        return [UIColor whiteColor];
    if ([cString hasPrefix:@"#"])
        cString = [cString substringFromIndex:1];
    if ([cString length] != 8)
        return [UIColor whiteColor];
    
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *aString = [cString substringWithRange:range];
    
    range.location = 2;
    NSString *rString = [cString substringWithRange:range];
    
    range.location = 4;
    NSString *gString = [cString substringWithRange:range];
    
    range.location = 6;
    NSString *bString = [cString substringWithRange:range];
    
    
    unsigned int a, r, g, b;
    [[NSScanner scannerWithString:aString] scanHexInt:&a];
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f)
                           green:((float) g / 255.0f)
                            blue:((float) b / 255.0f)
                           alpha:((float) a / 255.0f)];
}

@end
