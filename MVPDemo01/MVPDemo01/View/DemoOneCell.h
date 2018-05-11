//
//  DemoOneCell.h
//  MVPDemo01
//
//  Created by 李欢 on 2018/5/9.
//  Copyright © 2018年 lihuan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewProtocol.h"

@interface DemoOneCell : UITableViewCell
@property  (weak, nonatomic)  id<ViewProtocol>oneDelegate;
@end
