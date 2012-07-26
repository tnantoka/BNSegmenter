//
//  BNSegmenter.h
//  BNSegmenter
//
//  Created by Tatsuya Tobioka on 12/07/26.
//  Copyright (c) 2012年 Tatsuya Tobioka. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNSegmenter : NSObject

+ (BNSegmenter *)shared;

- (NSArray *)segment:(NSString *)string;
- (NSString *)separate:(NSString *)string separator:(NSString *)separator;

@end
