//
//  DBAccess.h
//  SentioSearch
//
//  Created by Vikas Sawant on 11/5/13.
//  Copyright (c) 2013 ivikas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Constants.h"

@interface DBAccess : NSObject

+(DBAccess *)createDBAccess;

+(DBAccess *)defaultDBAccess;

+(NSMutableDictionary *)connectDrupal;
-(NSMutableDictionary *)loginToSentioWithUserName:(NSString *)uName andPass:(NSString *)pass;

@end
