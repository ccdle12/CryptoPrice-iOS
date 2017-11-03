//
//  PFDataManager.h
//  CryptoPrice-iOS
//
//  Created by Christopher Coverdale on 03/11/2017.
//  Copyright © 2017 Christopher Coverdale. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol PFDashboardPresenterDelegate <NSObject>
@end

@interface PFDataManager : NSObject

@property (nonatomic) id<PFDashboardPresenterDelegate> pfDashboardPresenterDelegate;

@end

