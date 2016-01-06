//
//  BHBPaintPath.m
//  BHBDrawBoarder
//
//  Created by bihongbo on 16/1/4.
//  Copyright © 2016年 bihongbo. All rights reserved.
//

#import "BHBPaintPath.h"

@implementation BHBPaintPath

+ (instancetype)paintPathWithLineWidth:(CGFloat)width
                            startPoint:(CGPoint)startP
{
    BHBPaintPath * path = [[self alloc] init];
    path.lineWidth = width;
    path.lineCapStyle = kCGLineCapRound; //线条拐角
    path.lineJoinStyle = kCGLineCapRound; //终点处理
    [path moveToPoint:startP];
    return path;
}

@end
