//
//  ViewController.m
//  DrawBorderBugDemo
//
//  Created by bihongbo on 16/1/11.
//  Copyright © 2016年 bihongbo. All rights reserved.
//

#import "ViewController.h"
#import "BHBDrawView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (IBAction)popView:(id)sender {
    
    BHBDrawView * dv = [[BHBDrawView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width * 5, self.view.frame.size.height * 5)];//这里的5你可以随意改变来试试内存情况.
    dv.center = self.view.center;
    dv.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:dv];
    
}


@end
