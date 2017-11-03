//
//  Exchange.h
//  CryptoPrice-iOS
//
//  Created by Christopher Coverdale on 03/11/2017.
//  Copyright © 2017 Christopher Coverdale. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bitcoin.h"
#import "CoinPriceUpdate.h"

@interface Exchange : NSObject <CoinPriceUpdate>
@property NSString* exchangeName;
@property NSString* URL;
@property NSString* header;
@property Bitcoin* bitcoin;

@property NSMutableArray* coins;

@end
