//
//  MenuTrialFirstViewController.m
//  iPadTrial
//
//  Created by Tom Rohlf on 4/8/12.
//  Copyright (c) 2012 University of Wisconsin. All rights reserved.
//

#import "MenuTrialFirstViewController.h"

@interface MenuTrialFirstViewController ()

@end

@implementation MenuTrialFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

- (IBAction)handlePan:(UIPanGestureRecognizer *)recognizer {
    
    CGPoint translation = [recognizer translationInView:self.view];
    recognizer.view.center = CGPointMake(recognizer.view.center.x + translation.x, 
                                         recognizer.view.center.y + translation.y);
    [recognizer setTranslation:CGPointMake(0, 0) inView:self.view];
    
}@end
