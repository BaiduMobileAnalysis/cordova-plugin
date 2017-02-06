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

-(void)logEvent:(CDVInvokedUrlCommand *)command {
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


-(void)logEventWithDurationTime:(CDVInvokedUrlCommand *)command {
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

-(void)eventStart:(CDVInvokedUrlCommand *)command {
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


-(void)eventEnd:(CDVInvokedUrlCommand *)command {
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


-(void)pageviewStartWithName:(CDVInvokedUrlCommand *)command {
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

-(void)pageviewEndWithName:(CDVInvokedUrlCommand *)command {
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
