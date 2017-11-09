//
//  PFDashboardPresenter.m
//  CryptoPrice-iOS
//
//  Created by Christopher Coverdale on 03/11/2017.
//  Copyright © 2017 Christopher Coverdale. All rights reserved.
//

#import "PFDashboardPresenter.h"
#import "PFDataManager.h"

@interface PFDashboardPresenter() <PFDashboardPresenterDelegate>
{
    PFDataManager* pfDataManager;
}
@end

@implementation PFDashboardPresenter

#pragma mark - Setup and Constructor Methods
-(id) init
{
    self = [super init];
    
    if (self)
    {
        pfDataManager = [[PFDataManager alloc] init];
        [pfDataManager setPfDashboardPresenterDelegate:self];
        
        //TODO: Testing network utils works
        NSLog(@"Calling update all prices");
        [pfDataManager updateAllExchangePrices];
    }
    
    return self;
}


@end
