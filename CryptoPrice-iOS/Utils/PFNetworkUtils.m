//
//  PFNetworkUtils.m
//  CryptoPrice-iOS
//
//  Created by Christopher Coverdale on 07/11/2017.
//  Copyright © 2017 Christopher Coverdale. All rights reserved.
//

#import "PFNetworkUtils.h"
#import "PFJsonParserUtils.h"

@implementation PFNetworkUtils

+(PFNetworkUtils *) instanceOfPFNetworkUtils
{
    static PFNetworkUtils* pfNetworkUtils = nil;
    
    if (!pfNetworkUtils)
        pfNetworkUtils = [[super allocWithZone:nil] init];
    
    return pfNetworkUtils;
}

+(id) allocWithZone:(struct _NSZone *)zone
{
    return [self instanceOfPFNetworkUtils];
}

-(id) init
{
    self = [super init];
    
    return self;
}

-(double) getUpdatedPrice:(int) exchangeID :(NSString*)tickerSymbol
{
    double response = -1;
    
    switch (exchangeID)
    {
        case 0:
            response = [self getUpdatedPriceCoinBase:tickerSymbol];
            break;
            
        default:
            break;
    }
    
    return response;
}

-(double) getUpdatedPriceCoinBase:(NSString*) tickerSymbol
{
    NSString* requestURL = [NSString stringWithFormat:@"https://api.coinbase.com/v2/prices/%@-USD/spot/", tickerSymbol];
    NSURL* url = [NSURL URLWithString:requestURL];
    NSData* data = [NSData dataWithContentsOfURL:url];
    
    NSString* encodedResponse = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    
    return [[PFJsonParserUtils instanceOfPFJsonParserUtils] parseCoinBaseJson: encodedResponse];
}

@end
