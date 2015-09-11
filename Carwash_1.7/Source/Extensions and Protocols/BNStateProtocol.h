//
//  BNObjectObserver.h
//  Course
//
//  Created by Admin on 15/08/25/.
//  Copyright (c) 2015 BenNovikov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNConstants.h"

@protocol BNStateProtocol <NSObject>

@optional
@property (nonatomic, assign) BNObjectState state;

- (void)objectDidBecomeFree:(id)object;
- (void)objectDidBecomeBusy:(id)object;
- (void)objectDidFinishProcess:(id)object;

@end
