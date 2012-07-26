//
//  BNAppDelegate.m
//  BNSegmenter
//
//  Created by Tatsuya Tobioka on 12/07/26.
//  Copyright (c) 2012年 Tatsuya Tobioka. All rights reserved.
//

#import "BNAppDelegate.h"

#import "BNSegmenter.h"

@implementation BNAppDelegate

- (void)dealloc
{
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)segmentAction:(id)sender {
    NSString *inputText = _inputField.stringValue;
    if (inputText.length > 0) {
       _outputField.stringValue = [[BNSegmenter shared] separate:inputText separator:@"|"];
    }
}

@end
