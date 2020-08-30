//
//  SecondVC.m
//  SimpleAnimation
//
//  Created by Pawan kumar on 1/19/17.
//  Copyright © 2017 Appcoda. All rights reserved.
//

#import "SecondVC.h"
#import "PKLoadingView.h"


@interface SecondVC ()

@end

@implementation SecondVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Second";

    [PKLoadingView showWithMessage:@"We are waiting for hide Loading View"];
     
    [self performSelector:@selector(dismissView) withObject:nil afterDelay:10];
}

-(void)dismissView{
    
    //[PKProgressView dismiss];
    
    [PKLoadingView hide];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
