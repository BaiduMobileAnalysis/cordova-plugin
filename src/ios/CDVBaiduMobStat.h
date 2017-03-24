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

-(void)onEvent:(CDVInvokedUrlCommand*)command;
-(void)onEventWithAttributes:(CDVInvokedUrlCommand*)command;
-(void)onEventDuration:(CDVInvokedUrlCommand *)command;
-(void)onEventDurationWithAttributes:(CDVInvokedUrlCommand *)command;
-(void)onEventStart:(CDVInvokedUrlCommand *)command;
-(void)onEventEnd:(CDVInvokedUrlCommand *)command;
-(void)onEventEndWithAttributes:(CDVInvokedUrlCommand *)command;
-(void)onPageStart:(CDVInvokedUrlCommand *)command;
-(void)onPageEnd:(CDVInvokedUrlCommand *)command;
@end
