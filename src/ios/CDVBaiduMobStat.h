//
//  CDVBaiduMobStat.h
//  HelloCordova
//
//  Created by Rurui Ye on 25/01/2017.
//
//

#import <Cordova/CDVPlugin.h>
#import "BaiduMobStat.h"

@interface CDVBaiduMobStat : CDVPlugin

-(void)logEvent:(CDVInvokedUrlCommand*)command;
-(void)logEventWithDurationTime:(CDVInvokedUrlCommand *)command;
-(void)eventStart:(CDVInvokedUrlCommand *)command;
-(void)eventEnd:(CDVInvokedUrlCommand *)command;
-(void)pageviewStartWithName:(CDVInvokedUrlCommand *)command;
-(void)pageviewEndWithName:(CDVInvokedUrlCommand *)command;
@end
