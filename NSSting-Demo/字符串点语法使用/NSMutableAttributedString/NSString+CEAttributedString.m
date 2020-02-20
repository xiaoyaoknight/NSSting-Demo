//
//  RViewController.m
//  NSSting-Demo
//
//  Created by wangzelong on 2020/2/19.
//  Copyright © 2020 wangzelong. All rights reserved.
//


#import "NSString+CEAttributedString.h"

@implementation NSString (CEAttributedString)

- (NSMutableAttributedString *)attributedString {
    return [[NSMutableAttributedString alloc] initWithString:self];
}

@end
