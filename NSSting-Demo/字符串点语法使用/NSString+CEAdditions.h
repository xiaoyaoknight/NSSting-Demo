//
//  RViewController.m
//  NSSting-Demo
//
//  Created by wangzelong on 2020/2/19.
//  Copyright © 2020 wangzelong. All rights reserved.
//


#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (CEAdditions)

- (NSString *(^)(id))add;

- (NSString *(^)(id))addPrefix;

- (NSString *(^)(double))addDouble;

- (NSString *(^)(long))addlInt;

- (NSString *(^)(long long))addllInt;

@end

NS_ASSUME_NONNULL_END
