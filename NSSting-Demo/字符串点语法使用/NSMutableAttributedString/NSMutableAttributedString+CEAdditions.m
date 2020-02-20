//
//  RViewController.m
//  NSSting-Demo
//
//  Created by wangzelong on 2020/2/19.
//  Copyright © 2020 wangzelong. All rights reserved.
//


#import "NSMutableAttributedString+CEAdditions.h"
#import <objc/runtime.h>

@interface NSMutableAttributedString ()

/**
 存储待修改的 range
 */
@property (nonatomic, assign, readwrite) NSRange currentSetRange;

@end

@implementation NSMutableAttributedString (CEAdditions)

+ (NSMutableAttributedString *)concatenate:(NSArray*)strings {
    NSMutableAttributedString *returnString = [[NSMutableAttributedString alloc]init];
    for (NSAttributedString *string in strings) {
        [returnString appendAttributedString:string];
    }
    return returnString;
}

- (instancetype)setAttributes:(nullable NSDictionary<NSAttributedStringKey, id> *)attrs subString:(NSString *)setString {
    NSRange range = [[self string] rangeOfString:setString];
    CERangeOutOfBoundsReturnCanBeNilValue(self, range, self);
    [self setAttributes:attrs range:range];
    return self;
}

- (instancetype)addAttributes:(nullable NSDictionary<NSAttributedStringKey, id> *)attrs subString:(NSString *)setString {
    NSRange range = [[self string] rangeOfString:setString];
    CERangeOutOfBoundsReturnCanBeNilValue(self, range, self);
    [self addAttributes:attrs range:range];
    return self;
}

@end

#pragma mark - 链式便捷方法
@implementation NSMutableAttributedString (Convenient)

- (NSRange)currentSetRange {
    id range = objc_getAssociatedObject(self, @selector(currentSetRange));
    if (range == nil) {
        return self.fullRange;
    }
    return [range rangeValue];
}

- (void)setCurrentSetRange:(NSRange)currentSetRange {
    objc_setAssociatedObject(self, @selector(currentSetRange), [NSValue valueWithRange:currentSetRange], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSRange)fullRange {
    return NSMakeRange(0, self.length);
}

- (NSMAttrStringStringBlock)subString {
    return ^NSMAttrString *(NSString *subString) {
        BOOL isString = [subString isKindOfClass:[NSString class]];
        if (isString) {
            NSRange range = [[self string] rangeOfString:subString];
            CERangeOutOfBoundsReturnCanBeNilValue(self, range, nil);
            self.currentSetRange = range;
        }
        return self;
    };
}

- (NSMAttrStringRangeBlock)range {
    return ^NSMAttrString *(NSRange range) {
        CERangeOutOfBoundsReturnCanBeNilValue(self, range, nil);
        self.currentSetRange = range;
        return self;
    };
}

- (NSMAttrStringAttributesBlock)setAttributes {
    return ^NSMAttrString *(NSDictionary<NSAttributedStringKey, id> * _Nullable dict) {
        [self setAttributes:dict range:self.currentSetRange];
        return self;
    };
}

- (NSMAttrStringAttributesBlock)addAttributes {
    return ^NSMAttrString *(NSDictionary<NSAttributedStringKey, id> * _Nullable dict) {
        [self addAttributes:dict range:self.currentSetRange];
        return self;
    };
}

- (NSMAttrStringRangeBlock)then {
    return ^NSMAttrString *(NSRange range) {
        CERangeOutOfBoundsReturnCanBeNilValue(self, range, nil);
        self.currentSetRange = range;
        return self;
    };
}

- (NSMAttrStringBlock)end {
    return ^NSMAttrString *(void) {
        self.currentSetRange = self.fullRange;
        return self;
    };
}

- (NSMAttrStringAttributeBlock)creatAttributeBlockWithName:(NSString *)name {
    return ^NSMAttrString *(id info) {
        if (info) {
            [self addAttributes:@{ name: info } range:self.currentSetRange];
        }
        return self;
    };
}

- (NSMAttrStringAttributeBlock)font {
    return [self creatAttributeBlockWithName:NSFontAttributeName];
}

- (NSMAttrStringAttributeBlock)color {
    return [self creatAttributeBlockWithName:NSForegroundColorAttributeName];
}

- (NSMAttrStringAttributeBlock)paragraphStyle {
    return [self creatAttributeBlockWithName:NSParagraphStyleAttributeName];
}

- (NSMAttrStringAttributeBlock)foregroundColor {
    return [self creatAttributeBlockWithName:NSForegroundColorAttributeName];
}

- (NSMAttrStringAttributeBlock)backgroundColor {
    return [self creatAttributeBlockWithName:NSBackgroundColorAttributeName];
}

- (NSMAttrStringAttributeBlock)ligature {
    return [self creatAttributeBlockWithName:NSLigatureAttributeName];
}

- (NSMAttrStringAttributeBlock)kerning {
    return [self creatAttributeBlockWithName:NSKernAttributeName];
}

- (NSMAttrStringAttributeBlock)underlineStyle {
    return [self creatAttributeBlockWithName:NSUnderlineStyleAttributeName];
}

- (NSMAttrStringAttributeBlock)strikethroughStyle {
    return [self creatAttributeBlockWithName:NSStrikethroughStyleAttributeName];
}

- (NSMAttrStringAttributeBlock)strokeColor {
    return [self creatAttributeBlockWithName:NSStrokeColorAttributeName];
}

- (NSMAttrStringAttributeBlock)strokeWidth {
    return [self creatAttributeBlockWithName:NSStrokeWidthAttributeName];
}

- (NSMAttrStringAttributeBlock)shadow {
    return [self creatAttributeBlockWithName:NSShadowAttributeName];
}

- (NSMAttrStringAttributeBlock)textEffect {
    return [self creatAttributeBlockWithName:NSTextEffectAttributeName];
}

- (NSMAttrStringAttributeBlock)textAttachment {
    return [self creatAttributeBlockWithName:NSAttachmentAttributeName];
}

- (NSMAttrStringAttributeBlock)link {
    return [self creatAttributeBlockWithName:NSLinkAttributeName];
}

- (NSMAttrStringAttributeBlock)baselineOffset {
    return [self creatAttributeBlockWithName:NSBaselineOffsetAttributeName];
}

- (NSMAttrStringAttributeBlock)underlineColor {
    return [self creatAttributeBlockWithName:NSUnderlineColorAttributeName];
}

- (NSMAttrStringAttributeBlock)strikethroughColor {
    return [self creatAttributeBlockWithName:NSStrikethroughColorAttributeName];
}

- (NSMAttrStringAttributeBlock)obliqueness {
    return [self creatAttributeBlockWithName:NSObliquenessAttributeName];
}

- (NSMAttrStringAttributeBlock)expansion {
    return [self creatAttributeBlockWithName:NSExpansionAttributeName];
}


@end
