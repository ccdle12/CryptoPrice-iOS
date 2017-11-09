//
//  PFDataManagerTests.m
//  CryptoPrice-iOSTests
//
//  Created by Christopher Coverdale on 09/11/2017.
//  Copyright © 2017 Christopher Coverdale. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "PFDataManager.h"
#import "ExchangesGraph.h"

@interface PFDataManagerTests : XCTestCase
@property PFDataManager* pfDataManager;
@property ExchangesGraph* exchangesGraph;
@end

@implementation PFDataManagerTests

- (void)setUp
{
    self.pfDataManager = [[PFDataManager alloc] init];
    self.exchangesGraph = [ExchangesGraph instanceOfExchangesGraph];
    [super setUp];
}

- (void)tearDown
{

    [super tearDown];
}

- (void)testPricesOnExchangeHasBeenUpdatedOnCoinbase
{
    Exchange* coinbase = [self.exchangesGraph getExchange:@"Coinbase"];
    double prevUSDPrice = coinbase.bitcoin.USDPrice;
    
    [self.pfDataManager updatePricesOnExchange:coinbase.exchangeName];
    
    [NSThread sleepForTimeInterval:5];
    
    double updatedUSDPrice = coinbase.bitcoin.USDPrice;
    
    XCTAssertTrue(prevUSDPrice != updatedUSDPrice);
}

-(void) testNonExistentExchangeIsNullAndMakesNoHTTPRequest
{
    Exchange* coinbase = [self.exchangesGraph getExchange:@"blaah"];
    
    [self.pfDataManager updatePricesOnExchange:@"blaaah"];
    
    XCTAssertTrue(!coinbase);
}

- (void)testPerformanceExample
{

    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
