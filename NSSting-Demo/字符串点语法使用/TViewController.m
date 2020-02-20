//
//  TViewController.m
//  NSSting-Demo
//
//  Created by wangzelong on 2020/2/19.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import "TViewController.h"
#import "NSString+CEAdditions.h"
#import "NSString+CEAttributedString.h"
#import "NSMutableAttributedString+CEAdditions.h"

@interface TViewController ()
/// label
@property (nonatomic, strong) UILabel *titleLabel;
@end

@implementation TViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.titleLabel];
    
    NSString *str = @"你是虎";
    NSString *str1 = @"我是龙";
    NSString *formateStr = str.add(str1);
    NSMAttrString *attributeStr = formateStr.attributedString;
    attributeStr.subString(str).font([UIFont systemFontOfSize:12]).color([UIColor redColor])
    .subString(str1).font([UIFont boldSystemFontOfSize:14]).color([UIColor blueColor]);
    self.titleLabel.attributedText = attributeStr;
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 300, 60)];
    }
    return _titleLabel;
}

@end
