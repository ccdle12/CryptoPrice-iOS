//
//  CryptoPrice_iOSTests.m
//  CryptoPrice-iOSTests
//
//  Created by Christopher Coverdale on 02/11/2017.
//  Copyright © 2017 Christopher Coverdale. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Bitcoin.h"

@interface CryptoPrice_iOSTests : XCTestCase
@property Bitcoin* bitcoin;
@end

@implementation CryptoPrice_iOSTests

- (void)setUp
{
    [super setUp];
    self.bitcoin = [[Bitcoin alloc] initWithPrice: 7000.54];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}



/** Tests **/
- (void)testBitcoinIsNotNull
{
    XCTAssert(self.bitcoin);
}

- (void)testCanAccessBitcoinPrice
{
    double expectedUSDPrice = 7000.54;
    double resultUSDPrice = self.bitcoin.USDPrice;
    
    XCTAssertEqual(expectedUSDPrice, resultUSDPrice);
}

-(void) testCanChangeBitcoinPrice
{
    self.bitcoin.USDPrice = 5000;
    XCTAssertEqual(5000, self.bitcoin.USDPrice);
}

-(void) testCanGetBTCTicker
{
    NSString* expectedResult = @"BTC";
    NSString* result = self.bitcoin.ticker;
    
    XCTAssertEqual(expectedResult, result);
}



- (void)testPerformanceExample
{
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
