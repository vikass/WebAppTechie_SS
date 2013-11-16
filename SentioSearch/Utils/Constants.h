//
//  Constants.h
//  SentioSearch
//
//  Created by Vikas Sawant on 10/2/13.
//  Copyright (c) 2013 ivikas. All rights reserved.
//

#ifndef SentioSearch_Constants_h
#define SentioSearch_Constants_h

#define CUSOME_FONT @"Bree"

// Tester URL
static NSString* const BASE_URL = @"http://sentiosearch.webapptechie.com/";

static NSString* const KEY_RESPONSE_DATA = @"responceData";
static NSString* const KEY_RESPONSE_STATUS = @"responceStatus";

typedef enum  {
    TermsOfUse,
    PrivacyPolicy
} webViewUrlType;



#pragma mark - Notification Names
static NSString *const NOTIFICATION_QUESTION_SEARCH_BY_CATEGORY = @"CategorySearchNotificationForQuestion";
static NSString *const NOTIFICATION_IDEA_SEARCH_BY_CATEGORY = @"CategorySearchNotificationForIdea";
static NSString *const NOTIFICATION_RELOAD_TAB_ORDER = @"ReloadTabOrderNotification";
static NSString *const NOTIFICATION_RELOAD_INBOX_DATA = @"ReloadInboxDataNotification";
static NSString *const NOTIFICATION_SESSION_LOGOUT_ACTION = @"SessionLogoutAction";


#pragma mark - Date Format
//Date format
static NSString* const DATE_FORMAT = @"yyyy-MM-dd HH:mm:ss";
static NSString* const MALE = @"Male";
static NSString* const FEMALE = @"Female";

#pragma mark - HTTP MIME Types
//HTTP MIME Types
static NSString* const MIMETypeJSON = @"application/json";
static NSString* const MIMETypeFormURLEncoded = @"application/x-www-form-urlencoded";
static NSString* const MIMETypeXML = @"application/xml";
static NSString* const MIMETypeTextXML = @"text/xml";


#pragma mark - HTTP Method Name
//HTTP Method Name
static NSString* const POST_METHOD_STRING = @"POST";
static NSString* const GET_METHOD_STRING = @"GET";


#pragma mark - HTTP Header Fields
//HTTP Header Fields
static NSString* const HEADER_FIELD_CONTENT_TYPE = @"Content-Type";
static NSString* const HEADER_FIELD_CONTENT_LENGTH = @"Content-Length";
static NSString* const HEADER_FIELD_ACCEPT_CONTENT_TYPE = @"Accept";
static NSString* const HEADER_FIELD_ACCEPT_ENCODING = @"Accept-Encoding";
static NSString* const HEADER_FIELD_COOKIE = @"Cookie";

#pragma mark - HTTP Encodings

static NSString* const HTTP_ENCODING_GZIP = @"gzip";

#pragma mark alert messages
static NSString* const ALERT_MSG_BLANK_EMAIL = @"Please enter email/username";
static NSString* const ALERT_MSG_VALID_EMAIL = @"Please enter valid email/username";
static NSString* const ALERT_MSG_BLANK_PASSWORD = @"Please enter password";
static NSString* const ALERT_MSG_BLANK_EMAIL_PASSWORD = @"Please enter email/username and password";
static NSString* const ALERT_MSG_WRONG_LOGIN_DETAILS = @"Sorry,unrecognized email or password.Have you forgotten your password";
static NSString* const MSG_NETWORK_NOT_REACHABLE = @"Unable to connect to the server. Please check internet connectivity and try again.";
static NSString *const MSG_NULL_RESPONSE = @"Unable to fetch data from server. Please try again later.";
static NSString *const FACEBOOK_ALERT_TITLE = @"Facebook Permission Error";
static NSString *const FACEBOOK_ALERT_MSG = @"Go to Settings > Facebook and allow ThinkitySplit app to use your Facebook account.";

#endif
