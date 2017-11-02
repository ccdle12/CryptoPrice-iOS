//
//  AppDelegate.h
//  CryptoPrice-iOS
//
//  Created by Christopher Coverdale on 02/11/2017.
//  Copyright © 2017 Christopher Coverdale. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

