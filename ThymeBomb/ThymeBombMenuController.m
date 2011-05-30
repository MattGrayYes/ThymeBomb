//
//  ThymeBombMenuController.m
//  ThymeBomb
//
//  Created by Matt Gray on 30/05/2011.
//  Copyright 2011 mattg.co.uk. All rights reserved.
//

#import "ThymeBombMenuController.h"


@implementation ThymeBombMenuController

- (IBAction)setTimer: (id)pId;
{
    /*  
     * The tag for each menu item is set to the number of
     * minutes the timer should run for in most cases.
     */
    
    NSInteger tag = [pId tag];
    float duration;
    float minutes = 60;
    
    switch (tag) {
        case 5:
        case 10:
        case 15:
        case 30:
        case 45:
        case 60:
            duration = tag*minutes;
            break;
            
            
        default:
            duration = 1;
            break;
    }
    
    NSLog(@"Duration: %f", duration);
    timer = [NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(timerDone) userInfo:nil repeats:NO];
    
}

- (IBAction)stopTimer: (id)pId;
{
    NSLog(@"stopTimer");
    [timer invalidate];
}

- (void) timerDone
{
    NSLog(@"timerDone");
    NSSound *sound = [NSSound soundNamed:@"Glass"];
    
    [sound play];
}

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

@end
