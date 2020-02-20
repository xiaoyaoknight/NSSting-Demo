//
//  RViewController.m
//  NSSting-Demo
//
//  Created by wangzelong on 2020/2/19.
//  Copyright © 2020 wangzelong. All rights reserved.
//


#import "NSMutableAttributedString+CESafeExt.h"
#import "NSObject+CEHook.h"

@implementation NSMutableAttributedString (CESafeExt)

+ (void)initialize {
    if (self == [NSMutableAttributedString class]) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            @autoreleasepool {
                [self cehook_instanceMethodSwizzling:@selector(setAttributes:range:) to:@selector(safe_SetAttributes:range:)];
                [self cehook_instanceMethodSwizzling:@selector(addAttributes:range:) to:@selector(safe_AddAttributes:range:)];
            }
        });
    }
}

/**
 防止NSMutableAttributedString 设置属性时发生崩溃
 */
- (void)safe_SetAttributes:(nullable NSDictionary<NSString *, id> *)attrs range:(NSRange)range {
    CERangeOutOfBoundsCanBeNilReturn(self, range);
    [self safe_SetAttributes:attrs range:range];
}

/**
 防止NSMutableAttributedString 设置属性时发生崩溃
 */
- (void)safe_AddAttributes:(nullable NSDictionary<NSString *, id> *)attrs range:(NSRange)range {
    CERangeOutOfBoundsCanBeNilReturn(self, range);
    [self safe_AddAttributes:attrs range:range];
}


@end
