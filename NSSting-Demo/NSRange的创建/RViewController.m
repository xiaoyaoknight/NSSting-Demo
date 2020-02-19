//
//  RViewController.m
//  NSSting-Demo
//
//  Created by wangzelong on 2020/2/19.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import "RViewController.h"

@interface RViewController ()

@end

@implementation RViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];

    NSRange range1;
    range1.location = 11;
    range1.length = 4;
    
    
    NSRange range2 = {11, 4};
    NSRange range22 = {.location = 11,.length = 4};

    NSRange range3 = NSMakeRange(11, 4);

    
    NSLog(@"%@%@%@%@", NSStringFromRange(range1), NSStringFromRange(range2),
          NSStringFromRange(range22),
          NSStringFromRange(range3));
}


@end
