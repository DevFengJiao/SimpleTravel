//
//  commonSet.h
//  MeiToken
//
//  Created by hzyx01 on 16/7/28.
//  Copyright © 2016年 Feng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface commonSet : NSObject

/*
 *用来判断是否登录与token是否过期 
 */
+(BOOL)isLoginAndToken;
//////////

/*
 *用来配的
 */

+(NSString*)dateString:(NSString*)date;

+(NSString*)stringDate:(long)string;

/***** 逗号隔开的方式  ***/
+(NSString*)stringDateComma:(long )string;
/**** YYYY年MM月dd日 HH:mm:ss ****/
+(NSString*)stringDateZi:(long)string;
/**** YYYY年MM月dd日 ****/
+(NSString*)stringDateZiShort:(long )string;
/**** YYYY.MM.dd ****/
+(NSString*)stringDateCommaShort:(long )string;

+(NSString*)stringDateTick:(long )string;

/***** 阿姨压呀压呀  ***/
+(NSString*)compressImages:(NSString*)url andWidth:(int)width andHeigth:(int)heigth;

-(void)setTokenHead;
-(void)setTokenAndUserIDHead:(NSString*)usid;

-(void)commLabel:(CGRect)frame andLabel:(UILabel*)label;
-(void)commLabelWidth:(CGRect)frame andLabel:(UILabel*)label;

//自适应图片喔！！！！！
-(void)commImageView:(UIImageView*)iv;

-(void)commAlertView:(NSString*)aInfo;


+(UIButton*)commBtn:(NSString*)title andFloatY:(CGFloat)y;




+(UILabel*)initLable:(UIFont*)font andTextColor:(UIColor*)color andTextAlignment:(NSTextAlignment)alignment andFrame:(CGRect)fram;

+(UIButton*)initButton:(UIFont*)font andTextColor:(UIColor*)color andTextAlignment:(UIControlContentHorizontalAlignment)alignment andFrame:(CGRect)fram andBackNormalImage:(NSString*)image;

+(UIButton*)initButtonAndBackImage:(NSString*)image andBntFrame:(CGRect)frame1 andImageFrame:(CGRect)frame2;


+(UIImageView*)initImageView:(CGRect)fram andImage:(NSString *)image;

+(UITextField*)initTexeField:(UIFont*)font andTextColor:(UIColor*)color andTextAlignment:(NSTextAlignment)alignment andFrame:(CGRect)fram;


+(UITextView*)initTexeView:(UIFont*)font andTextColor:(UIColor*)color andTextAlignment:(NSTextAlignment)alignment andFrame:(CGRect)fram;


+(NSMutableAttributedString*)AttributedString:(NSString *)str;
+(NSMutableAttributedString*)MutableAttr:(NSString *)str andFont:(UIFont*)font andColor:(UIColor*)color;

+(UIImageView*)initImportanceImageView:(CGFloat)x andY:(CGFloat)y;



+ (BOOL)isReachability;

+ (void)isUserAndToken;

+ (void)post:(NSString *)url params:(NSDictionary *)params success:(void (^)(id json))success failure:(void (^)(NSError *error))failure;



+(NSMutableDictionary *)addreeAnd:(NSArray *)starRegion;

/**********  收藏接口 要三个参数 userid,type=类型,favoriti_id=收藏Id ***********/

+(void)publicsUserFavoriteUserID:(NSString*)userid AndFavoriti_id:(NSString*)favoriti_id AndType:(NSString*)type success:(void (^)(id json))success failure:(void (^)(NSError *error))failure;

+(void)publicsCancelUserFavoriteUserID:(NSString*)userid AndFavoriti_id:(NSString*)favoriti_id AndType:(NSString*)type success:(void (^)(id json))success failure:(void (^)(NSError *error))failure;

/**********  点赞接口 要三个参数 userid,type=类型,like_id=收藏Id ***********/
+(void)publicsUserLikeUserID:(NSString*)userid Andlike_id:(NSString*)like_id AndType:(NSString*)type success:(void (^)(id json))success failure:(void (^)(NSError *error))failure;

+(void)publicsCanUserLikeUserID:(NSString*)userid Andlike_id:(NSString*)like_id AndType:(NSString*)type success:(void (^)(id json))success failure:(void (^)(NSError *error))failure;

- (UIImage *)fixOrientation:(UIImage *)aImage;

@end
