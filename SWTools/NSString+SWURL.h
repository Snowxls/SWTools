//
//  NSString+SWURL.h
//  SWTools
//
//  Created by Snow WarLock on 2020/8/21.
//  Copyright © 2020 Snowxls. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (SWURL)

/**
 *  URLEncode
 */
- (NSString *)URLEncodedString;

/**
 *  URLDecode
 */
-(NSString *)URLDecodedString;

@end

NS_ASSUME_NONNULL_END
