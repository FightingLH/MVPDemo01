//
//  DemoTwoCell.m
//  MVPDemo01
//
//  Created by 李欢 on 2018/5/9.
//  Copyright © 2018年 lihuan. All rights reserved.
//

#import "DemoTwoCell.h"


@implementation DemoTwoCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.contentView.backgroundColor = [UIColor yellowColor];
    }
    return self;
}
@end
