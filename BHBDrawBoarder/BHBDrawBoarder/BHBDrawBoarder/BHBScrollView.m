//
//  BHBDrawView.m
//  BHBDrawBoarder
//
//  Created by bihongbo on 16/1/4.
//  Copyright © 2016年 bihongbo. All rights reserved.
//

#import "BHBScrollView.h"

@implementation BHBScrollView

- (BOOL)touchesShouldBegin:(NSSet *)touches withEvent:(UIEvent *)event inContentView:(UIView *)view
{
    if ([event allTouches].count == 1) {
        return YES;
    }
    return NO;
    
}

@end
