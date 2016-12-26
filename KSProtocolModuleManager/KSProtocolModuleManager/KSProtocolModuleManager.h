//
//  KSProtocolModuleManager.h
//  KSProtocolModuleManager
//
//  Created by pingyandong on 2016/12/26.
//  Copyright © 2016年 Kingsum. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KSProtocolModuleManager : NSObject
+ (void)registServiceProvide:(id)provide forProtocol:(Protocol*)protocol;

+ (id)serviceProvideForProtocol:(Protocol *)protocol;

@end
