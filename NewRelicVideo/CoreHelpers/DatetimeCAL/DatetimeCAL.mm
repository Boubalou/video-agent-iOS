//
//  DatetimeCAL.m
//  NewRelicVideo
//
//  Created by Andreu Santaren on 29/10/2018.
//  Copyright © 2018 New Relic Inc. All rights reserved.
//

#import "DatetimeCAL.h"

@implementation DatetimeCAL

double systemTimestamp() {
    return (double)[[NSDate date] timeIntervalSince1970];
}

@end