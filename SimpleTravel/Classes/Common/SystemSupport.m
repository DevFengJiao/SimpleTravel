//
//  SystemSupport.m
//  MeiToken
//
//  Created by MrfengJW on 16/5/24.
//  Copyright © 2016年 Feng. All rights reserved.
//

#import "SystemSupport.h"

#define   KNotificationtag 50000

@implementation SystemSupport

static SystemSupport * SystemData=nil;
+(SystemSupport*)share{
    
    @synchronized(self)
    {
        if(!SystemData)
        {
            SystemData = [[SystemSupport alloc] init];
        }
        
    }
    return SystemData;
}

- (id) init
{
    if (self = [super init])
    {
        //设置项目所需要的key
        [self setKeys];
        [self setSystemDic];
        
    }
    return self;
}



#pragma mark - 设置项目所需要的key
-(void)setKeys{
    
    NSDictionary * infoDictionary = [[NSBundle mainBundle] infoDictionary];
    NSString *identifier = [infoDictionary objectForKey:@"CFBundleIdentifier"];
    self.CFBundleIdentifier = identifier;
    
    self.channelId  = @"APP_STORE";
    if([self.CFBundleIdentifier isEqualToString:@"com.ywcec.kt01w"]  == YES){
        self.umeng_app_key = @"54d9d09cfd98c5dc9a000882";
        self.baidumap_key  = @"BK0UUGkvkPldGVYMsE4Rf9oC";
        self.googleAPI_Key = @"AIzaSyAU3XYxrrgp0oUqbJHTD7cmLMi6wCGaCR4";
        self.channelId = @"app_custom";
    }else if([self.CFBundleIdentifier isEqualToString:@"com.ywcec.Kitmake01S02"]  == YES){
        self.umeng_app_key = @"5472c68afd98c5d791000639";
        self.baidumap_key  = @"8Cyb9r8yMbewoGul6Y9eRPmu";
        self.googleAPI_Key = @"AIzaSyC7JvVB1Elzjgyyb4Cnrc4wOmJlcaXmQG8";
    }else{
        
//        self.umeng_app_key = [KidMateApp setKidMateAppKey];
//        self.baidumap_key  = [KidMateApp setBaiduMapKey];
//        self.googleAPI_Key = [KidMateApp setGoogleMapKey];
//        self.channelId     = [KidMateApp setClientId];
    }
    
    
}

// YES 为 静态验证码  NO 为动态验证码,默认是静态验证码
-(BOOL) isStaticCode{
    
    BOOL isStatic = YES;
//    
//    if ([[MobClick getConfigParams:@"static"] isEqualToString:@"NO"]) {
//        
//        isStatic = NO;
//    }
    return isStatic;
}

#pragma  mark - YES 为长链接版本 NO为短链接
-(BOOL) isLongLink{
    
    BOOL isLink = YES;
    
//    if ([[MobClick getConfigParams:@"LONGLINK"] isEqualToString:@"NO"]) {
//        
//        isLink = NO;
//    }
    return isLink;
}


//是否有蓝牙功能 yes 有 No 没有
-(BOOL) isBlueTouch{
    
    BOOL isBlueTouch = NO;
    
//    if ([[MobClick getConfigParams:@"blueTouch"] isEqualToString:@"YES"]) {
//        
//        isBlueTouch = YES;
//    }
    
    return isBlueTouch;
}

//权限列表
-(void) setSystemDic{
//    NSMutableDictionary *mutableDictionary  = [NSMutableDictionary dictionaryWithObjectsAndKeys:
//                                               [self systemVoice],K_SYSTEM_VOICE,
//                                               [self systemPedometer],k_SYSTEM_PEDOMETER,
//                                               [self systemRFID],k_SYSTEM_RFID,
//                                               [self systemGeomagnetic],k_systemGeomagnetic,
//                                               [self getSystem:K_systemBlueTouch],K_systemBlueTouch,
//                                               [self getSystem:k_systemPositionTo],k_systemPositionTo,
//                                               [self getSystem:K_systemPolicy],K_systemPolicy,
//                                               [self getSystem:K_systemGame],K_systemGame,
//                                               [self getSystem:k_systemHomeBtn],k_systemHomeBtn,
//                                               nil];
//    _systemDic = mutableDictionary;
}



