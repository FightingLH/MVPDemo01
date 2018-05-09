//
//  DemoTableViewModel.h
//  MVPDemo01
//
//  Created by feeyo on 2018/5/9.
//  Copyright © 2018年 lihuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DemoTableViewModel : NSObject<UITableViewDelegate,UITableViewDataSource>
- (void)handleWithTable:(UITableView *)table;
- (void)getDataWithModel:(NSArray *(^)(void))modelArrayBlock completion:(void(^)(void))completion;
@end
