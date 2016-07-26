//
//  homeViewController.m
//  iOS原生二维码
//
//  Created by mac on 16/5/26.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "homeViewController.h"
#import "lhScanQCodeViewController.h"
@interface homeViewController ()

@end

@implementation homeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"sweep.png"] style:UIBarButtonItemStyleDone target:self action:@selector(jumpToScanning)];
    UIButton *ScanButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 64, 100, 30)];
    [ScanButton setTitle:@"扫描二维码" forState:UIControlStateNormal];
    ScanButton.backgroundColor = [UIColor grayColor];
    [ScanButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [ScanButton addTarget:self action:@selector(jumpToScanning) forControlEvents:UIControlEventTouchUpInside];
    ScanButton.titleLabel.font = [UIFont systemFontOfSize:14];
    [self.view addSubview:ScanButton];
    
}

- (void)jumpToScanning {
    lhScanQCodeViewController *scan = [[lhScanQCodeViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:scan];
    [self presentViewController:nav animated:YES completion:nil];

}

@end
