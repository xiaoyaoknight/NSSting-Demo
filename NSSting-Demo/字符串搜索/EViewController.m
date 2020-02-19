//
//  EViewController.m
//  NSSting-Demo
//
//  Created by wangzelong on 2020/2/14.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import "EViewController.h"

@interface EViewController ()

@end

@implementation EViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    NSString *str = @"<>sjgpajkgdiwhsGadjkaw;123t!ksk";
    NSString *str1 = @"<>YYYYSIHGSKDWOK";
    
    BOOL a = [str hasPrefix:@"<"];
    BOOL b = [str hasSuffix:@"ksk"];
    NSString *c = [str commonPrefixWithString:str1 options:NSCaseInsensitiveSearch];
    BOOL d = [str hasSuffix:@"gd"];
    
    BOOL e =  [str localizedCaseInsensitiveContainsString:str1];
    
    NSRange range = [str localizedStandardRangeOfString:str1];
    
    NSRange range1 = [str rangeOfString:@"Ga"];
    
    NSRange range2 = [str rangeOfString:@"123" options:NSNumericSearch];
    NSLog(@"%d %d %@ %d %d %@ %@ %@", a,b,c,d,e,NSStringFromRange(range),NSStringFromRange(range1),NSStringFromRange(range2));
}

/*
//1.是否包含前缀(以str开头)
- (BOOL)hasPrefix:(NSString *)str;

//2.是否包含后缀(以str结尾)
- (BOOL)hasSuffix:(NSString *)str;

//3.获取公共前缀
- (NSString *)commonPrefixWithString:(NSString *)str options:(NSStringCompareOptions)mask;

 //4.是否包含字符串
- (BOOL)containsString:(NSString *)str;

//5.本地化是否包含字符串(不区分大小写)
- (BOOL)localizedCaseInsensitiveContainsString:(NSString *)str;

//6.本地化是否包含字符串(标准)
- (BOOL)localizedStandardContainsString:(NSString *)str;

//7.本地化搜索字符串范围(标准)
- (NSRange)localizedStandardRangeOfString:(NSString *)str;


                                            //////////搜索字符串//////////
//8.搜索(指定字符串)
- (NSRange)rangeOfString:(NSString *)searchString;

//9.搜索(指定字符串,条件)
- (NSRange)rangeOfString:(NSString *)searchString options:(NSStringCompareOptions)mask;

//10.搜索(指定字符串,条件,范围)
- (NSRange)rangeOfString:(NSString *)searchString options:(NSStringCompareOptions)mask range:(NSRange)searchRange;

//11.搜索(指定字符串,条件,范围,本地化)
- (NSRange)rangeOfString:(NSString *)searchString options:(NSStringCompareOptions)mask range:(NSRange)searchRange locale:(nullable NSLocale *)locale;


                                            //////////搜索字符集合//////////
//12.搜索(指定字符集合)
- (NSRange)rangeOfCharacterFromSet:(NSCharacterSet *)searchSet;

//13.搜索(指定字符集合,条件)
- (NSRange)rangeOfCharacterFromSet:(NSCharacterSet *)searchSet options:
(NSStringCompareOptions)mask;

//14.搜索(指定字符集合,条件,范围)
- (NSRange)rangeOfCharacterFromSet:(NSCharacterSet *)searchSet options:(NSStringCompareOptions)mask range:(NSRange)searchRange;

//15.用字符串的字符编码指定索引查找位置
- (NSRange)rangeOfComposedCharacterSequenceAtIndex:(NSUInteger)index;

//16.用字符串的字符编码指定区域段查找位置
- (NSRange)rangeOfComposedCharacterSequencesForRange:(NSRange)range;
*/

@end
