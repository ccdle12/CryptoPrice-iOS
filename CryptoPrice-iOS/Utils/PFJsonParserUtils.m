//
//  PFJsonParserUtils.m
//  CryptoPrice-iOS
//
//  Created by Christopher Coverdale on 07/11/2017.
//  Copyright © 2017 Christopher Coverdale. All rights reserved.
//

#import "PFJsonParserUtils.h"

@implementation PFJsonParserUtils

+(PFJsonParserUtils *) instanceOfPFJsonParserUtils
{
    static PFJsonParserUtils* pfJsonParserUtils = nil;
    
    if (!pfJsonParserUtils)
        pfJsonParserUtils = [[super allocWithZone:nil] init];
    
    return pfJsonParserUtils;
}

+(id) allocWithZone:(struct _NSZone *)zone
{
    return [self instanceOfPFJsonParserUtils];
}

-(id) init
{
    self = [super init];
    
    return self;
}


-(double) parseCoinBaseJson:(NSString*) response
{
    NSData* responseAsNSData = [response dataUsingEncoding:NSUTF8StringEncoding];
    NSMutableDictionary *responseJson = [NSJSONSerialization JSONObjectWithData:responseAsNSData options:0 error:NULL];
    
    NSMutableDictionary *dataObject = [responseJson objectForKey:@"data"];
    NSString* amount = [dataObject objectForKey:@"amount"];
    
    double USDPrice = [amount doubleValue];
 
    return USDPrice;
}

@end
