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

    //TODO CARRY ON IMPLEMENTING ASYNCHRONOUS CALLS
    [[[NSURLSession sharedSession] dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {

        NSDictionary* unserializedData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
        
        NSDictionary* serializedDataObject = [unserializedData objectForKey:@"data"];
        NSString* amount = [serializedDataObject objectForKey:@"amount"];
        
        NSLog(@"amount: %@",amount);
    }] resume];
    
    return 0.1;
//    return [[PFJsonParserUtils instanceOfPFJsonParserUtils] parseCoinBaseJson: encodedResponse];
}

//- (NSURLSessionDataTask *)dataTaskWithURL:(NSURL *)url
//                        completionHandler:(void (^)(NSData *data, NSURLResponse *response, NSError *error))completionHandler;
//{
//
//}

@end
