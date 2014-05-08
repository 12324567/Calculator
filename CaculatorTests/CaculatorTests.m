//
//  CaculatorTests.m
//  CaculatorTests
//
//  Created by SDS on 5/6/14.
//  Copyright (c) 2014 SDS. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SDSViewController.h"
#import <objc/runtime.h>
@interface CaculatorTests : XCTestCase

@end
extern void __gcov_flush();
@implementation CaculatorTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    __gcov_flush();
    [super tearDown];
}
- (void)test_plus_twoNumber
{
    XCTAssert(2 + 2 == [SDSViewController plusTwoNumber:2 number:2], @"2 + 2 should be 4 but %d was returned instead", 2+2);
}

@end
