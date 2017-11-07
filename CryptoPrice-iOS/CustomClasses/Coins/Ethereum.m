//
//  Ethereum.m
//  CryptoPrice-iOS
//
//  Created by Christopher Coverdale on 07/11/2017.
//  Copyright © 2017 Christopher Coverdale. All rights reserved.
//

#import "Ethereum.h"

@implementation Ethereum

#pragma mark - Setup and Constructor Methods
-(id) init
{
    self = [super init];
    
    if (self)
    {
        self.id = 1;
        self.USDPrice = -1;
        self.ticker = @"ETH";
    }
    
    return self;
}

@end
