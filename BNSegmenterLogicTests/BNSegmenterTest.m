//
//  BNSegmenterTest.m
//  BNSegmenter
//
//  Created by Tatsuya Tobioka on 12/07/26.
//  Copyright (c) 2012年 Tatsuya Tobioka. All rights reserved.
//

#import "BNSegmenterTest.h"

#import "BNSegmenter.h"


@interface BNSegmenterTest()
@end


@implementation BNSegmenterTest

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testSegment
{
    NSString *string = @"すもももももももものうち";
    NSString *segmented = @"すもも|も|もも|も|もも|の|うち";
    NSString *separeted = [[BNSegmenter shared] separate:string separator:@"|"];
    STAssertEqualObjects(separeted, segmented, [NSString stringWithFormat:@"segments should equal %@", segmented]);
}

@end
