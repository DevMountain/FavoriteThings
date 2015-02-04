//
//  FavoriteViewController.m
//  FavoriteThings-Objc
//
//  Created by Joshua Howland on 8/23/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "FavoriteViewController.h"

@interface FavoriteViewController () <UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation FavoriteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.tableView = [UITableView new];
    self.tableView.dataSource = self;
    self.tableView.frame = self.view.bounds;
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    
    [self.view addSubview:self.tableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

# pragma mark - UITableView Datasource Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self favoriteThings].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];

    cell.textLabel.text = [self favoriteThings][indexPath.row];
    return cell;
}

- (NSArray *)favoriteThings {
    return @[@"Model S", @"BYU Football", @"BYU Basketball", @"iPhone", @"Mac", @"Podcasts", @"LOST"];
}

@end
