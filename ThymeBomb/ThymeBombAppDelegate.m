//
//  ThymeBombAppDelegate.m
//  ThymeBomb
//
//  Created by Matt Gray on 30/05/2011.
//  Copyright 2011 mattg.co.uk. All rights reserved.
//

#import "ThymeBombAppDelegate.h"

@implementation ThymeBombAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (void)awakeFromNib
{
    // Make bundle to help find files?
    NSBundle *bundle = [NSBundle mainBundle];
    
    // allocate and load in images
    statusImage = [[[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:@"AlarmClock-Static" ofType:@"png"]] autorelease];
    statusImageHighlight = [[[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:@"AlarmClock-Active" ofType:@"png"]] autorelease];
    
    // make the status bar
    statusItem = [[[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength] retain];
    
    // load the menu
    [statusItem setMenu:statusMenu];
    
    //[statusItem setTitle:@"Status"];
    // setImage, and setAlternateImage are used to see img instead of txt.
    [statusItem setImage:statusImage];
    [statusItem setAlternateImage:statusImageHighlight];
    
    [statusItem setHighlightMode:YES];
}

@end
