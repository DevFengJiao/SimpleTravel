//
//  SystemSupport.h
//  MeiToken
//
//  Created by MrfengJW on 16/5/24.
//  Copyright © 2016年 Feng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SystemSupport : NSObject
@property(nonatomic,strong) NSString* CFBundleIdentifier;
@property(nonatomic,strong) NSString* umeng_app_key;
@property(nonatomic,strong) NSString* baidumap_key;
@property(nonatomic,strong) NSString* googleAPI_Key;
@property(nonatomic,strong) NSString* channelId;
@property(nonatomic,strong) NSMutableDictionary* systemDic;

+(SystemSupport*)share;
-(BOOL) isStaticCode;
-(BOOL) isLongLink;
-(BOOL) isBlueTouch;
-(BOOL) isDebug;
-(BOOL)isPerm:(NSString *)productId withType:(NSString *)type;
-(NSDictionary *)defaultPiont;
-(NSString *)defaultLongitude;
-(NSString *)defaultLatitude;
-(NSString *)currentLanguage;
-(NSString *)currLanguage;

-(NSString *)bundleIdentifier;
-(NSString *)appVersion;
-(NSString *)umengAppKey;
-(NSString *)baiduMapKey;
-(NSString *)googleApiKey;
-(NSString *)getChannelId;

-(BOOL )isChinaRegion;


-(void)deleteUserDefaults;
-(NSString *)databaseName;
-(NSString *)getSysInfoForKey:(NSString *)key;
-(NSString *)codePrefix;
-(NSString *)codePrefixWithCode:(NSString *)code;
-(NSString *)getImeiWithCode:(NSString *)code;

-(BOOL)localNotification:(NSString *)alertBody withAlertAction:(NSString *)alertAction;
-(BOOL)ApplicationState;

-(UIImage *)imageOfFile:(NSString *)name;
@end
