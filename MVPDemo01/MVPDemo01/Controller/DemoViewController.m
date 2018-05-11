//
//  DemoViewController.m
//  MVPDemo01
//
//  Created by feeyo on 2018/5/9.
//  Copyright © 2018年 lihuan. All rights reserved.
//

#import "DemoViewController.h"
#import "DemoViewModel.h"
#import "DemoTableViewModel.h"

@interface DemoViewController ()
@property (weak, nonatomic) IBOutlet UITableView *DemoTableview;

@property (strong,nonatomic) DemoViewModel      *viewModel;
@property (strong,nonatomic) DemoTableViewModel *tableViewModel;
@end

@implementation DemoViewController

- (DemoViewModel *)viewModel
{
    if (nil == _viewModel) {
        _viewModel = [[DemoViewModel alloc]init];
    }
    return _viewModel;
}

- (DemoTableViewModel *)tableViewModel
{
    if (nil == _tableViewModel) {
        _tableViewModel = [[DemoTableViewModel alloc]init];
    }
    return _tableViewModel;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableViewModel handleWithTable:self.DemoTableview];
    
    [self.viewModel requestFromService:^(id responseObject) {
        [self reloadWithModelArray:responseObject];
    } failure:^(NSError *error) {
        
    }];
    
}

- (void)reloadWithModelArray:(NSArray *)responseObject
{
    [self.tableViewModel getDataWithModel:^NSArray *{
        return responseObject;
    } completion:^{
        [self.DemoTableview reloadData];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
