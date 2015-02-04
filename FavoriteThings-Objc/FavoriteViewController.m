//
//  FavoriteViewController.m
//  FavoriteThings-Objc
//
//  Created by Joshua Howland on 8/23/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "FavoriteViewController.h"
#import "FavoriteThingsTableViewDataSource.h"

@interface FavoriteViewController ()

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) FavoriteThingsTableViewDataSource *dataSource;

@end

@implementation FavoriteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tableView = [UITableView new];
    self.tableView.frame = self.view.bounds;
    
    self.dataSource = [FavoriteThingsTableViewDataSource new];
    [self.dataSource registerTableView:self.tableView];
    
    self.tableView.dataSource = self.dataSource;
    
    [self.view addSubview:self.tableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
