//
//  DemoTableViewModel.m
//  MVPDemo01
//
//  Created by feeyo on 2018/5/9.
//  Copyright © 2018年 lihuan. All rights reserved.
//

#import "DemoTableViewModel.h"
#import "DemoOneCell.h"
#import "DemoTwoCell.h"
#import "DemoThreeCell.h"
#import "DemoViewManager.h"
#import "DemoModel.h"

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


- (void)registerCellWithTable:(UITableView *)table
{
    [table registerClass:[DemoOneCell class] forCellReuseIdentifier:NSStringFromClass([DemoOneCell class])];
    [table registerClass:[DemoTwoCell class] forCellReuseIdentifier:NSStringFromClass([DemoTwoCell class])];
    [table registerClass:[DemoThreeCell class] forCellReuseIdentifier:NSStringFromClass([DemoThreeCell class])];
   
}

- (void)handleWithTable:(UITableView *)table
{
    [self registerCellWithTable:table];
    table.dataSource = self;
    table.delegate = self;
    
}

- (UITableViewCell *)spreadToCellWithIndexPath:(NSIndexPath *)indexPath andCell:(UITableViewCell *)cell andModel:(DemoModel *)model
{
    if ([cell.reuseIdentifier isEqualToString:NSStringFromClass([DemoOneCell class] )]) {
        NSLog(@"oneCell---->>%@",model.name);
    }
    if ([cell.reuseIdentifier isEqualToString:NSStringFromClass([DemoTwoCell class] )]) {
        NSLog(@"twoCell---->>%@",model.name);
    }
    if ([cell.reuseIdentifier isEqualToString:NSStringFromClass([DemoThreeCell class] )]) {
        NSLog(@"threeCell---->>%@",model.name);
    }
    return cell;
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

    DemoModel *model = self.dataArray[indexPath.section][indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:model.identifier forIndexPath:indexPath];
    return [self spreadToCellWithIndexPath:indexPath andCell:cell andModel:model];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.dataArray.count;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.dataArray[section] count];
}

#pragma mark -tableView delegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

}
@end
