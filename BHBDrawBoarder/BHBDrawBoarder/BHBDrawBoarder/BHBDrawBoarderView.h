//
//  BHBDrawBoarderView.h
//  BHBDrawBoarder
//
//  Created by bihongbo on 16/1/4.
//  Copyright © 2016年 bihongbo. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^draftInfoBlock)(NSInteger num, NSArray * linesInfo, NSArray * canceledLinesInfo);

@interface BHBDrawBoarderView : UIView

@property (nonatomic, strong)NSIndexPath *index;
@property (nonatomic, assign)NSInteger num;
@property (nonatomic, strong)NSArray * linesInfo;
@property (nonatomic, strong)NSArray * canceledLinesInfo;
@property (nonatomic, copy)draftInfoBlock draftInfoBlock;

- (void)show;

- (void)dismiss;



@end
