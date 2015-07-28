//
//  CYHViewController.m
//  HalfSugarProject
//
//  Created by mac on 15-7-28.
//  Copyright (c) 2015年 陈一航. All rights reserved.
//

#import "CYHViewController.h"

@interface CYHViewController ()
@property (weak, nonatomic) IBOutlet UIView *lineView;

@property (weak, nonatomic) IBOutlet UILabel *launchLabel1;

@property (weak, nonatomic) IBOutlet UILabel *launchLabel2;
@property (weak, nonatomic) IBOutlet UILabel *launchLabel3;

@property (weak, nonatomic) IBOutlet UILabel *launchLabel4;

@end

@implementation CYHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //这块可以做一个启动界面...
    
   
    _lineView.hidden=YES;
    _launchLabel1.alpha=0;
    _launchLabel2.alpha=0;
    _launchLabel3.alpha=0;
    _launchLabel4.alpha=0;
    
    
    [self performSelector:@selector(launchMainView) withObject:self afterDelay:2];
    
}


-(void)launchMainView
{
    
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:1.0F];
    [UIView setAnimationRepeatCount:1];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
   
    _launchLabel1.alpha=1;
    [_launchLabel1 setText:@"全世界"];
    _lineView.hidden=NO;
    
    [UIView setAnimationDidStopSelector:@selector(label2HiddenNo)];
    [UIView commitAnimations];

}

-(void)label2HiddenNo
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:3.0F];
    [UIView setAnimationRepeatCount:1];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    _launchLabel3.text=@"de";
    _launchLabel3.alpha=1;
    _launchLabel4.text=@"好";
    _launchLabel4.alpha=1;
    _launchLabel2.text=@"东西";
    _launchLabel2.alpha=1;
    [UIView setAnimationDidStopSelector:@selector(MainViewDisplay)];
    [UIView commitAnimations];

}



-(void)MainViewDisplay
{
    
    NSLog(@"主视图开始");

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
