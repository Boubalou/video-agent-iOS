//
//  AdsTracker.h
//  NewRelicVideo
//
//  Created by Andreu Santaren on 10/09/2018.
//  Copyright © 2018 New Relic Inc. All rights reserved.
//

#import "Tracker.h"

@protocol AdsTrackerProtocol <TrackerProtocol>
@optional
// TODO
@end

@interface AdsTracker : Tracker <TrackerProtocol>

@end
