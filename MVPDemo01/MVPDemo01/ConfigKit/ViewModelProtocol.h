//
//  ViewModelProtocol.h
//  MVPDemo01
//
//  Created by feeyo on 2018/5/9.
//  Copyright © 2018年 lihuan. All rights reserved.
//
//viewmodel protocol
#import <Foundation/Foundation.h>
/**
 * 成功请求
 */
typedef void (^successBlock)(id responseObject);

/**
 * 失败请求
 */
typedef void (^failureBlock)(NSError *error);


@protocol ViewModelProtocol <NSObject>

@optional

/**
 * 中介传值
 */
- (void)notice;
/**
 * 加载原始数据
 */
- (void)requestFromService:(successBlock)success failure:(failureBlock)failure;
/**
 * 传递数据给view(处理好的数据)
 */
- (void)trans_dataWithModelblock:(void(^)(id model))modelBlock;

/**
 * viewmodel中的信息传给viewmanager
 */
- (void)trans_viewModel:(id)viewModel withInfos:(NSDictionary *)infos;
@end
