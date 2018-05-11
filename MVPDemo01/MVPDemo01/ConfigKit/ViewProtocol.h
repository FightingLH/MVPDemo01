//
//  ViewProtocol.h
//  MVPDemo01
//
//  Created by feeyo on 2018/5/10.
//  Copyright © 2018年 lihuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@protocol ViewProtocol <NSObject>
/**
 * view中的事件通过delegate传地到外面
 *
 */
- (void)view:(__kindof UIView *)view withEvent:(NSDictionary *)events;

/**
 *  将view中的事件交由viewManger处理
 */
- (void)viewWithViewManger:(id<ViewProtocol>)viewManger;
@end
