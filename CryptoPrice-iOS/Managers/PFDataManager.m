//
//  PFDataManager.m
//  CryptoPrice-iOS
//
//  Created by Christopher Coverdale on 03/11/2017.
//  Copyright © 2017 Christopher Coverdale. All rights reserved.
//

#import "PFDataManager.h"
#import "ExchangesGraph.h"

@interface PFDataManager()
{
    ExchangesGraph* exchangesGraph;
}
@end

@implementation PFDataManager


#pragma marks - Setup and Constructor Methods
-(id) init
{
    self = [super init];
    
    if (self)
    {
        exchangesGraph = [ExchangesGraph instanceOfExchangesGraph];
    }
    
    return self;
}


#pragma marks - Calls to update prices **/
-(void) updateAllPrices
{
    NSMutableArray* exchangesArrayList = exchangesGraph.exchangesArrayList;

    for (Exchange* eachExchange in exchangesArrayList)
    {
        for (int i = 0; i < eachExchange.coinCount; i++)
            [self getUpdatedPrice:eachExchange :i];
    }
}

-(void) getUpdatedPrice:(Exchange*)exchange :(int)coinID
{
    Exchange* requestedExchange = [exchangesGraph getExchange:exchange.exchangeName];
    requestedExchange.exchangeDelegate = self;
    [requestedExchange exchangeUpdatePrice:exchange :coinID];
}

- (void)exchangeStateHasChanged:(NSString *)exchange :(int)coinID
{
    Exchange* requestedExchange = [exchangesGraph getExchange:exchange];
    
    CryptoCurrency* updatedCoin = [requestedExchange.coins objectAtIndex:coinID];
    NSLog(@"Exchange: %@", exchange);
    NSLog(@"Coin that was updated: %@", updatedCoin.ticker);
    NSLog(@"Call back coin price: %f", updatedCoin.USDPrice);

}

@end
