//
//  PFDashboardPresenterTests.m
//  CryptoPrice-iOSTests
//
//  Created by Christopher Coverdale on 03/11/2017.
//  Copyright © 2017 Christopher Coverdale. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "PFDashboardPresenter.h"

@interface PFDashboardPresenterTests : XCTestCase
@property PFDashboardPresenter* pfDashboardPresenter;

@end

@implementation PFDashboardPresenterTests

- (void)setUp
{
    [super setUp];
    self.pfDashboardPresenter = [[PFDashboardPresenter alloc] init];

}

- (void)tearDown
{

    [super tearDown];
}

/** Test Cases **/
-(void) testpfDashboardPresenterIsNotNulll
{
    XCTAssert(self.pfDashboardPresenter);
}



- (void)testPerformanceExample
{
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
