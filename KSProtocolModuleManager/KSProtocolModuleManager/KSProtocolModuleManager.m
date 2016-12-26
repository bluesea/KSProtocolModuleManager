//
//  KSProtocolModuleManager.m
//  KSProtocolModuleManager
//
//  Created by pingyandong on 2016/12/26.
//  Copyright © 2016年 Kingsum. All rights reserved.
//

#import "KSProtocolModuleManager.h"

@interface KSProtocolModuleManager ()
@property (nonatomic, strong) NSMutableDictionary *serviceProvideSource;

@end

@implementation KSProtocolModuleManager

+ (KSProtocolModuleManager *)sharedInstance
{
    static KSProtocolModuleManager * instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _serviceProvideSource = [[NSMutableDictionary alloc] init];
    }
    return self;
}

+ (void)registServiceProvide:(id)provide forProtocol:(Protocol*)protocol
{
    if (provide == nil || protocol == nil)
        return;
    [[self sharedInstance].serviceProvideSource setObject:provide forKey:NSStringFromProtocol(protocol)];
}

+ (id)serviceProvideForProtocol:(Protocol *)protocol
{
    return [[self sharedInstance].serviceProvideSource objectForKey:NSStringFromProtocol(protocol)];
}


@end
