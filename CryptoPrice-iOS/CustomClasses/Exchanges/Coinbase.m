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
        [self initSuperClassCoins];
    }
    
    return self;
}

-(void) initSuperClassCoins
{
    self.bitcoin = [[Bitcoin alloc] init];
    [self.coins insertObject:self.bitcoin atIndex:self.bitcoin.id];
}

@end
