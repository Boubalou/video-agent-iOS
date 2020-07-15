//
//  LogCAL.m
//  NewRelicVideo
//
//  Created by Andreu Santaren on 05/11/2018.
//  Copyright © 2018 New Relic Inc. All rights reserved.
//

#import "LogCAL.h"
#import "Vars.h"
#import "NewRelicVideoAgent.h"

@implementation LogCAL

void AV_LOG(const char *format, ...) {
    if ([[Vars appNumber:@"NRVideoAgentDebug"] boolValue] || [NewRelicVideoAgent logging]) {
        NSString *contents;
        va_list args;
        va_start(args, format);
        contents = [[NSString alloc] initWithFormat:[NSString stringWithUTF8String:format] arguments:args];
        va_end(args);
        NSTimeInterval nowEpochSeconds = [[NSDate date] timeIntervalSince1970];
        contents = [@"NewRelicVideo " stringByAppendingFormat:@"(%f): %@", nowEpochSeconds, contents];
        NSLog(@"%@", contents);
    }
}

@end
