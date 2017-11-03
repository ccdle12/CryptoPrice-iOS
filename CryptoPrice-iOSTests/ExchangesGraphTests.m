//
//  ExchangesGraphTests.m
//  CryptoPrice-iOSTests
//
//  Created by Christopher Coverdale on 03/11/2017.
//  Copyright © 2017 Christopher Coverdale. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ExchangesGraph.h"

@interface ExchangesGraphTests : XCTestCase
@property ExchangesGraph* exchangesGraph;
@end

@implementation ExchangesGraphTests
    
- (void)setUp
{
    [super setUp];
    self.exchangesGraph = [ExchangesGraph instanceOfExchangesGraph];
}

- (void)tearDown
{

    [super tearDown];
}

/** Test Cases **/
- (void)testExchangesGraphIsNotNull
{
    XCTAssertTrue(self.exchangesGraph);
}

-(void)testRetrievedExchangesIsNotNull
{
    XCTAssertTrue([self.exchangesGraph getExchange:@"Coinbase"]);
}

- (void)testPerformanceExample
{
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
