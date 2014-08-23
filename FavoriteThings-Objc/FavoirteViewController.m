//
//  FavoirteViewController.m
//  FavoriteThings-Objc
//
//  Created by Joshua Howland on 8/23/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "FavoirteViewController.h"

@interface FavoirteViewController ()

@property (nonatomic, strong) UIButton *button;
@property (nonatomic, strong) UILabel *label;

@end

@implementation FavoirteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.button = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.button setTitle:@"Press me" forState:UIControlStateNormal];
    self.button.frame = CGRectMake(100, 100, 120, 44);
    [self.button addTarget:self action:@selector(changeText:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button];
    
    self.label = [UILabel new];
    self.label.text = @"Change me";
    self.label.textAlignment = NSTextAlignmentCenter;
    self.label.frame = CGRectMake(50, 300, 220, 44);
    [self.view addSubview:self.label];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeText:(id)sender {
    [self.button setTitle:@"Pressed" forState:UIControlStateNormal];
    self.label.text = @"You changed me!";
}

@end
