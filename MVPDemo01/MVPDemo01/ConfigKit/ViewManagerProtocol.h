//
//  ViewManagerProtocol.h
//  MVPDemo01
//
//  Created by feeyo on 2018/5/9.
//  Copyright © 2018年 lihuan. All rights reserved.
//
//viewmanager protocol
#import <Foundation/Foundation.h>
/**
 * View Event
 */
typedef void (^ViewEventBlock)(void);
/**
 * 将自己的信息返回到ViewModel
 */
typedef void (^ViewModelInfosBlock)(void);
/**
 * 将自己的信息返回到ViewManger
 */
typedef void (^ViewManagerInfosBlock)(void);

@protocol ViewManagerProtocol <NSObject>
/**
 * 处理Event事件
*/
- (ViewEventBlock)viewMangerWithEventBlockInfos:(NSDictionary *)infos;

/**
 * 处理ViewModelInforBlock
 */
- (ViewModelInfosBlock)viewManagerWithViewModel:(NSDictionary *)infos;

/**
 * 处理ViewManagerInfosBlock
 */
- (ViewManagerInfosBlock)viewManagerWithOtherInfos:(NSDictionary *)infos;
@end
