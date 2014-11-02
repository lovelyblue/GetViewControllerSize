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
#pragma mark ---註冊Notification事件---
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(orientationChangeOccur) name:UIDeviceOrientationDidChangeNotification object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
#pragma mark ---指定字串給label---
    _lblPreText.text = _preString;
    
#pragma mark ---判定這是什麼樣的裝置---
    if (self.traitCollection.userInterfaceIdiom == UIUserInterfaceIdiomPad)
    {
        NSLog(@"This is a iPad screen");
    }
    
    if (self.traitCollection.userInterfaceIdiom == UIUserInterfaceIdiomPhone) {
        NSLog(@"This is a iPhone screen");
    }
    
}

-(void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
{
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
#pragma mark ---判斷是哪種方向---
    UIDeviceOrientation orientation = [UIDevice currentDevice].orientation;
    
    if (orientation == UIDeviceOrientationLandscapeLeft) {
        NSLog(@"橫的左邊");
    }
    
    if (orientation == UIDeviceOrientationLandscapeRight) {
        NSLog(@"橫的右邊");
    }
    
    if (orientation == UIDeviceOrientationPortrait) {
        NSLog(@"正的 portrait");
    }
    
    if (orientation == UIDeviceOrientationPortraitUpsideDown) {
        NSLog(@"portrait上下顛倒");
    }
    
    NSLog(@"Size W:%f, H:%f",size.width,size.height);
}

#pragma mark ---Orientation change Notification---
-(void)orientationChangeOccur
{
    NSLog(@"orientationChangeOccur Notification");
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
