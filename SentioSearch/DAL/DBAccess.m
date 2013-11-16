//
//  DBAccess.m
//  SentioSearch
//
//  Created by Vikas Sawant on 11/5/13.
//  Copyright (c) 2013 ivikas. All rights reserved.
//

#import "DBAccess.h"
#import "XMLRPCResponse.h"
#import "XMLRPCConnection.h"
#import "XMLRPCRequest.h"

static DBAccess *sharedDBAccess;
static id system_session_id;

@implementation DBAccess

+(DBAccess *)createDBAccess {
    if (!sharedDBAccess) {
        sharedDBAccess = [[DBAccess alloc] init];
        [self connectDrupal];
    }
    
    return sharedDBAccess;
}

+(DBAccess *)defaultDBAccess {
    
    return sharedDBAccess;
}

+ (NSMutableDictionary *)connectDrupal {
    
    NSMutableDictionary *postParams = [[NSMutableDictionary alloc] init];
    XMLRPCRequest * req = [[XMLRPCRequest alloc] initWithHost:[NSURL URLWithString:BASE_URL]];
    [req setMethod:@"system.connect" withObject:postParams];
    
    XMLRPCResponse *connetResp = [XMLRPCConnection sendSynchronousXMLRPCRequest:req];
    
    NSMutableArray *respData=[[NSMutableArray alloc] init];
    respData=[connetResp object];
//    system_session_id = [respData valueForKey:@"sessid"];
    
    NSMutableDictionary *responceDictionary = [NSMutableDictionary dictionary];
    
    if ([connetResp isFault]) {
        [responceDictionary setValue:NO forKey:KEY_RESPONSE_STATUS];
        [responceDictionary setValue:connetResp.fault forKey:KEY_RESPONSE_DATA];
    }else {
        [responceDictionary setValue:NO forKey:KEY_RESPONSE_STATUS];
        [responceDictionary setValue:respData forKey:KEY_RESPONSE_DATA];
    }
    
    return responceDictionary;
}

- (NSMutableDictionary *)loginToSentioWithUserName:(NSString *)uName andPass:(NSString *)pass {
    XMLRPCRequest * request = [[XMLRPCRequest alloc] initWithHost:[NSURL URLWithString:BASE_URL]];
    
    // STEP 10: Create array for login details
    NSMutableArray *userCredin=[NSMutableArray array];
//    [userCredin insertObject:system_session_id atIndex:0];
    [userCredin insertObject:uName atIndex:0];
    [userCredin insertObject:@"viki@gmail.com" atIndex:1];
    [userCredin insertObject:pass atIndex:2];
    
    // STEP 20: Made a request to login a user
//    [request setMethod:@"user.login" withObjects:userCredin];
    
    [request setMethod:@"user.register" withObjects:userCredin];
    // STEP 30: Responce from server
	XMLRPCResponse *loginResp = [XMLRPCConnection sendSynchronousXMLRPCRequest:request];
    
    // STEP 40: After sucessfull login get user details
    //    statusText.text=[nodeSaveResponse source];
    NSMutableArray *respData=[loginResp object];
    
    NSMutableDictionary *responceDictionary = [NSMutableDictionary dictionary];
    if ([loginResp isFault]) {
        [responceDictionary setValue:NO forKey:KEY_RESPONSE_STATUS];
        [responceDictionary setValue:loginResp.fault forKey:KEY_RESPONSE_DATA];
    }else {
        [responceDictionary setValue:NO forKey:KEY_RESPONSE_STATUS];
        [responceDictionary setValue:respData forKey:KEY_RESPONSE_DATA];
    }
    
    NSLog(@"Responce - %@",responceDictionary);

    
    return responceDictionary;
    
}
@end
