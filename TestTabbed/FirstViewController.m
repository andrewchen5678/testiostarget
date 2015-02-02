//
//  FirstViewController.m
//  TestTabbed
//
//  Created by Andrew Chen on 2/1/15.
//  Copyright (c) 2015 Andrew Chen. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@property (weak, nonatomic) IBOutlet UILabel *testLabel;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSDictionary *dict=[self loadPlist];
    _testLabel.text=dict[@"testkey"];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSDictionary *)loadPlist {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"test" ofType:@"plist"];
    return [[NSDictionary alloc] initWithContentsOfFile:path];
};

@end
