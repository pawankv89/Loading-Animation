//
//  ViewController.m
//  SimpleAnimation
//
//  Created by Simon on 30/3/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import "ViewController.h"
#import "SecondVC.h"
#import "PKLoadingView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [PKLoadingView show];
    
    self.title = @"First" ;
    
    [self performSelector:@selector(SecondView) withObject:nil afterDelay:5];
}

-(void)SecondView{

    SecondVC *second =[self.storyboard instantiateViewControllerWithIdentifier:@"SecondVC"];
    [self.navigationController pushViewController:second animated:YES];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
