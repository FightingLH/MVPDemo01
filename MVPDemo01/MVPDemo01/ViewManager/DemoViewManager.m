//
//  DemoViewManager.m
//  MVPDemo01
//
//  Created by feeyo on 2018/5/9.
//  Copyright © 2018年 lihuan. All rights reserved.
//

#import "DemoViewManager.h"

@implementation DemoViewManager
- (void)view:(id)view withEvent:(NSDictionary *)events
{
    //处理view的事件
    NSLog(@"%@--%@",view,events);
}
@end
