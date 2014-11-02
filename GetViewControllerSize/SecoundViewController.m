//
//  SecoundViewController.m
//  GetViewControllerSize
//
//  Created by spider1203 on 2014/11/2.
//  Copyright (c) 2014年 kylelin. All rights reserved.
//

#import "SecoundViewController.h"

@interface SecoundViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lblPreText;

@end

@implementation SecoundViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
#pragma mark ---指定字串給label---
    _lblPreText.text = _preString;
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
