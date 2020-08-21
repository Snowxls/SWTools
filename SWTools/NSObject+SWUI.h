//
//  NSObject+SWUI.h
//  SWTools
//
//  Created by Snow WarLock on 2020/8/21.
//  Copyright © 2020 Snowxls. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (SWUI)

/**
 设置基础配率宽高 默认宽高 2045*1536
*/
- (void)SW_SetBaseWidth:(CGFloat)width baseHeight:(CGFloat)height;

/**
 配率比获取宽
 */
- (CGFloat)SW_UIWidthBy:(CGFloat)width;

/**
 配率比获取高
 */
- (CGFloat)SW_UIHeightBy:(CGFloat)height;

@end

NS_ASSUME_NONNULL_END
