//
//  PFDashboardVC.m
//  CryptoPrice-iOS
//
//  Created by Christopher Coverdale on 02/11/2017.
//  Copyright © 2017 Christopher Coverdale. All rights reserved.
//

#import "PFDashboardVC.h"
#import "PFDashboardPresenter.h"

@interface PFDashboardVC () <PFDashboardVCDelegate>
{
    PFDashboardPresenter *dashboardPresenter;
}
@end

@implementation PFDashboardVC

-(void) viewDidLoad
{
    [super viewDidLoad];
    [self initPFDashboardPresenter];
}

-(void) initPFDashboardPresenter
{
    dashboardPresenter = [[PFDashboardPresenter alloc] init];
    [dashboardPresenter setPfDashboardVCDelegate: self];
}


-(void) didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


@end
