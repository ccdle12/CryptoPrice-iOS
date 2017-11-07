//
//  PFNetworkUtils.h
//  CryptoPrice-iOS
//
//  Created by Christopher Coverdale on 07/11/2017.
//  Copyright © 2017 Christopher Coverdale. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PFNetworkUtils : NSObject
+(PFNetworkUtils *) instanceOfPFNetworkUtils;
-(double) getUpdatedPrice:(int) exchangeID :(NSString*)tickerSymbol;
@end
