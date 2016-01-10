//
//  BHBDrawView.m
//  DrawBorderBugDemo
//
//  Created by bihongbo on 16/1/11.
//  Copyright © 2016年 bihongbo. All rights reserved.
//

#import "BHBDrawView.h"


@implementation BHBDrawView


//这是是用drawRect绘图
-(void)drawRect:(CGRect)rect{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGContextSaveGState(ctx);
    [[UIColor brownColor] set];
    CGContextFillRect(ctx, CGRectMake(0, 0, self.frame.size.width, self.frame.size.height));
    CGContextRestoreGState(ctx);
    
    CGContextSaveGState(ctx);
    [[UIColor whiteColor] set];
    CGContextFillRect(ctx, CGRectMake(self.frame.size.width / 2 - 25, self.frame.size.height / 2 - 25, 50, 50));
    CGContextRestoreGState(ctx);
}

//这是是用专有图层CAShapeLayer
//- (instancetype)initWithFrame:(CGRect)frame
//{
//    self = [super initWithFrame:frame];
//    if (self) {
//        
//        CAShapeLayer * brownRectLayer = [CAShapeLayer layer];
//        brownRectLayer.frame = CGRectMake(0, 0, frame.size.width, frame.size.height);
//        UIBezierPath * path = [UIBezierPath bezierPathWithRect:CGRectMake(0, 0, frame.size.width, frame.size.height)];
//        brownRectLayer.path = path.CGPath;
//        brownRectLayer.fillColor = [UIColor brownColor].CGColor;
//        [self.layer addSublayer:brownRectLayer];
//        
//        CAShapeLayer * whiteRectLayer = [CAShapeLayer layer];
//        whiteRectLayer.frame = CGRectMake(0, 0, frame.size.width, frame.size.height);
//        UIBezierPath * path1 = [UIBezierPath bezierPathWithRect:CGRectMake(frame.size.width / 2 - 25, frame.size.height / 2 - 25, 50, 50)];
//        whiteRectLayer.path = path1.CGPath;
//        whiteRectLayer.fillColor = [UIColor whiteColor].CGColor;
//        [self.layer addSublayer:whiteRectLayer];
//        
//    }
//    return self;
//}

@end
