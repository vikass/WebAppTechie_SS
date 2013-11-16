//
//  MFDLog.h
//  SentioSearch
//
//  Created by Vikas Sawant on 09/08/13.
//  Copyright (c) 2013 Mobifilia Software India LLP. All rights reserved.
//

#ifndef SentioSearch_MFDLog_h
#define SentioSearch_MFDLog_h

#ifdef __OBJC__

#ifdef DEBUG

#define DLog(fmt, ...) {NSLog((@"DBG %s " fmt), __PRETTY_FUNCTION__, ##__VA_ARGS__);}
#define DLogFnEnter() {NSLog((@"DBG %s enter..."), __PRETTY_FUNCTION__);}
#define ELog(err) {if(err) DLog(@"%@", err)}

#define TFDLog DLog
#define TFELog ELog

#else

#define DLog(...)
#define DLogFnEnter()
#define ELog(err)

#ifdef DEV_BUILD

#import "TestFlight.h"

#define TFDLog(fmt, ...) {TFLog((@"DBG %s " fmt), __PRETTY_FUNCTION__, ##__VA_ARGS__);}
#define TFELog(err) {if(err) TFLog(@"%@", err);}
#else
#define TFDLog DLog
#define TFELog ELog
#endif

#endif

// ALog always displays output regardless of the DEBUG setting
#define ALog(fmt, ...) {NSLog((@"%s " fmt), __PRETTY_FUNCTION__, ##__VA_ARGS__);};

#endif

#endif
