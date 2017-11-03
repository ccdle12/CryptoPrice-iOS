//
//  CoinPriceUpdate.h
//  CryptoPrice-iOS
//
//  Created by Christopher Coverdale on 03/11/2017.
//  Copyright © 2017 Christopher Coverdale. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CoinPriceUpdate <NSObject>
-(NSString*) getUpdatedPrice:(int) coinID;
@end
