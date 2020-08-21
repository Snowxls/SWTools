//
//  UIView+SWViewTools.m
//  SWTools
//
//  Created by Snow WarLock on 2020/8/21.
//  Copyright © 2020 Snowxls. All rights reserved.
//

#import "UIView+SWViewTools.h"

@implementation UIView (SWViewTools)

- (CGFloat)left {
    return CGRectGetMinX(self.frame);
}

- (CGFloat)right {
    return CGRectGetMaxX(self.frame);
}

- (CGFloat)top {
    return CGRectGetMinY(self.frame);
}

- (CGFloat)bottom {
    return CGRectGetMaxY(self.frame);
}

- (CGFloat)rightMargin {
    return CGRectGetWidth(self.superview.frame) - CGRectGetMaxX(self.frame);
}

- (CGFloat)bottomMargin {
    return CGRectGetHeight(self.superview.frame) - CGRectGetMaxY(self.frame);
}

- (CGFloat)width {
    return CGRectGetWidth(self.frame);
}

- (CGFloat)height {
    return CGRectGetHeight(self.frame);
}

- (CGFloat)centerX {
    return self.center.x;
}

- (CGFloat)centerY {
    return self.center.y;
}

@end
