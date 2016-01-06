//
//  BHBPaintPath.h
//  BHBDrawBoarder
//
//  Created by bihongbo on 16/1/4.
//  Copyright © 2016年 bihongbo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BHBPaintPath : UIBezierPath

+ (instancetype)paintPathWithLineWidth:(CGFloat)width
                            startPoint:(CGPoint)startP;
@end
