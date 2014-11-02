//
//  ViewController.m
//  GetViewControllerSize
//
//  Created by spider1203 on 2014/11/2.
//  Copyright (c) 2014年 kylelin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
#pragma mark ---用程式碼加入一個按鈕---
    UIButton* aButton = [[UIButton alloc] init];
    [aButton setFrame:CGRectMake(0, 0, 200, 40)];
    [aButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [aButton setBackgroundColor:[UIColor blueColor]];
    [aButton setTitle:@"I am a Button." forState:UIControlStateNormal];
    [[self view] addSubview:aButton];
    
#pragma mark ---搜尋subView內有幾個按鈕---
    for (ViewController* vc in [[self view] subviews]) {
        if ([vc isKindOfClass:[UIButton class]]) {
            NSLog(@"I am a Button");
        }
    }
}

-(void)viewWillAppear:(BOOL)animated
{
//    [super viewWillAppear:animated];
//    UIButton* aButton = [[UIButton alloc] init];
//    [aButton setFrame:CGRectMake(0, 0, 200, 40)];
//    [aButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
//    [aButton setBackgroundColor:[UIColor blueColor]];
//    //    [[[self view] constraints] ]
//    [aButton setTitle:@"I am a Button." forState:UIControlStateNormal];
//    [_lblTitle addSubview:aButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"nextPageSegue"]) {
        SecoundViewController* nextViewController = [segue destinationViewController];
        [nextViewController setPreString:@"我是第二頁"];
    }
    NSLog(@"Page1 prepareForSegue");
}
@end
