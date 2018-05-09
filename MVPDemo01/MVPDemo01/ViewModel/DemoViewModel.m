//
//  DemoViewModel.m
//  MVPDemo01
//
//  Created by feeyo on 2018/5/9.
//  Copyright © 2018年 lihuan. All rights reserved.
//

#import "DemoViewModel.h"

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
    for (NSInteger i = 0 ; i <= arc4random() % 100; i++) {
        [localArray addObject:[NSString stringWithFormat:@"%@Test",@(i)]];
    }
    return localArray.copy;
}
@end
