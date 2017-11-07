//
//  Litcoin.m
//  CryptoPrice-iOS
//
//  Created by Christopher Coverdale on 07/11/2017.
//  Copyright © 2017 Christopher Coverdale. All rights reserved.
//

#import "Litecoin.h"

@implementation Litecoin

#pragma mark - Setup and Constructor Methods
-(id) init
{
    self = [super init];
    
    if (self)
    {
        self.id = 2;
        self.USDPrice = -1;
        self.ticker = @"LTC";
    }
    
    return self;
}
@end
