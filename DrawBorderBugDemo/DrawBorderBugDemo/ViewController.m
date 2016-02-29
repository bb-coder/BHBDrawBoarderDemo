//
//  ViewController.m
//  DrawBorderBugDemo
//
//  Created by bihongbo on 16/1/11.
//  Copyright © 2016年 bihongbo. All rights reserved.
//

#import "ViewController.h"
#import "BHBDrawView.h"
#import "BHBLayerDelegate.h"

@interface ViewController (){
    
    BHBLayerDelegate *_layerDeleagete;
    CALayer          *_layer;
}

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

- (IBAction)popLayerView:(id)sender {
    
    _layerDeleagete = [[BHBLayerDelegate alloc] init];
    
    //1.创建自定义的layer
    _layer =[CALayer layer];
    //2.设置layer的属性
    _layer.backgroundColor= [UIColor whiteColor].CGColor;
    _layer.frame=CGRectMake(0, 0, self.view.frame.size.width * 5, self.view.frame.size.height * 5);
    _layer.delegate = _layerDeleagete;
    [_layer setNeedsDisplay];
    //3.添加layer
    [self.view.layer addSublayer:_layer];
}

- (void)dealloc{
    
    _layer.delegate = nil;
}

@end
