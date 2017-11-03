//
//  Bitcoin.m
//  CryptoPrice-iOS
//
//  Created by Christopher Coverdale on 03/11/2017.
//  Copyright © 2017 Christopher Coverdale. All rights reserved.
//

#import "Bitcoin.h"

@implementation Bitcoin

-(id) initWithPrice:(double) price
{
    self = [super init];
    
    if (self)
    {
        self.ticker = @"BTC";
        self.USDPrice = price;
    }
    
    return self;
}

@end
