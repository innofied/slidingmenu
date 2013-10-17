//
//  SlidingMenuViewController.m
//  SlidingMenu
//
//  Created by Sandip Saha on 17/10/13.
//  Copyright (c) 2013 innofied.com. All rights reserved.
//

#import "SlidingMenuViewController.h"

@interface SlidingMenuViewController ()
@property (weak, nonatomic) IBOutlet UIView *slidingDockView;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (weak, nonatomic) IBOutlet UIImageView *slidingDockImage;
@property (weak, nonatomic) IBOutlet UIView *viewBottom;



//image to be manipulated
@property (weak, nonatomic) UIImage *image;
@property (weak, nonatomic) UIImage *temporaryImage;


@end

@implementation SlidingMenuViewController
@synthesize slidingDockView, slidingDockImage;
@synthesize imageView;
@synthesize viewBottom;

@synthesize image, temporaryImage;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated
{
    
    image = [UIImage imageNamed:@"bigben.jpg"];
    
    // setting a default image in background

    imageView.image = image;
    slidingDockView.frame = CGRectMake(-85, 0, 100, 410);
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)swipeToDisappearDock:(id)sender {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.3];
    slidingDockView.frame = CGRectMake(-85, 0, 100, 410);
    
    [UIView commitAnimations];
    
    NSLog(@"swipe left");

    
}



- (IBAction)SwipeToAppearDock:(id)sender {
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.3];
    slidingDockView.frame = CGRectMake(0, 0, 100, 410);
    
    [UIView commitAnimations];
    
    NSLog(@"swipe R8");
    
}








@end
