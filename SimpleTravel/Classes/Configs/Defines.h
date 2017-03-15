//
//  Defines.h
//  MeiToken
//
//  Created by MrfengJW on 16/5/18.
//  Copyright © 2016年 Feng. All rights reserved.
//

#ifndef Defines_h
#define Defines_h


//--------------------------------------------------------------------
//网络环境设置
//--------------------------------------------------------------------
//生产环境
#define HaoSe_URL       @"http://www.hoshot.net/v2/"
#define IMAGE_URL       @""
#define HaoSe_IMGURL    @"http://www.hoshot.net"


//开发环境
//#define HaoSe_URL       @"http://www.hoshot.net:7777/v2/"
//#define HaoSe_IMGURL    @"http://www.hoshot.net:7777"
//#define IMAGE_URL       @""


//测试环境
//#define HaoSe_URL       @""
//#define IMAGE_URL       @""

//配置常量
#define kDefaultDatabase     [[SystemSupport share] databaseName]

//--------------------------------------------------------------------
//系统相关设置
//--------------------------------------------------------------------
#define IOSDEVICE [[[UIDevice currentDevice]systemVersion]floatValue] //系统版本

#define IOS7 ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0 ? YES : NO)

#define IOS8 ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0 ? YES : NO)

#define kBundle  [NSBundle mainBundle]
/**
 登陆判断  为空为未登录
 */

#define HAOSEURL @"ttps://itunes.apple.com/cn/app/hao-she/id1160672874?mt=8"

#define LOGIN    [[NSUserDefaults standardUserDefaults] boolForKey:@"USERLogin"]

#define TOKEN   [[NSUserDefaults standardUserDefaults]objectForKey:@"token"]

#define USERID    [[NSUserDefaults standardUserDefaults]objectForKey:@"uid"]

#define PHONE [[NSUserDefaults standardUserDefaults]objectForKey:@"phone"]

#define HEADICON [[NSUserDefaults standardUserDefaults]objectForKey:@"headIcon"]

#define NikeName [[NSUserDefaults standardUserDefaults]objectForKey:@"nikeName"];

#define ACCOUNT [[NSUserDefaults standardUserDefaults]objectForKey:@"account"];

#define TOKENEXPIRED [[NSUserDefaults standardUserDefaults]boolForKey:@"tokenExpired"];

#define LATITUDE     [[NSUserDefaults standardUserDefaults]doubleForKey:@"latitude"];

#define LONGITUDE   [[NSUserDefaults standardUserDefaults]doubleForKey:@"longitude"];

#define SHARENAME  @"好摄"

/******* -1 未通过 0 未审核 1审核中 2通过 认证用户 *****/
#define AUTH_STATUS [[NSUserDefaults standardUserDefaults]objectForKey:@"auth_status"]

//----------------------------------------------------------------------------
//屏幕尺寸
//----------------------------------------------------------------------------
#define kScreenWidth ([[UIScreen mainScreen]bounds].size.width)//屏幕宽度

#define kScreenHeight ([[UIScreen mainScreen]bounds].size.height)//屏幕高度

#define kStatusBarHeight ([[UIApplication sharedApplication]statusBarFrame].size.height)//状态栏高度

#define kNavgationBarHeight (64.0f) //NavgationBar的高度

#define kTabBarHeight (49.0f) //下方tabBar的高度

#define kToolBarHeight (44.0f) //下方toolBar的高度

#define kTableViewCellLineHeight (1.0f/([UIScreen mainScreen].scale)) //仿tableview的cell的细线高度
//定义控件在不同系统版本下偏移量。
#define VIEWOFFSET IOS7 ? 64:0

#define kIphone4S ((kScreenHeight <= 480)?YES:NO)  //iPhone4s 以下

#define kScreenPx(px) (roundf((px)*0.3444))  //用户将px的像素长度转换为屏幕点


//判断手机型号.注意模拟器下可能不准确.
#define iPhone3GS ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(320, 480), [[UIScreen mainScreen] currentMode].size) : NO)
#define iPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) : NO)
#define iPhone4s ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) : NO)
#define iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)
#define iPhone5s ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)
#define iPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1336), [[UIScreen mainScreen] currentMode].size) : NO)
#define iPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1080, 1920), [[UIScreen mainScreen] currentMode].size) : NO)


