//
//  DemoViewModel.m
//  MVPDemo01
//
//  Created by feeyo on 2018/5/9.
//  Copyright © 2018年 lihuan. All rights reserved.
//

#import "DemoViewModel.h"
#import "DemoModel.h"

@implementation DemoViewModel
- (void)requestFromService:(successBlock)success failure:(failureBlock)failure
{
    if (success) {
        success([self getLocatArray]);
    }
}

- (void)trans_dataWithModelblock:(void (^)(id))modelBlock
{
    if (modelBlock) {
        modelBlock(@"<<<----result--->>>");
    }
}

- (NSArray *)getLocatArray
{
    NSMutableArray *localArray = [NSMutableArray new];
    for (NSInteger i = 0 ; i < 3; i++) {
        [localArray addObject:[self dealModelWithIdentifer:i] ];
    }
    return localArray.copy;
}

- (NSArray *)dealModelWithIdentifer:(NSInteger)index
{
    NSMutableArray *contentArray = [NSMutableArray new];
    switch (index) {
        case 0:
            {
                DemoModel *model = [[DemoModel alloc]init];
                model.identifier = @"DemoOneCell";
                model.name = @"第一行，第一个";
                [contentArray addObject:model];
            }
            break;
        case 1:
            {
                DemoModel *model = [[DemoModel alloc]init];
                model.identifier = @"DemoTwoCell";
                model.name = @"第二行，第一个";
                [contentArray addObject:model];
            }
            break;
        case 2:
            {
                DemoModel *model = [[DemoModel alloc]init];
                model.identifier = @"DemoThreeCell";
                model.name = @"第三行，第一个";
                [contentArray addObject:model];
            }
            break;
        default:
            break;
    }
    return contentArray.copy;
}
@end