// mark - 判断该手表是否有该权限
-(BOOL)isPerm:(NSString *)productId withType:(NSString *)type{
    
    BOOL isPerm = NO;
    NSString *pid = [productId lowercaseString];
    NSArray *retArr = [_systemDic objectForKey:type];
    NSSet *setRetArr = [NSSet setWithArray:retArr];
    if([setRetArr containsObject:pid]){
        isPerm = YES;
    }
    return isPerm;
}
//获得当前语言的简写
-(NSString *)currentLanguage{
    
    NSArray *languages = [NSLocale preferredLanguages];
    NSString *currentLanguage = [languages objectAtIndex:0];
    
    return currentLanguage;
}

-(NSString *)currLanguage{
    
    NSString *currLang = [self currentLanguage];
    
    if ([currLang isEqualToString:@"zh-Hans"]) {
        
        currLang = @"zh";
    }
    return currLang;
}

-(NSDictionary *)defaultPiont{
    
    NSDictionary *dictionary = nil;
    
    if ([[self currentLanguage] isEqualToString:@"zh-Hans"]) {
        
        dictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"39.915",@"longitude",@"116.404",@"latitude",nil];
    }else if ([[self currentLanguage] isEqualToString:@"en"]) {
        dictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"40.43",@"longitude",@"-74.00",@"latitude",nil];
    }else if ([[self currentLanguage] isEqualToString:@"ru"]) {
        
        dictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"55.4521",@"longitude",@"37.3704",@"latitude",nil];
        
    }else{
        
        dictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"39.915",@"longitude",@"116.404",@"latitude",nil];
    }
    
    return dictionary;
    
}

-(NSString *)defaultLongitude{
    
    NSDictionary *dictionary = [self defaultPiont];
    return [dictionary objectForKey:@"longitude"];
}
-(NSString *)defaultLatitude{
    NSDictionary *dictionary = [self defaultPiont];
    return [dictionary objectForKey:@"latitude"];
}

//所有权限
-(NSMutableArray *) setAllSystemArr{
    NSMutableArray *array = [NSMutableArray arrayWithObjects:
                             @"kt01",@"kt01L",@"kt01s",@"kt01w",nil];
    return array;
}

//语音功能
-(NSArray *)systemVoice{
    NSMutableArray *mArray =  [self setAllSystemArr];
    [mArray removeObjectAtIndex:0];
    return mArray;
}
//计步器功能
-(NSArray *)systemPedometer{
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@"kt01w",nil];
    return array;
}
//RFID功能
-(NSArray *)systemRFID{
    return [self systemPedometer];
}
//亲子跟随功能
-(NSArray *)systemGeomagnetic{
    return [self systemPedometer];
}
//获得系统权限
-(NSArray *)getSystem:(NSString *)type{
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@"kt01w",nil];
    return array;
}

//获得bundleIdentifier
-(NSString *)bundleIdentifier{
    return self.CFBundleIdentifier;
}
//获得app版本号
-(NSString *)appVersion{
    
    NSDictionary * infoDictionary = [[NSBundle mainBundle] infoDictionary];
    NSString *app_Version = [infoDictionary objectForKey:@"CFBundleShortVersionString"];
    return app_Version;
}

//YES 是开发模式  NO 为生产模式
-(BOOL) isDebug{
    
    BOOL debug = NO;
    
//    if ([[MobClick getConfigParams:@"DEBUG"] isEqualToString:@"YES"]) {
//        
//        debug = YES;
//    }
    
    return debug;
}

//友盟key
-(NSString *)umengAppKey {
    return self.umeng_app_key;
}
//百度地图key
-(NSString *)baiduMapKey{
    return self.baidumap_key;
}
//google 地图 api key
-(NSString *)googleApiKey{
    return self.googleAPI_Key;
}
//获得渠道ChannelId
-(NSString *)getChannelId{
    return self.channelId;
}


/* 自己通过 NSUserDefaults 写入到本地的plist文件就能 把整个文件删除 */
-(void)deleteUserDefaults{
    
    NSUserDefaults *userDefatluts = [NSUserDefaults standardUserDefaults];
    NSDictionary *dictionary = [userDefatluts dictionaryRepresentation];
    for(NSString* key in [dictionary allKeys]){
        [userDefatluts removeObjectForKey:key];
        [userDefatluts synchronize];
    }
}
/** Database name **/
-(NSString *)databaseName{
    NSString* name = [NSString stringWithFormat:@"kitMade_v%@.sqlite3",[self appVersion]];
    return name;
}

