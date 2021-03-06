# Loading-Animation
## Loading Animation Indicator for process any task.

Added Some screens here.

![](https://github.com/pawankv89/Loading-Animation/blob/master/images/Screen_1.png)
![](https://github.com/pawankv89/Loading-Animation/blob/master/images/Screen_2.png)
![](https://github.com/pawankv89/Loading-Animation/blob/master/images/Screen_3.png)
![](https://github.com/pawankv89/Loading-Animation/blob/master/images/Screen_4.png)

## Usage

#### Controller

```swift

#import "PKLoadingView.h"

@implementation PKLoadingView

+ (instancetype)privateInstance
{
    static dispatch_once_t once;
    static PKLoadingView *privateInstance;
    dispatch_once(&once, ^{
        privateInstance = [[self alloc] init];
    });
    return privateInstance;
}

+ (void)show
{
    PKLoadingView *loadingView = [PKLoadingView privateInstance];
    
    UIWindow *keyWindow = [[UIApplication sharedApplication] keyWindow];
    
    [UIView transitionWithView:keyWindow
                      duration:0.3
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        [keyWindow addSubview:loadingView];
                    }
                    completion:^(BOOL finished) {
                        
                    }];
    
}

+ (void)showWithMessage:(NSString*)message
{
    PKLoadingView *loadingView = [PKLoadingView privateInstance];
    loadingView.label.text = (message == nil) ? @"" : message;
    
    UIWindow *keyWindow = [[UIApplication sharedApplication] keyWindow];
    
    [UIView transitionWithView:keyWindow
                      duration:0.3
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        [keyWindow addSubview:loadingView];
                    }
                    completion:^(BOOL finished) {
                        
                    }];
}

+ (void)hide
{
    PKLoadingView *loadingView = [PKLoadingView privateInstance];
    [loadingView removeFromSuperview];
}

- (id)init
{
    self = [super init];
    if (self) {
        
        // Background with alpha so the view is transculent.
        self.backgroundColor = [UIColor colorWithWhite:0.1
                                                 alpha:0.1];
        
        // Get the size of the entire screen
        CGRect screenRect = [[UIScreen mainScreen] bounds];
        
        // Set the frame for this view to be equal to the screen size
        self.frame = CGRectMake(0, 0, screenRect.size.width, screenRect.size.height);
        
        //Loding ImageView
        NSMutableArray *images = [[NSMutableArray alloc] initWithObjects:[UIImage imageNamed:@"pkLogo_1.png"],[UIImage imageNamed:@"pkLogo_2.png"],[UIImage imageNamed:@"pkLogo_3.png"],[UIImage imageNamed:@"pkLogo_4.png"],[UIImage imageNamed:@"pkLogo_5.png"],[UIImage imageNamed:@"pkLogo_4.png"],[UIImage imageNamed:@"pkLogo_3.png"],[UIImage imageNamed:@"pkLogo_2.png"],[UIImage imageNamed:@"pkLogo_1.png"], nil];
        
        CGFloat imageSize = 100;
        // Normal Animation
        UIImageView *animationImageView = [[UIImageView alloc] initWithFrame:CGRectMake((screenRect.size.width-imageSize)/2, (screenRect.size.height-imageSize)/2, imageSize, imageSize)];
        animationImageView.animationImages = images;
        animationImageView.animationDuration = 1.5;
        
        [self addSubview:animationImageView];
        [animationImageView startAnimating];
        
        // Let's create a label
        self.label = [[UILabel alloc] initWithFrame:CGRectMake(50, animationImageView.frame.origin.y+60, CGRectGetWidth(self.bounds)-50*2, 100)];
        self.label.numberOfLines = 0;
        //label.center = self.center;
        self.label.textAlignment = NSTextAlignmentCenter;
        self.label.textColor=[UIColor grayColor];
        self.label.text = @"";//@"Loading"
        [self addSubview:self.label];
    }
    return self;
}

@end

```

## Requirements

### Build

Xcode Version 11.3 (11C29), iOS 13.2.0 SDK

## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE).

## Change-log

A brief summary of each this release can be found in the [CHANGELOG](CHANGELOG.mdown). 
