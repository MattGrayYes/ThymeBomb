//
//  ThymeBombAppDelegate.h
//  ThymeBomb
//
//  Created by Matt Gray on 30/05/2011.
//  Copyright 2011 mattg.co.uk. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ThymeBombAppDelegate : NSObject <NSApplicationDelegate> {
@private
    NSWindow *window;
    IBOutlet NSMenu *statusMenu;
    NSStatusItem *statusItem;
    NSImage *statusImage;
    NSImage *statusImageHighlight;
}

@property (assign) IBOutlet NSWindow *window;

@end
