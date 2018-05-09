//
//  DemoTableViewModel.m
//  MVPDemo01
//
//  Created by feeyo on 2018/5/9.
//  Copyright © 2018年 lihuan. All rights reserved.
//

#import "DemoTableViewModel.h"
@interface DemoTableViewModel()
@property  (nonatomic, strong)  NSMutableArray  *dataArray;
@end

@implementation DemoTableViewModel

- (NSMutableArray *)dataArray
{
    if (nil == _dataArray) {
        _dataArray = [NSMutableArray new];
    }
    return _dataArray;
}

- (void)handleWithTable:(UITableView *)table
{
    table.dataSource = self;
    table.delegate = self;
    
}

- (void)getDataWithModel:(NSArray *(^)(void))modelArrayBlock completion:(void (^)(void))completion
{
    if (modelArrayBlock) {
        self.dataArray = [NSMutableArray arrayWithArray:modelArrayBlock()];
        if (completion) {
            completion();
        }
    }
}

#pragma mark -tableView datasource
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"test"];
    if (nil == cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"test"];
    }
    cell.textLabel.text = self.dataArray[indexPath.row];
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

#pragma mark -tableView delegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}
@end
