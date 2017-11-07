//
//  Coinbase.m
//  CryptoPrice-iOS
//
//  Created by Christopher Coverdale on 03/11/2017.
//  Copyright © 2017 Christopher Coverdale. All rights reserved.
//

#import "Coinbase.h"

@implementation Coinbase

-(id) init
{
    self = [super init];
    
    if (self)
    {
        self.exchangeName = @"Coinbase";
        self.URL = [NSString stringWithFormat:@"https://api.coinbase.com/v2/prices/%@-USD/spot", self.bitcoin.ticker];
        self.header = @"Authorization: Bearer abd90df5f27a7b170cd775abf89d632b350b7c1c9d53e08b340cd9832ce52c2c";
        self.exchangeID = 0;
    }
    
    return self;
}

@end
