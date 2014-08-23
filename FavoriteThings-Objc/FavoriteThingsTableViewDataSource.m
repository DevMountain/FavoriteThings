//
//  FavoriteThingsTableViewDataSource.m
//  FavoriteThings-Objc
//
//  Created by Joshua Howland on 8/23/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "FavoriteThingsTableViewDataSource.h"

@implementation FavoriteThingsTableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self favoriteThings].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [UITableViewCell new];
    }
    cell.textLabel.text = [self favoriteThings][indexPath.row];
    return cell;
}

- (NSArray *)favoriteThings {
    return @[@"Model S", @"BYU Football", @"BYU Basketball", @"iPhone", @"Mac", @"Podcasts", @"LOST"];
}

@end
