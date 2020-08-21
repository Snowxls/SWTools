//
//  UILabel+SWTextSize.h
//  SWTools
//
//  Created by Snow WarLock on 2020/8/21.
//  Copyright © 2020 Snowxls. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (SWTextSize)

/**
 *  获取单行Size
 */
- (CGSize)fixSingleTextSize;

/**
 *  获取多行Size
 */
- (CGSize)fixMutableTextSize;

@end

NS_ASSUME_NONNULL_END
