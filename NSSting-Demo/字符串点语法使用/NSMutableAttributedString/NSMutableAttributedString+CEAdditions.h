//
//  RViewController.m
//  NSSting-Demo
//
//  Created by wangzelong on 2020/2/19.
//  Copyright © 2020 wangzelong. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "NSMutableAttributedString+CESafeExt.h"
#import "NSString+CEAttributedString.h"
#import <UIKit/UIKit.h>

typedef NSMutableAttributedString NSMAttrString;
typedef NSMAttrString *(^NSMAttrStringRangeBlock)(NSRange);
typedef NSMAttrString *(^NSMAttrStringStringBlock)(NSString *);
typedef NSMAttrString *(^NSMAttrStringAttributesBlock)(NSDictionary<NSAttributedStringKey, id> * _Nullable);
typedef NSMAttrString *(^NSMAttrStringAttributeBlock)(id);
typedef NSMAttrString *(^NSMAttrStringBlock)(void);

NS_ASSUME_NONNULL_BEGIN
@interface NSMutableAttributedString (CEAdditions)

/// 链接多个可变字符串
+ (NSMAttrString *)concatenate:(NSArray <NSMAttrString *>*)strings;

/// 给子串设置多个属性
- (instancetype)setAttributes:(nullable NSDictionary<NSAttributedStringKey, id> *)attrs subString:(NSString *)setString;

/// 给子串添加多个属性
- (instancetype)addAttributes:(nullable NSDictionary<NSAttributedStringKey, id> *)attrs subString:(NSString *)setString;

@end

/**
 便捷方法
 */
@interface NSMutableAttributedString (Convenient)

/// 字符串的全部范围
@property (nonatomic, assign, readonly) NSRange                      fullRange;

/// 开始编辑某个子串，同时设置正在修改的 range 为子串的范围
@property (nonatomic, assign, readonly) NSMAttrStringStringBlock     subString;

/// 开始编辑，设置正在修改的range
@property (nonatomic, assign, readonly) NSMAttrStringRangeBlock      range;

/// 继续编辑下个 range
@property (nonatomic, copy, readonly)   NSMAttrStringRangeBlock      then;

/// 结束编辑，将编辑的 Range 改为全体字符串
@property (nonatomic, copy, readonly)   NSMAttrStringBlock           end;

/// 设置多个属性
@property (nonatomic, copy, readonly)   NSMAttrStringAttributesBlock setAttributes;

/// 添加多个属性
@property (nonatomic, copy, readonly)   NSMAttrStringAttributesBlock addAttributes;

/// 可变字符串的属性
@property (nonatomic, copy, readonly)   NSMAttrStringAttributeBlock  font;
@property (nonatomic, copy, readonly)   NSMAttrStringAttributeBlock  color;
@property (nonatomic, copy, readonly)   NSMAttrStringAttributeBlock  paragraphStyle;
@property (nonatomic, copy, readonly)   NSMAttrStringAttributeBlock  foregroundColor;
@property (nonatomic, copy, readonly)   NSMAttrStringAttributeBlock  backgroundColor;
@property (nonatomic, copy, readonly)   NSMAttrStringAttributeBlock  ligature;
@property (nonatomic, copy, readonly)   NSMAttrStringAttributeBlock  kerning;
@property (nonatomic, copy, readonly)   NSMAttrStringAttributeBlock  strikethroughStyle;
@property (nonatomic, copy, readonly)   NSMAttrStringAttributeBlock  underlineStyle;
@property (nonatomic, copy, readonly)   NSMAttrStringAttributeBlock  strokeColor;
@property (nonatomic, copy, readonly)   NSMAttrStringAttributeBlock  strokeWidth;
@property (nonatomic, copy, readonly)   NSMAttrStringAttributeBlock  shadow;
@property (nonatomic, copy, readonly)   NSMAttrStringAttributeBlock  textEffect;
@property (nonatomic, copy, readonly)   NSMAttrStringAttributeBlock  textAttachment;
@property (nonatomic, copy, readonly)   NSMAttrStringAttributeBlock  link;
@property (nonatomic, copy, readonly)   NSMAttrStringAttributeBlock  baselineOffset;
@property (nonatomic, copy, readonly)   NSMAttrStringAttributeBlock  underlineColor;
@property (nonatomic, copy, readonly)   NSMAttrStringAttributeBlock  strikethroughColor;
@property (nonatomic, copy, readonly)   NSMAttrStringAttributeBlock  obliqueness;
@property (nonatomic, copy, readonly)   NSMAttrStringAttributeBlock  expansion;

@end
NS_ASSUME_NONNULL_END
