//
//  ThymeBombMenuController.h
//  ThymeBomb
//
//  Created by Matt Gray on 30/05/2011.
//  Copyright 2011 mattg.co.uk. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ThymeBombMenuController : NSMenu {
@private
    NSTimer *timer;
    
}

- (IBAction)setTimer: (id)pId;
- (IBAction)stopTimer: (id)pId;

- (void)timerDone;

@end
