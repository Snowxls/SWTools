//
//  UITextView+SWRange.h
//  SWTools
//
//  Created by Snow WarLock on 2020/8/21.
//  Copyright © 2020 Snowxls. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITextView (SWRange)

/**
 获取光标位置
 */
- (NSRange)selectedRange;

/**
 设置光标的位置
 */
- (void)setSelectedRange:(NSRange)range;

@end

NS_ASSUME_NONNULL_END