//獲得系統信息
-(NSString *)getSysInfoForKey:(NSString *)key{
    NSDictionary *infoDict = [[NSBundle mainBundle] infoDictionary];
    NSString *sysInfo     = [NSString stringWithFormat:@"%@",[infoDict objectForKey:key]];
    return sysInfo;
}
//二维码前缀
-(NSString *)codePrefix{
    NSString *pf = @"http://www.abardeen.com/lr?c=";
    return pf;
}

//根据获得字符串  返回生成的二维码
-(NSString *)codePrefixWithCode:(NSString *)code{
    NSString *codePrefix;
    NSRange range = [code rangeOfString:[self codePrefix]];//判断字符串是否包含
    if (range.length >0){
        codePrefix = code;
    }else{
        codePrefix = [NSString stringWithFormat:@"%@%@",[self codePrefix],code];
    }
    //    NSLog(@"codePrefix:%@",codePrefix);
    return codePrefix;
}
//获得iMei号码
-(NSString *)getImeiWithCode:(NSString *)code{
    NSString *imei;
    
    NSLog(@"imei:%@   code:%@",imei,code);
    
    NSRange range = [code rangeOfString:[self codePrefix]];//判断字符串是否包含
    if (range.length >0){
        NSUInteger l = [self codePrefix].length;
        imei = [code substringFromIndex:l];
        //        NSLog(@"imei:%@   code:%@",imei,code);
    }else{
        imei = code;
    }
    return imei;
}
/**
 *本地消息通知推送
 *@return bool
 */
-(BOOL)localNotification:(NSString *)alertBody withAlertAction:(NSString *)alertAction{
    BOOL isNoice = NO;
    UILocalNotification *notification=[[UILocalNotification alloc] init];
    if (notification!=nil) {//判断系统是否支持本地通知
        NSDate *now=[NSDate new];
        //设置提醒时间，倒计时以秒为单位。以下是从现在开始5秒以后通知
        notification.fireDate=[now dateByAddingTimeInterval:5];
        //        notification.fireDate=[NSDate dateWithTimeIntervalSinceNow:kCFCalendarUnitDay];//本次开启立即执行的周期
        //       notification.fireDate=[now addTimeInterval:15];//本次开启立即执行的周期
        //        notification.repeatInterval=kCFCalendarUnitMinute;//循环通知的周期
        notification.timeZone=[NSTimeZone defaultTimeZone];
        notification.alertBody=alertBody;//弹出的提示信息
        //        notification.applicationIconBadgeNumber = [[[UIApplication sharedApplication] scheduledLocalNotifications] count]+1; //应用程序的右上角小数字
        NSDictionary *dict =[NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:KNotificationtag],@"nfkey",nil];
        [notification setUserInfo:dict];
        notification.soundName= UILocalNotificationDefaultSoundName;//本地化通知的声音
        notification.alertAction = alertAction;  //弹出的提示框按钮
        [[UIApplication sharedApplication]   scheduleLocalNotification:notification];
        isNoice = YES;
    }
    return isNoice;
}
/**
 *UIApplicationStateActive 应用程序处于前台,UIApplicationStateInactive 程序在运行状态,UIApplicationStateBackground 应用程序在后台
 *@return bool  YES在后台
 */
-(BOOL)ApplicationState{
    BOOL stateStuct = NO;
    UIApplicationState state = [UIApplication sharedApplication].applicationState;
    if (state==UIApplicationStateBackground) {
        stateStuct = YES;
    }
    return stateStuct;
}

-(UIImage *)imageOfFile:(NSString *)name{
    //    NSBundle *kMateBundle = [NSBundle mainBundle];
    //    NSString *file = [kMateBundle pathForResource:name ofType:@"png"];
    //    UIImage *image = [UIImage imageWithContentsOfFile:file];
    
    //    NSString *path = [[NSBundle mainBundle] pathForResource:name ofType:@"png"];
    //    UIImage *image = [UIImage imageWithContentsOfFile:path];
    UIImage *image = [UIImage imageNamed:name];
    return image;
}

-(BOOL)isChinaRegion{
    BOOL suss = NO;
//    if ([[KidMateApp setMapType] isEqualToString:@"baidu"]) {
//        suss = YES;
//    }
    return suss;
}



@end
