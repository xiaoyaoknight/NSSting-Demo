//
//  KViewController.m
//  NSSting-Demo
//
//  Created by wangzelong on 2020/2/14.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import "KViewController.h"

@interface KViewController ()

@end

@implementation KViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
}

/*
## 10字符串编码与转换
```
//1.选择编码,是否允许有损编码【重要】
- (nullable NSData *)dataUsingEncoding:(NSStringEncoding)encoding allowLossyConversion:(BOOL)lossy;

//2.选择编码
- (nullable NSData *)dataUsingEncoding:(NSStringEncoding)encoding;

//3.判断是否可以无损编码
- (BOOL)canBeConvertedToEncoding:(NSStringEncoding)encoding;

//4.C字符编码转换
- (nullable __strong const charchar *)cStringUsingEncoding:(NSStringEncoding)encoding;

//5.判读C字符转化是否可以成功
- (BOOL)getCString:(charchar *)buffer maxLength:(NSUInteger)maxBufferCount encoding:(NSStringEncoding)encoding;

//6.指定缓存区转换
- (BOOL)getBytes:(nullable voidvoid *)buffer maxLength:(NSUInteger)maxBufferCount usedLength:(nullable NSUInteger *)usedBufferCount encoding:(NSStringEncoding)encoding options:(NSStringEncodingConversionOptions)options range:(NSRange)range remainingRange:(nullable NSRangePointer)leftover;

//7.对字符串进行编码时所需的最大字节数
- (NSUInteger)maximumLengthOfBytesUsingEncoding:(NSStringEncoding)enc;

//8.对字符串进行编码时所需的字节数
- (NSUInteger)lengthOfBytesUsingEncoding:(NSStringEncoding)enc;

//9.可用字符串编码
+ (const NSStringEncoding *)availableStringEncodings;

//10.本地化编码名称
+ (NSString *)localizedNameOfStringEncoding:(NSStringEncoding)encoding;

//11.默认C字符串编码
+ (NSStringEncoding)defaultCStringEncoding;

```
}
*/

@end
