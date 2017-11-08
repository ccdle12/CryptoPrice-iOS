//
//  Exchange.m
//  CryptoPrice-iOS
//
//  Created by Christopher Coverdale on 03/11/2017.
//  Copyright © 2017 Christopher Coverdale. All rights reserved.
//

#import "Exchange.h"
#import "PFNetworkUtils.h"

@implementation Exchange

-(id) init
{
    self = [super init];
    
    if (self)
    {
        self.coins = [[NSMutableArray alloc] initWithCapacity:3];
        [self initCoins];
    }
    
    return self;
}

-(void) initCoins
{
    self.bitcoin = [[Bitcoin alloc] init];
    self.ethereum = [[Ethereum alloc] init];
    self.litecoin = [[Litecoin alloc] init];
    
    [self.coins addObject:self.bitcoin];
    [self.coins addObject:self.ethereum];
    [self.coins addObject:self.litecoin];
    
    NSUInteger* sizeOfCoins = [self.coins count];
    self.coinCount = sizeOfCoins;
}

- (void) exchangeUpdatePrice:(Exchange*)exchange :(int)coinID
{
    CryptoCurrency* coin = [self.coins objectAtIndex:coinID];
    NSURL* url = [[PFNetworkUtils instanceOfPFNetworkUtils] getUpdatedPrice:exchange.exchangeID :coin.ticker];
    
    /** Async Call for http request - Not ideal place to call it**/
    [[[NSURLSession sharedSession] dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        NSDictionary* unserializedData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
        
        NSDictionary* serializedDataObject = [unserializedData objectForKey:@"data"];
        NSString* amount = [serializedDataObject objectForKey:@"amount"];
        
        double USDPrice = [amount doubleValue];
        coin.USDPrice = USDPrice;
        
        [self.exchangeDelegate exchangeStateHasChanged:exchange.exchangeName :coinID];
    }] resume];
}

@end
