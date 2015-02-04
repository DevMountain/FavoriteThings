//
//  FavoriteThingsTableViewDataSource.h
//  FavoriteThings-Objc
//
//  Created by Joshua Howland on 8/23/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface FavoriteThingsTableViewDataSource : NSObject <UITableViewDataSource>

- (void)registerTableView:(UITableView *)tableview;

@end
