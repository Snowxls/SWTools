//
//  NSObject+SWData.m
//  SWTools
//
//  Created by Snow WarLock on 2020/8/21.
//  Copyright © 2020 Snowxls. All rights reserved.
//

#import "NSObject+SWData.h"

@implementation NSObject (SWData)

+ (NSData *)getDataWithDictionary:(NSDictionary *)dic {
    if (dic == nil) {
        return nil;
    }
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:0 error:&error];
    NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    return [jsonString dataUsingEncoding:NSUTF8StringEncoding];
}

+ (NSData *)getDataWithArray:(NSArray *)arr {
    NSString *jsonString = @"[";
    for (NSString *s in arr) {
        jsonString = [jsonString stringByAppendingString:s];
        jsonString = [jsonString stringByAppendingString:@","];
    }
    jsonString = [jsonString substringToIndex:([jsonString length]-1)];
    jsonString = [jsonString stringByAppendingString:@"]"];
    return [jsonString dataUsingEncoding:NSUTF8StringEncoding];
}

+ (NSData *)getDataWithSet:(NSSet *)set {
    NSString *jsonString = @"[";
    for (NSNumber *s in set) {
        jsonString = [jsonString stringByAppendingString:[NSString stringWithFormat:@"%ld",s.longValue]];
        jsonString = [jsonString stringByAppendingString:@","];
    }
    jsonString = [jsonString substringToIndex:([jsonString length]-1)];
    jsonString = [jsonString stringByAppendingString:@"]"];
    return [jsonString dataUsingEncoding:NSUTF8StringEncoding];
}

@end
