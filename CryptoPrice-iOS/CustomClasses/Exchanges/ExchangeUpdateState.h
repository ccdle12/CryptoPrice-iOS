//
//  CoinPriceUpdate.h
//  CryptoPrice-iOS
//
//  Created by Christopher Coverdale on 03/11/2017.
//  Copyright © 2017 Christopher Coverdale. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ExchangeUpdateState <NSObject>
-(void) exchangeUpdatePrice:(NSString* )exchange :(int) coinID;
@end
