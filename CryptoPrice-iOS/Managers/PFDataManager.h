//
//  PFDataManager.h
//  CryptoPrice-iOS
//
//  Created by Christopher Coverdale on 03/11/2017.
//  Copyright © 2017 Christopher Coverdale. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Exchange.h"
#import "ExchangeDelegate.h"

@protocol PFDashboardPresenterDelegate <NSObject>
@end

@interface PFDataManager : NSObject <ExchangeDelegate>

@property (nonatomic) id<PFDashboardPresenterDelegate> pfDashboardPresenterDelegate;
-(void) updateAllPrices;
@end

