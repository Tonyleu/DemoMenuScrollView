//
//  LXHMenuScrollViewCell.m
//  DemoMenuScrollView
//
//  Created by tony on 2020/8/26.
//  Copyright © 2020 tony. All rights reserved.
//

#import "LXHMenuScrollViewCell.h"

#define WhiteColor [UIColor whiteColor]
#define Width [UIScreen mainScreen].bounds.size.width
#define Height [UIScreen mainScreen].bounds.size.height
#define CellSize self.frame.size.width
#define IconSize 26

@implementation LXHMenuScrollViewCell

- (id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        // cell里面的选项图标
        _imgView = [[UIImageView alloc] initWithFrame:CGRectMake((CellSize-IconSize)/2, 24.5, IconSize, IconSize)];
        [self addSubview:_imgView];
        // cell里面的选项名称
        _textView = [[UILabel alloc] initWithFrame:CGRectMake(0, 57.5, CellSize, 14)];
        [self addSubview:_textView];
    }    
    return  self;
}

@end
