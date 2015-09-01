//
//  BNVisitor.m
//  Course
//
//  Created by Admin on 15/08/23/.
//  Copyright (c) 2015 BenNovikov. All rights reserved.
//

#import "BNVisitor.h"

@implementation BNVisitor

#pragma mark -
#pragma mark Class Methods

+ (BNVisitor *)createWithCleanCar:(BOOL)clean money:(float)money {
    return [[[self alloc] initWithCleanCar:(BOOL)clean money:(float)money] autorelease];
}

+ (BNVisitor *)createWithMoney:(float)money {
    return [[[self alloc] initWithMoney:(float)money] autorelease];
}

#pragma mark -
#pragma mark Initializations and Deallocations

- (void)dealloc {

    [super dealloc];
}

- (instancetype)initWithCleanCar:(BOOL)clean money:(float)money {
    self = [super init];
    if(self){
        self.clean = NO;
        self.money = money;
    }
    
    return self;
}

- (instancetype)initWithMoney:(float)money {
    return [self initWithCleanCar:NO money:money];
}

#pragma mark -
#pragma mark BNCashFlowProtocol

- (BOOL)isAbleToPayMoney:(float)money {
    return self.money >= money;
}

@end
