//
//  Exchange.h
//  CryptoPrice-iOS
//
//  Created by Christopher Coverdale on 03/11/2017.
//  Copyright © 2017 Christopher Coverdale. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bitcoin.h"
#import "Ethereum.h"
#import "Litecoin.h"
#import "ExchangeUpdateState.h"
#import "ExchangeDelegate.h"

@interface Exchange : NSObject <ExchangeUpdateState>

@property NSString* exchangeName;
@property int coinCount;

@property NSString* URL;
@property NSString* header;
@property Bitcoin* bitcoin;
@property Ethereum* ethereum;
@property Litecoin* litecoin;
@property id<ExchangeDelegate> exchangeDelegate;
@property NSMutableArray* coins;
@property int exchangeID;

- (void) exchangeUpdatePrice:(Exchange*)exchange :(int)coinID;

@end
