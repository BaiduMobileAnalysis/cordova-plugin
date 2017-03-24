//
//  CDVBaiduMobStat.m
//  HelloCordova
//
//  Created by Rurui Ye on 25/01/2017.
//
//

#import "CDVBaiduMobStat.h"
#import "BaiduMobStat.h"

@implementation CDVBaiduMobStat

-(void)onEvent:(CDVInvokedUrlCommand *)command {
    CDVPluginResult* result= nil;
    NSArray* args=command.arguments;
    
    if (args.count != 2) {
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"please pass event and label"];
    }
    else {
        [[BaiduMobStat defaultStat] logEvent:[command argumentAtIndex:0] eventLabel:[command argumentAtIndex:1]];
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"success!"];
    }
    
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

-(void)onEventWithAttributes:(CDVInvokedUrlCommand*)command {
    CDVPluginResult* result= nil;
    NSArray* args=command.arguments;
    
    if (args.count != 3) {
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"please pass event and label with attributes"];
    }
    else {
        [[BaiduMobStat defaultStat] logEvent:[command argumentAtIndex:0] eventLabel:[command argumentAtIndex:1] attributes:[command argumentAtIndex:2]];
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"success!"];
    }
    
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

-(void)onEventDuration:(CDVInvokedUrlCommand *)command {
    CDVPluginResult* result= nil;
    NSArray* args=command.arguments;
    
    if (args.count != 3) {
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"please pass event, label and duration"];
    }
    else {
        [[BaiduMobStat defaultStat] logEventWithDurationTime:[command argumentAtIndex:0] eventLabel:[command argumentAtIndex:1] durationTime:(unsigned long)[command argumentAtIndex:2 withDefault:0]];
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"success!"];
    }
    
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
    
}

-(void)onEventDurationWithAttributes:(CDVInvokedUrlCommand *)command {
    CDVPluginResult* result= nil;
    NSArray* args=command.arguments;
    
    if (args.count != 4) {
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"please pass event, label and duration with attributes"];
    }
    else {
        [[BaiduMobStat defaultStat] logEventWithDurationTime:[command argumentAtIndex:0] eventLabel:[command argumentAtIndex:1] durationTime:(unsigned long)[command argumentAtIndex:2 withDefault:0] attributes:[command argumentAtIndex:3]];
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"success!"];
    }
    
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

-(void)onEventStart:(CDVInvokedUrlCommand *)command {
    CDVPluginResult* result= nil;
    NSArray* args=command.arguments;
    
    if (args.count != 2) {
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"please pass event and label"];
    }
    else {
        [[BaiduMobStat defaultStat] eventStart:[command argumentAtIndex:0] eventLabel:[command argumentAtIndex:1]];
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"success!"];
    }
    
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
    
}


-(void)onEventEnd:(CDVInvokedUrlCommand *)command {
    CDVPluginResult* result= nil;
    NSArray* args=command.arguments;
    
    if (args.count != 2) {
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"please pass event and label"];
    }
    else {
        [[BaiduMobStat defaultStat] eventEnd:[command argumentAtIndex:0] eventLabel:[command argumentAtIndex:1]];
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"success!"];
    }
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}


-(void)onEventEndWithAttributes:(CDVInvokedUrlCommand *)command {
    CDVPluginResult* result= nil;
    NSArray* args=command.arguments;
    
    if (args.count != 3) {
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"please pass event and label with attributes"];
    }
    else {
        [[BaiduMobStat defaultStat] eventEnd:[command argumentAtIndex:0] eventLabel:[command argumentAtIndex:1] attributes:[command argumentAtIndex:2]];
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"success!"];
    }
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

-(void)onPageStart:(CDVInvokedUrlCommand *)command {
    CDVPluginResult* result= nil;
    NSArray* args=command.arguments;
    
    if (args.count != 1) {
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"please pass page name"];
    }
    else {
        [[BaiduMobStat defaultStat] pageviewStartWithName:[command argumentAtIndex:0]];
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"success!"];
    }
    
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
    
}

-(void)onPageEnd:(CDVInvokedUrlCommand *)command {
    CDVPluginResult* result= nil;
    NSArray* args=command.arguments;
    
    if (args.count != 1) {
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"please pass page name"];
    }
    else {
        [[BaiduMobStat defaultStat] pageviewEndWithName:[command argumentAtIndex:0]];
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"success!"];
    }
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
    
}
@end
