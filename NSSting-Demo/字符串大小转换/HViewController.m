//
//  HViewController.m
//  NSSting-Demo
//
//  Created by wangzelong on 2020/2/14.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import "HViewController.h"

@interface HViewController ()

@end

@implementation HViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    NSString *string = @"string";
    NSLog(@"大写:         %@", string.uppercaseString);
    NSLog(@"小写:         %@", string.lowercaseString);
    NSLog(@"首字母大写:    %@", string.capitalizedString);
}

/*
## 7.字符大小写转化
 //本地化(大写)
- (NSString *)uppercaseStringWithLocale:(nullable NSLocale *)locale;

//本地化(小写)
- (NSString *)lowercaseStringWithLocale:(nullable NSLocale *)locale;

//本地化(首字母大写)
- (NSString *)capitalizedStringWithLocale:(nullable NSLocale *)locale;
```
*/

@end
