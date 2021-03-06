//
//  ExchangesGraph.h
//  CryptoPrice-iOS
//
//  Created by Christopher Coverdale on 03/11/2017.
//  Copyright © 2017 Christopher Coverdale. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Exchange.h"

@interface ExchangesGraph : NSObject

 @property NSMutableArray* exchangesArrayList;
+(ExchangesGraph*) instanceOfExchangesGraph;
-(Exchange*) getExchange:(NSString*) exchange;
-(BOOL) containsExchange:(NSString*) exchange;
@end
