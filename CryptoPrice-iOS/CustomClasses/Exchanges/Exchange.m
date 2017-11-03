//
//  Exchange.m
//  CryptoPrice-iOS
//
//  Created by Christopher Coverdale on 03/11/2017.
//  Copyright © 2017 Christopher Coverdale. All rights reserved.
//

#import "Exchange.h"

@implementation Exchange

-(id) init
{
    self = [super init];
    
    if (self)
        self.coins = [[NSMutableArray alloc] init];
    
    return self;
}
- (NSString *)getUpdatedPrice:(int)coinID
{
    return @"-";
}

@end
