//
//  RViewController.m
//  NSSting-Demo
//
//  Created by wangzelong on 2020/2/19.
//  Copyright © 2020 wangzelong. All rights reserved.
//


#import <Foundation/Foundation.h>

#define _RETURN_VOID return;
#define _RETURN_VALUE(VALUE) return VALUE;

#define _CECheckOutOfBounds(STRING, RANGE) (RANGE.location != NSNotFound && STRING.length >= RANGE.location && (STRING.length - RANGE.location) >= RANGE.length)
#define _CECheckOutOfBoundsCanBeNil(STRING, RANGE) ((RANGE.location == NSNotFound && RANGE.length == 0) || (_CECheckOutOfBounds(STRING, RANGE)))

#define _CERangeOutOfBoundsReturnValue(STRING, RANGE, CANBENIL, RETURN, ERRORSTRING) \
{ \
    BOOL ce_notOutOfBounds = CANBENIL ? _CECheckOutOfBoundsCanBeNil(STRING, RANGE) : _CECheckOutOfBounds(STRING, RANGE);\
    if (!ce_notOutOfBounds) { \
        NSAssert(ce_notOutOfBounds, ERRORSTRING); \
        RETURN \
    } \
};

#define CERangeOutOfBoundsReturnValue(STRING, RANGE, VALUE) _CERangeOutOfBoundsReturnValue(STRING, RANGE, NO, _RETURN_VALUE(VALUE), @"range 存在问题")
#define CERangeOutOfBoundsReturnCanBeNilValue(STRING, RANGE, VALUE) _CERangeOutOfBoundsReturnValue(STRING, RANGE, YES, _RETURN_VALUE(VALUE), @"range 存在问题")


#define CERangeOutOfBoundsReturn(STRING, RANGE) _CERangeOutOfBoundsReturnValue(STRING, RANGE, NO, _RETURN_VOID, @"range 存在问题")
#define CERangeOutOfBoundsCanBeNilReturn(STRING, RANGE) _CERangeOutOfBoundsReturnValue(STRING, RANGE, YES, _RETURN_VOID, @"range 存在问题")

NS_ASSUME_NONNULL_BEGIN

/**
 对以下方法拦截，防止crash
 setAttributes:range:
 addAttributes:range:
 */
@interface NSMutableAttributedString (CESafeExt)

@end

NS_ASSUME_NONNULL_END
