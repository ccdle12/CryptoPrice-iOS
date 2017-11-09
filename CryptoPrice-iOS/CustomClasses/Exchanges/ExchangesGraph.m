//
//  ExchangesGraph.m
//  CryptoPrice-iOS
//
//  Created by Christopher Coverdale on 03/11/2017.
//  Copyright © 2017 Christopher Coverdale. All rights reserved.
//

#import "ExchangesGraph.h"
#import "Coinbase.h"

@interface ExchangesGraph()
{
    NSMutableDictionary* exchangesTable;
   
}
@end

@implementation ExchangesGraph
@synthesize exchangesArrayList;

+(ExchangesGraph*) instanceOfExchangesGraph
{
    static ExchangesGraph* exchangesGraph = nil;
    
    if (!exchangesGraph)
        exchangesGraph = [[super allocWithZone:nil] init];
    
    return exchangesGraph;
}

+(id) allocWithZone:(struct _NSZone *)zone
{
    return [self instanceOfExchangesGraph];
}

-(id) init
{
    self = [super init];
    
    if (self)
    {
        exchangesTable = [[NSMutableDictionary alloc] init];
        exchangesArrayList = [[NSMutableArray alloc] init];
        [self initAllExchanges];
    }
    
    return self;
}

-(void) initAllExchanges
{
    Coinbase* coinbase = [[Coinbase alloc] init];
    [exchangesTable setObject:coinbase forKey:coinbase.exchangeName];
    [exchangesArrayList addObject:coinbase];
}

-(Exchange*) getExchange:(NSString*) exchange
{
    return [exchangesTable objectForKey:exchange];
}

-(BOOL) containsExchange:(NSString*) exchange
{
    return [exchangesTable objectForKey:exchange];
}

@end
