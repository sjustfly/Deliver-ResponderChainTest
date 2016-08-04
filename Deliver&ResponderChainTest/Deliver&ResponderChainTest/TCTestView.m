//
//  TCTestView.m
//  Deliver&ResponderChainTest
//
//  Created by 普拉斯 on 16/8/4.
//  Copyright © 2016年 lc. All rights reserved.
//

#import "TCTestView.h"



@implementation TCTestView


- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        _maskView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
        _maskView.backgroundColor = [UIColor blueColor];
        [self addSubview:_maskView];
    }
    return self;
}

-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    UIView *hitView = [super hitTest:point withEvent:event];
    if (hitView == _maskView)
    {
        return nil; // 说明该层级没有找到想要的view,以上一层级找到的为准
    }
    else
    {
        return hitView;
    }
}

@end