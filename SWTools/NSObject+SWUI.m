//
//  NSObject+SWUI.m
//  SWTools
//
//  Created by Snow WarLock on 2020/8/21.
//  Copyright © 2020 Snowxls. All rights reserved.
//

#import "NSObject+SWUI.h"
#import "UIScreen+SWScreen.h"

@implementation NSObject (SWUI)

CGFloat SWBaseWidth;
CGFloat SWBaseHeight;

- (void)SW_SetBaseWidth:(CGFloat)width baseHeight:(CGFloat)height {
    SWBaseWidth = width;
    SWBaseHeight = height;
}

- (CGFloat)SW_UIWidthBy:(CGFloat)width {
    if (SWBaseWidth > 0) {
        return [[UIScreen mainScreen] widthByScale:(width / SWBaseWidth)];
    } else {
        return [[UIScreen mainScreen] widthByScale:(width / 2048.0f)];
    }
}

- (CGFloat)SW_UIHeightBy:(CGFloat)height {
    if (SWBaseHeight > 0) {
        return [[UIScreen mainScreen] heightByScale:(height / SWBaseHeight)];
    } else {
        return [[UIScreen mainScreen] heightByScale:(height / 1536.0f)];
    }
}

@end
