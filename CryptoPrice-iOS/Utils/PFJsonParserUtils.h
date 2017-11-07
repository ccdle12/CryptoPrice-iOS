//
//  PFJsonParserUtils.h
//  CryptoPrice-iOS
//
//  Created by Christopher Coverdale on 07/11/2017.
//  Copyright © 2017 Christopher Coverdale. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PFJsonParserUtils : NSObject
+(PFJsonParserUtils *) instanceOfPFJsonParserUtils;
-(double) parseCoinBaseJson:(NSString*) response;
@end
