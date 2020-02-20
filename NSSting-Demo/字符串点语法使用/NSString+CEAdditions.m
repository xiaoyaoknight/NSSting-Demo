//
//  RViewController.m
//  NSSting-Demo
//
//  Created by wangzelong on 2020/2/19.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import "NSString+CEAdditions.h"

@implementation NSString (CEAdditions)

- (NSString *(^)(id))add {
    return ^NSString *(id obj) {
        return [self stringByAppendingFormat:@"%@", obj];
    };
}

- (NSString *(^)(id))addPrefix {
    return ^NSString *(id prefixObj) {
        return [NSString stringWithFormat:@"%@%@", prefixObj, self];
    };
}

- (NSString *(^)(double))addDouble {
    return ^NSString *(double doubleValue) {
        return [self stringByAppendingFormat:@"%.2f", doubleValue];
    };
}

- (NSString *(^)(long))addlInt {
    return ^NSString *(long longValue) {
        return [self stringByAppendingFormat:@"%ld", longValue];
        return self;
    };
}

- (NSString *(^)(long long))addllInt {
    return ^NSString *(long long longValue) {
        return [self stringByAppendingFormat:@"%lld", longValue];
        return self;
    };
}

@end