//----------------------------------------------------------------------------
// 第三方登陆等key , bugly 质量分析的key以及第三方分享平台key
//----------------------------------------------------------------------------

//上架的用的
#define KMamapKey @"684669b77445032eca8793e657eb96ef"

#define kSinaWeiboKey @"2237550119" //登陆-新浪微博登陆的key

#define kSinaSecret @"ba67248217ec772e491819a40992d45c"  //新浪微博回调的url，微信分享回调的url,以及跳转链接


#define KUmengAppkey @"5796c1fce0f55a0bce005664" //umeng key 已更

#define KWechatKey  @"wxc57f5f0a7aea0235" //微信AppId

#define KWechatAppSecret @"48c9038ee031c6bdfbced868edc819c2" //微信appSecret

#define KShareURL @"www.jiangzhi.la"         //回调URl （微信）

#define KQQAppId  @"1105820330" //@"1103991344"        //手机QQ 的AppId

#define KQQAPPKEY @"hucsWfJlvgx1wJvl" //  //手机QQ 的Appkey

#define KLeanCloudId @"ulKjUcOoGbivslsX2r5yD5td-gzGzoHsz"

#define KLeanCloudKey @"up0tVET7auyUf8DxBwSAHXff"

#define KCoLtdUrl  @"http://www.agpc.cn"

#define EaseMobAppKey @"hongzhiyuanxiang#photographer"//环信

//1148161126115091#haoseone hongzhiyuanxiang#photographer

#define EaseMobSecret @"YXA6tSwcQXjrSv3fphE1ig8a4dQDwxo"

//----------------------------------------------------------------------------
//有关时间
//----------------------------------------------------------------------------

#define TimeFormat          @"yyyy-MM-dd HH:mm:ss"

#define DuanDateFormat      @"MM-dd"

#define DateFormat          @"yyyy-MM-dd"

#define DateFormat_MM_dd_yyyy          @"MM/dd/yyyy"

#define DateFormatToShow    @"LLL dd, yyyy"

#define DateFormatToShow2   @"LLL dd yyyy"

#define DateFormatToShowLong    @"E, LLL dd yyyy"

#define DateFormatToShowLong2   @"EEEE, LLL dd yyyy"

#define DateFormateForOmniture  @"dd/MM/YYYY HH:mm:ss"

#define BODDateFormat          @"yyyy-MM-dd"

#define TwelveDateFormat       @"yyMMddHHmmss"

#define DateFormatHH_MM        @"HH:mm"

#define DateFormatHHMM        @"HHmm"

#define DateFormatyyyyMMdd     @"yyyyMMdd"



//----------------------------------------------------------------------------
// 常用的其它指令
//----------------------------------------------------------------------------

//修改系统log，使其在release状态下不输出
#ifdef DEBUG
#define NSLog(...) NSLog(__VA_ARGS__)
#else
#define NSLog(...)
#endif

//判断空字符串
#define NULL_STR(str)   (str == nil || (NSNull *)str == [NSNull null] || str.length == 0)
#define MLString(str) NSLocalizedString(str, @"")
#define SHOW_MESSAGE_VIEW(__title, __message, __cancelButtonTitle,__confirmButtonTitle)  { \
UIAlertView* alert = [[UIAlertView alloc] initWithTitle:__title message:__message delegate:nil cancelButtonTitle:__cancelButtonTitle otherButtonTitles:__confirmButtonTitle]; \
[alert show]; \
}

#endif /* Defines_h */


//16进制的.
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
#define HEXCOLOR(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define showAlert(_msg){UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:_msg delegate:nil cancelButtonTitle:nil otherButtonTitles:@"确定",nil];[alert show];}


//定义一些常用的参数
#define  Radius 5


#define Font12   [UIFont systemFontOfSize:12];
#define Font13   [UIFont systemFontOfSize:13];
#define Font14   [UIFont systemFontOfSize:14];
#define Font15   [UIFont systemFontOfSize:15];
#define Font16   [UIFont systemFontOfSize:16];
#define Font17   [UIFont systemFontOfSize:17];
#define Font18   [UIFont systemFontOfSize:18];
#define Font20   [UIFont systemFontOfSize:20];

#define PlaceholderImageHead @"ic_head_nologin"
#define PlaceholderImageHeadBig @""
#define PlaceholderImageBack @""

#define TABLEHEIGHT   45

