//
//  PPSOptionsViewController.m
//  PositivePersons
//
//  Created by ZHUYN on 2018/5/16.
//  Copyright © 2018年 zynabc. All rights reserved.
//

#import "PPSOptionsViewController.h"
#import "PPSRefreshHeader.h"
#import "PPSRefreshFooter.h"
#import "PPSOptionsTableViewModel.h"
#import "PPSOptionsTableViewDelegate.h"
#import "PPSOptionsTableViewDataSource.h"
#import "PPSOptionModel.h"
#import <Security/Security.h>

@interface PPSOptionsViewController ()

@property (nonatomic, weak) UITableView *tableView;
@property (nonatomic, strong) PPSRefreshHeader *refreshHeader;
@property (nonatomic, strong) PPSRefreshFooter *refreshFooter;
@property (nonatomic, strong) NSMutableArray *dataArray;
@property (nonatomic, strong) PPSOptionsTableViewModel *tableViewModel;
@property (nonatomic, strong) PPSOptionsTableViewDataSource *tableViewDataSource;
@property (nonatomic, strong) PPSOptionsTableViewDelegate *tableViewDelegate;
@property (nonatomic, strong) UIDocumentInteractionController *documentInteractionController;
@end

@implementation PPSOptionsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    // 1.初始化
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    self.tableView = tableView;
    tableView.tableFooterView = [UIView new];
    [self.view addSubview:tableView];
    
    // 2.数据和业务的分离
    self.tableViewModel = [[PPSOptionsTableViewModel alloc] init];
    
    // 3.代理事件相关数据及业务的进一步分离
    self.tableViewDelegate = [[PPSOptionsTableViewDelegate alloc] init];
    self.tableView.delegate = self.tableViewDelegate;
    self.tableViewDataSource = [[PPSOptionsTableViewDataSource alloc] init];
    self.tableView.dataSource = self.tableViewDataSource;
    
    // temp
    self.tableViewDataSource.dataArray = [PPSOptionModel mj_objectArrayWithKeyValuesArray:@[@{@"contentStr": @"时间正在一分一秒的流逝"},@{@"contentStr": @"过去的永不再回来"}, @{@"contentStr": @"你感到遗憾吗"}, @{@"contentStr": @"而此刻也正在变成过去"}]];
    
    //    YiRefreshHeader  头部刷新按钮的使用
//    self.refreshHeader = [[PPSRefreshHeader alloc] init];
//    self.refreshHeader.scrollView = self.tableView;
//    [self.refreshHeader header];
//    __weak typeof(self) weakSelf = self;
//    refreshHeader.beginRefreshingBlock=^(){
//        __strong typeof(self) strongSelf = weakSelf;
//        [strongSelf headerRefreshAction];
//    };
//    
//    //    是否在进入该界面的时候就开始进入刷新状态
//    [refreshHeader beginRefreshing];
//
//    //    YiRefreshFooter  底部刷新按钮的使用
//    refreshFooter=[[YiRefreshFooter alloc] init];
//    refreshFooter.scrollView=tableView;
//    [refreshFooter footer];
//
//    refreshFooter.beginRefreshingBlock=^(){
//        __strong typeof(self) strongSelf = weakSelf;
//        [strongSelf footerRefreshAction];
//    };
    
//    self.documentInteractionController = [UIDocumentInteractionController interactionControllerWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"free_resume" ofType:@"html" inDirectory:@"awesomeResume/free"]]];
//    self.documentInteractionController.delegate = self;
//    [self.documentInteractionController presentOpenInMenuFromRect:self.view.bounds inView:self.view animated:YES];

//    UIActivityViewController *controller = [[UIActivityViewController alloc] initWithActivityItems:@[@"123"] applicationActivities:nil];
//    [self presentViewController:controller animated:YES completion:nil];
    
    
    
    
    

}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
