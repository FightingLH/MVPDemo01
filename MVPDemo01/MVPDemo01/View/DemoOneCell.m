//
//  DemoOneCell.m
//  MVPDemo01
//
//  Created by 李欢 on 2018/5/9.
//  Copyright © 2018年 lihuan. All rights reserved.
//

#import "DemoOneCell.h"

@interface DemoOneCell ()
@property  (nonatomic, strong)  UIButton  *clickBtn;
@end

@implementation DemoOneCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
   
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self init_View];
    }
    return self;
}
- (void)init_View
{
    [self.contentView addSubview:self.clickBtn];
    self.clickBtn.frame = CGRectMake(10, 10, 50, 13);
    
}


- (void)clickOneBtn
{
    if (self.oneDelegate && [self.oneDelegate respondsToSelector:@selector(view:withEvent:)]) {
        [self.oneDelegate view:self withEvent:@{@"toNextPage":@"VC"}];
    }
}

- (UIButton *)clickBtn
{
    if (nil == _clickBtn) {
        _clickBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_clickBtn setTitle:@"点击了OneCell" forState:UIControlStateNormal];
        _clickBtn.backgroundColor = [UIColor grayColor];
        _clickBtn.titleLabel.font = [UIFont systemFontOfSize:13];
        _clickBtn.titleLabel.textColor = [UIColor redColor];
        [_clickBtn addTarget:self action:@selector(clickOneBtn) forControlEvents:UIControlEventTouchUpInside];
    }
    return _clickBtn;
}
@end
