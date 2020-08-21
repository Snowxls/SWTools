//
//  UILabel+SWTextSize.m
//  SWTools
//
//  Created by Snow WarLock on 2020/8/21.
//  Copyright © 2020 Snowxls. All rights reserved.
//

#import "UILabel+SWTextSize.h"

@implementation UILabel (SWTextSize)

- (CGSize)fixSingleTextSize {
    CGSize size = [self.text sizeWithAttributes:[NSDictionary dictionaryWithObjectsAndKeys:self.font,NSFontAttributeName,nil]];
    CGFloat x = self.frame.origin.x;
    CGFloat y = self.frame.origin.y;
    self.frame = CGRectMake(x, y, size.width, size.height);
    return size;
}

- (CGSize)fixMutableTextSize {
    CGSize size = [self.text boundingRectWithSize:CGSizeMake(self.frame.size.width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:self.font} context:nil].size;
    CGFloat x = self.frame.origin.x;
    CGFloat y = self.frame.origin.y;
    self.frame = CGRectMake(x, y, size.width, size.height);
    return size;
}

@end
