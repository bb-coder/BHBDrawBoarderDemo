//
//  ViewController.m
//  BHBDrawBoarder
//
//  Created by bihongbo on 16/1/4.
//  Copyright © 2016年 bihongbo. All rights reserved.
//

#import "ViewController.h"
#import "BHBDrawBoarderView.h"

@interface ViewController ()

@property (nonatomic,strong) BHBDrawBoarderView * bv;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)popDrawView:(id)sender {
    self.bv = [[BHBDrawBoarderView alloc] initWithFrame:CGRectZero];
//    self.bv.linesInfo = @[];
//    self.bv.canceledLinesInfo = @[];
    [self.bv show];
}


@end
