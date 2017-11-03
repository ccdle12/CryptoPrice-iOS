//
//  PFDashboardVC.m
//  CryptoPrice-iOSTests
//
//  Created by Christopher Coverdale on 03/11/2017.
//  Copyright © 2017 Christopher Coverdale. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "PFDashboardVC.h"

@interface PFDashboardVCTests : XCTestCase
    @property PFDashboardVC* pfDashboardVC;
@end

@implementation PFDashboardVCTests

- (void)setUp
{
    [super setUp];
    self.pfDashboardVC = [[PFDashboardVC alloc] init];
}

- (void)tearDown
{
    [super tearDown];
}

/** Test Cases **/
-(void) testpfDashboardVCIsNotNull
{
    XCTAssert(self.pfDashboardVC);
}



- (void)testPerformanceExample
{
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
