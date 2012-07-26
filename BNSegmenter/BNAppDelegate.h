//
//  BNAppDelegate.h
//  BNSegmenter
//
//  Created by Tatsuya Tobioka on 12/07/26.
//  Copyright (c) 2012年 Tatsuya Tobioka. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BNAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

// segment test
@property (assign) IBOutlet NSTextField *inputField;
@property (assign) IBOutlet NSTextField *outputField;
- (IBAction)segmentAction:(id)sender;

@end
