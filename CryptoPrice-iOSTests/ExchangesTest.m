//
//  ExchangesTest.m
//  CryptoPrice-iOSTests
//
//  Created by Christopher Coverdale on 09/11/2017.
//  Copyright © 2017 Christopher Coverdale. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Exchange.h"
#import "PFDataManager.h"

@interface ExchangesTest : XCTestCase
@property Exchange* exchange;
@property PFDataManager* pfDataManager;
@end

@implementation ExchangesTest

-(void) setUp
{
    [super setUp];
    
    self.exchange = [[Exchange alloc] init];
    self.pfDataManager = [[PFDataManager alloc] init];
    
    [self.exchange setExchangeDelegate:self.pfDataManager];
}

-(void) tearDown
{
    [super tearDown];
}

-(void) testExchangeIsNotNull
{
    XCTAssertTrue(self.exchange);
}

-(void) testCanAccessBitcoinPrice
{
    double USDPrice = self.exchange.bitcoin.USDPrice;
    XCTAssertEqual(-1.0, USDPrice);
}

-(void) testRetrievingDataCorrectly
{
    [self.exchange exchangeUpdatePrice:self.exchange :0];
    CryptoCurrency* updatedCoin = [self.exchange.coins objectAtIndex:0];
    
    [NSThread sleepForTimeInterval:5];
    
    XCTAssertTrue(updatedCoin.USDPrice > 0);
}

@end
