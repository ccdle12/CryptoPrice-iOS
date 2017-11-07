//
//  ExchangeDelegate.h
//  CryptoPrice-iOS
//
//  Created by Christopher Coverdale on 07/11/2017.
//  Copyright © 2017 Christopher Coverdale. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ExchangeDelegate <NSObject>
-(void) exchangeStateHasChanged:(NSString* )exchange :(int)coinID;
@end
