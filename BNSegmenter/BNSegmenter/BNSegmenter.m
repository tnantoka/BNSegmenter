//
//  BNSegmenter.m
//  BNSegmenter
//
//  Created by Tatsuya Tobioka on 12/07/26.
//  Copyright (c) 2012年 Tatsuya Tobioka. All rights reserved.
//

#import "BNSegmenter.h"

@implementation BNSegmenter

static BNSegmenter *_sharedInstance = nil;

# pragma mark - Initialization

+ (BNSegmenter *)shared {
    if (!_sharedInstance) {
        _sharedInstance = [[BNSegmenter alloc] init];
    }
    return _sharedInstance;
}

- (id)init {
    self = [super init];
    if (self) {
    }
    return self;
}

# pragma mark - utilities

/**
 * Morphological Analysis by CFStringTokenizer
 *
 * Thanks
 * https://github.com/oomori/CFStringTokenizer
 * http://d.hatena.ne.jp/monsierPIXY/20111216/1323987094
 */
- (NSArray *)segment:(NSString *)string {
    NSMutableArray *segments = [NSMutableArray array];
    
    CFLocaleRef locale = CFLocaleCopyCurrent();
    CFRange range = CFRangeMake(0, [string length]);
    
    CFStringTokenizerRef tokenizer = CFStringTokenizerCreate(kCFAllocatorDefault,
                                                             (CFStringRef)string,
                                                             range,
                                                             kCFStringTokenizerUnitWordBoundary,
                                                             locale);
    
    //CFStringTokenizerTokenType tokenType = CFStringTokenizerGoToTokenAtIndex(tokenizer, 0);
    CFStringTokenizerTokenType tokenType = CFStringTokenizerAdvanceToNextToken(tokenizer);
    
    while (tokenType != kCFStringTokenizerTokenNone) {
        range = CFStringTokenizerGetCurrentTokenRange(tokenizer);
        NSString *segment = [string substringWithRange:NSMakeRange(range.location, range.length)];
        [segments addObject:segment];
        tokenType = CFStringTokenizerAdvanceToNextToken(tokenizer);
    }
    
    CFRelease(locale);
    CFRelease(tokenizer);
    
    return segments;
}

- (NSString *)separate:(NSString *)string separator:(NSString *)separator {
    NSString *joined = [[self segment:string] componentsJoinedByString:separator];
    return joined;
}

@end
