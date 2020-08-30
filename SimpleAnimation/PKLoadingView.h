//
//  PKLoadingView.h
//  SimpleAnimation
//
//  Created by Pawan kumar on 1/20/17.
//  Copyright © 2017 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PKLoadingView : UIView

+ (void)show;
+ (void)showWithMessage:(NSString*)message;
+ (void)hide;

@property (nonatomic, strong) UILabel *label;

@end
