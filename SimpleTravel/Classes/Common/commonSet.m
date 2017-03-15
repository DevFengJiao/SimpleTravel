//
//  commonSet.m
//  MeiToken
//
//  Created by hzyx01 on 16/7/28.
//  Copyright © 2016年 Feng. All rights reserved.
//

#import "commonSet.h"

@implementation commonSet


+(NSString*)dateString:(NSString *)date{
    NSString *start_time = [NSString stringWithFormat:@"%@",date];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"YYYY-MM-dd HH:mm"];
    NSDate *startDate = [formatter dateFromString:start_time];
    NSString *nowTimeStr =  [NSString stringWithFormat:@"%ld", (long)[startDate timeIntervalSince1970]];
    return nowTimeStr;
}


+(NSString*)stringDate:(long )string{
    NSDate *confromTimesp = [NSDate dateWithTimeIntervalSince1970:string];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
    
    NSString *confromTimespStr = [formatter stringFromDate:confromTimesp];
    return confromTimespStr;
}

+(NSString*)stringDateComma:(long )string{
    NSDate *confromTimesp = [NSDate dateWithTimeIntervalSince1970:string];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"YYYY.MM.dd HH:mm"];
    
    NSString *confromTimespStr = [formatter stringFromDate:confromTimesp];
    return confromTimespStr;
}

+(NSString*)stringDateZi:(long)string{
    NSDate *confromTimesp = [NSDate dateWithTimeIntervalSince1970:string];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"YYYY年MM月dd日 HH:mm"];
    
    NSString *confromTimespStr = [formatter stringFromDate:confromTimesp];
    return confromTimespStr;
}

+(NSString*)stringDateCommaShort:(long )string{
    NSDate *confromTimesp = [NSDate dateWithTimeIntervalSince1970:string];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"YYYY.MM.dd"];
    
    NSString *confromTimespStr = [formatter stringFromDate:confromTimesp];
    return confromTimespStr;
}

+(NSString*)stringDateTick:(long )string{
    NSDate *confromTimesp = [NSDate dateWithTimeIntervalSince1970:string];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"YYYY/MM/dd"];
    
    NSString *confromTimespStr = [formatter stringFromDate:confromTimesp];
    return confromTimespStr;
}


+(NSString*)stringDateZiShort:(long )string{
    NSDate *confromTimesp = [NSDate dateWithTimeIntervalSince1970:string];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"YYYY年MM月dd日"];
    
    NSString *confromTimespStr = [formatter stringFromDate:confromTimesp];
    return confromTimespStr;
}


+(NSString*)compressImages:(NSString *)url andWidth:(int)width andHeigth:(int)heigth{
     NSString *string = [NSString stringWithFormat:@"%@/Publics/thumb?file=%@&width=%d&height=%d",HaoSe_URL,url,width,heigth];
    return string;
}

-(void)commAlertView:(NSString*)aInfo{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"提示"
                                                        message:aInfo
                                                       delegate:nil
                                              cancelButtonTitle:@"确定"
                                              otherButtonTitles:nil, nil];
    
    
    [alertView show];


}

-(void)commLabel:(CGRect)frame andLabel:(UILabel*)label{
   
    label.numberOfLines = 0;
    CGSize size = [label sizeThatFits:CGSizeMake(label.frame.size.width,MAXFLOAT)];
    label.frame = CGRectMake(label.frame.origin.x, label.frame.origin.y, label.frame.size.width, size.height);
    

}
-(void)commLabelWidth:(CGRect)frame andLabel:(UILabel *)label{
    label.numberOfLines = 0;
    CGSize size = [label sizeThatFits:CGSizeMake(MAXFLOAT,label.frame.size.width)];
    label.frame = CGRectMake(label.frame.origin.x, label.frame.origin.y,size.width+10, label.frame.size.height);
}

-(void)commImageView:(UIImageView *)iv{
    iv.contentMode =  UIViewContentModeScaleAspectFill;
//    iv.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    iv.clipsToBounds  = YES;
}

+(UIButton*)commBtn:(NSString*)title andFloatY:(CGFloat)y{
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(15, y, kScreenWidth-30, 50)];
    btn.backgroundColor = [UIColor navbackgroundColor];
    btn.layer.cornerRadius = 5.0;
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor ActionTitleColor] forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    return btn;
}

+(UILabel*)initLable:(UIFont*)font andTextColor:(UIColor*)color andTextAlignment:(NSTextAlignment)alignment andFrame:(CGRect)fram{
    UILabel *label = [[UILabel alloc]init];
    label.frame = fram;
    label.font = font;
    label.textColor = color;
    label.backgroundColor = [UIColor clearColor];
    label.textAlignment = alignment;
    return label;
}


+(NSMutableAttributedString*)AttributedString:(NSString *)str{
    NSMutableAttributedString *attri = [[NSMutableAttributedString alloc] initWithString:str];
    [attri addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:17.0] range:NSMakeRange(0, str.length)];
    [attri addAttribute:NSForegroundColorAttributeName value:[UIColor titleFieldBlackColor] range:NSMakeRange(0, str.length)];
    return attri;
}

+(NSMutableAttributedString*)MutableAttr:(NSString *)str andFont:(UIFont*)font andColor:(UIColor*)color{
      NSMutableAttributedString *attri = [[NSMutableAttributedString alloc] initWithString:str];
    [attri addAttribute:NSFontAttributeName value:font range:NSMakeRange(0, str.length)];
    [attri addAttribute:NSForegroundColorAttributeName value:color range:NSMakeRange(0, str.length)];
    return attri;
}

+(UIButton *)initButton:(UIFont *)font andTextColor:(UIColor *)color andTextAlignment:(UIControlContentHorizontalAlignment)alignment andFrame:(CGRect)fram andBackNormalImage:(NSString *)image{
    UIButton *btn = [[UIButton alloc]init];
    btn.frame = fram;
    btn.titleLabel.font  = font;
    [btn setTitleColor:color forState:UIControlStateNormal];
    btn.contentHorizontalAlignment = alignment;
//    btn.contentEdgeInsets = UIEdgeInsetsMake(0,10, 0, 0);
    btn.backgroundColor = [UIColor clearColor];
    [btn setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    return btn;
}



+(UIButton*)initButtonAndBackImage:(NSString*)image andBntFrame:(CGRect)frame1 andImageFrame:(CGRect)frame2{
    UIButton *btn = [[UIButton alloc]initWithFrame:frame1];
    btn.backgroundColor = [UIColor clearColor];
    
    UIImageView *iv = [[UIImageView alloc]initWithFrame:frame2];
    iv.image = [UIImage imageNamed:image];
    [btn addSubview:iv];
    
    return btn;
}

+(UIImageView*)initImageView:(CGRect)fram andImage:(NSString *)image{
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:fram];
    imageView.backgroundColor = [UIColor clearColor];
    imageView.image = [UIImage  imageNamed:image];
    return imageView;
}
+(UIImageView*)initImportanceImageView:(CGFloat)x andY:(CGFloat)y{
    UIImageView *icoIV = [commonSet initImageView:CGRectMake(x, y, 5, 5) andImage:@"star_mandatory-0"];
    return icoIV;
}

+(UITextField*)initTexeField:(UIFont*)font andTextColor:(UIColor*)color andTextAlignment:(NSTextAlignment)alignment andFrame:(CGRect)fram{
    UITextField *tf = [[UITextField alloc]init];
    tf.frame = fram;
    tf.font = font;
    tf.textColor = color;
    tf.backgroundColor = [UIColor clearColor];
    tf.textAlignment = alignment;
    return tf;
}
+(UITextView*)initTexeView:(UIFont *)font andTextColor:(UIColor *)color andTextAlignment:(NSTextAlignment)alignment andFrame:(CGRect)fram{
    UITextView *tv = [[UITextView alloc]init];
    tv.frame = fram;
    tv.font = font;
    tv.textColor = color;
    tv.backgroundColor = [UIColor clearColor];
    tv.textAlignment = alignment;
    return tv;

}



+(BOOL)isReachability{

    //检查网络
//    if (![[Reachability reachabilityForInternetConnection] isReachable]) {
//        UIAlertView *alertViews = [[UIAlertView alloc] initWithTitle:@"该功能需要连接网络才能使用，请检查您的网络连接状态" message:nil delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
//        [alertViews show];
//        return NO;
//    }
    return YES;
}

+(void)isUserAndToken{
    NSString *myToken = TOKEN;
    if (NULL_STR(myToken)) {
        [[NSUserDefaults standardUserDefaults]setObject:@"" forKey:@"token"];
    }
    
    NSString *myId = USERID;
    if (NULL_STR(myId)) {
        [[NSUserDefaults standardUserDefaults]setObject:@"" forKey:@"uid"];
    }
}

+(BOOL)isLoginAndToken{
    
    BOOL islog= LOGIN;
    BOOL isToken = TOKENEXPIRED;
    
    if (islog&&isToken) {
        return YES;
    }
    return NO;
}


-(void)setTokenHead{
//    WTURLRequestSerialization *ser = [WTURLRequestSerialization sharedRequestSerialization];
//    [ser setValue:TOKEN forHTTPHeaderField:@"token"];
    
}
-(void)setTokenAndUserIDHead:(NSString*)usid{
//    WTURLRequestSerialization *ser = [WTURLRequestSerialization sharedRequestSerialization];
//    [ser setValue:TOKEN forHTTPHeaderField:@"token"];
//    [ser setValue:USERID forHTTPHeaderField:usid];
}

+ (void)post:(NSString *)url params:(NSDictionary *)params success:(void (^)(id json))success failure:(void (^)(NSError *error))failure{
    
//    [WTRequestCenter postWithURL:url parameters:params finished:^(NSURLResponse *response, NSData *data) {
//        if (data) {
//            NSDictionary *result = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
//            if ([result isKindOfClass:[NSDictionary class]]) {
//                success(result);
//            }
//            
//        }
//    } failed:^(NSURLResponse *response, NSError *error) {
//        [SVProgressHUD showErrorWithStatus:@"加载失败"];
//        if (error) {
//            NSString *errorDescription = [error.userInfo objectForKey:@"NSLocalizedDescription"];
//            if (errorDescription) {
//                //请求超时。
//                if ([errorDescription isEqualToString:@"The request timed out."]) {
//                    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"提示"
//                                                                        message:@"请求超时，请稍后重试"
//                                                                       delegate:nil
//                                                              cancelButtonTitle:@"确定"
//                                                              otherButtonTitles:nil, nil];
//                    [alertView show];
//                }
//            }
//            return;
//        }
//        
//    }];
}


+(NSMutableDictionary*)addreeAnd:(NSArray *)starRegion{
    NSMutableDictionary *startDic = [NSMutableDictionary dictionary];
    for (int i=0; i<4; i++) {
        if (i==0) {
            [startDic setObject:starRegion[0] forKey:@"county"];
        }else if(i==1){
            if(starRegion.count>=2){
                [startDic setObject:starRegion[1] forKey:@"province"];
            }else{
                [startDic setObject:@"" forKey:@"province"];
            }
        }else if(i==2){
            if (starRegion.count>=3) {
                [startDic setObject:starRegion[2] forKey:@"city"];
            }else{
                [startDic setObject:@"" forKey:@"city"];
            }
        }else if(i==3){
            if (starRegion.count>=4) {
                [startDic setObject:starRegion[3] forKey:@"address"];
            }else{
                [startDic setObject:@"" forKey:@"address"];
            }
        }
    }
    return startDic;
}

+(void)publicsUserFavoriteUserID:(NSString *)userid AndFavoriti_id:(NSString *)favoriti_id AndType:(NSString *)type success:(void (^)(id))success failure:(void (^)(NSError *))failure{
    
 
    
    if ([commonSet isReachability]==NO) {
        return;
    }
    
    [SVProgressHUD show];
    
    [[[commonSet alloc]init]setTokenHead];
    
    NSDictionary *params = @{@"user_id":userid,@"favorite_id":favoriti_id,@"type":type};
    
    [commonSet post:[NSString stringWithFormat:@"%@Publics/userFavorite",HaoSe_URL] params:params success:^(id json) {
        NSDictionary *result = json;

        success(result);
        
        if ([result intValueForKey:@"code"]==200) {
            [SVProgressHUD showSuccessWithStatus:@"收藏成功！"];
        }else{
            [SVProgressHUD showSuccessWithStatus:[json objectForKey:@"message"]];
            
        }
    } failure:^(NSError *error) {
        
    }];
    
}

+(void)publicsCancelUserFavoriteUserID:(NSString *)userid AndFavoriti_id:(NSString *)favoriti_id AndType:(NSString *)type success:(void (^)(id))success failure:(void (^)(NSError *))failure{
    if ([commonSet isReachability]==NO) {
        return;
    }
    
    [SVProgressHUD show];
    
    [[[commonSet alloc]init]setTokenHead];
    
    NSDictionary *params = @{@"user_id":userid,@"favorite_id":favoriti_id,@"type":type};
    
    [commonSet post:[NSString stringWithFormat:@"%@Publics/cancelUserFavorite",HaoSe_URL] params:params success:^(id json) {
        NSDictionary *result = json;
        success(result);
        
        if ([result intValueForKey:@"code"]==200) {
            [SVProgressHUD showSuccessWithStatus:@"已取消收藏！"];
        }else{
            [SVProgressHUD showSuccessWithStatus:[json objectForKey:@"message"]];
        }
    } failure:^(NSError *error) {
        
    }];
    
}

+(void)publicsUserLikeUserID:(NSString *)userid Andlike_id:(NSString *)like_id AndType:(NSString *)type success:(void (^)(id))success failure:(void (^)(NSError *))failure{
    if ([commonSet isReachability]==NO) {
        return;
    }
    
    [SVProgressHUD show];
    
    [[[commonSet alloc]init]setTokenHead];
    
    NSDictionary *params = @{@"user_id":userid,@"like_id":like_id,@"modules_id":type};
    
    [commonSet post:[NSString stringWithFormat:@"%@Publics/userLike",HaoSe_URL] params:params success:^(id json) {
        NSDictionary *result = json;
        success(result);
        
        if ([result intValueForKey:@"code"]==200) {
            [SVProgressHUD showSuccessWithStatus:@"点赞成功！"];
        }else{
            [SVProgressHUD showSuccessWithStatus:[json objectForKey:@"message"]];
        }
    } failure:^(NSError *error) {
        
    }];
}

+(void)publicsCanUserLikeUserID:(NSString *)userid Andlike_id:(NSString *)like_id AndType:(NSString *)type success:(void (^)(id))success failure:(void (^)(NSError *))failure{
    if ([commonSet isReachability]==NO) {
        return;
    }
    
    [SVProgressHUD show];
    
    [[[commonSet alloc]init]setTokenHead];
    
    NSDictionary *params = @{@"user_id":userid,@"like_id":like_id,@"modules_id":type};
    
    [commonSet post:[NSString stringWithFormat:@"%@Publics/cancelUserLike",HaoSe_URL] params:params success:^(id json) {
        NSDictionary *result = json;
        success(result);
        
        if ([result intValueForKey:@"code"]==200) {
            [SVProgressHUD showSuccessWithStatus:@"已取消点赞！"];
        }else{
            [SVProgressHUD showSuccessWithStatus:[json objectForKey:@"message"]];
        }
    } failure:^(NSError *error) {
        
    }];
}

- (UIImage *)fixOrientation:(UIImage *)aImage {
    
    // No-op if the orientation is already correct
    if (aImage.imageOrientation == UIImageOrientationUp)
        return aImage;
    
    // We need to calculate the proper transformation to make the image upright.
    // We do it in 2 steps: Rotate if Left/Right/Down, and then flip if Mirrored.
    CGAffineTransform transform = CGAffineTransformIdentity;
    
    switch (aImage.imageOrientation) {
        case UIImageOrientationDown:
        case UIImageOrientationDownMirrored:
            transform = CGAffineTransformTranslate(transform, aImage.size.width, aImage.size.height);
            transform = CGAffineTransformRotate(transform, M_PI);
            break;
            
        case UIImageOrientationLeft:
        case UIImageOrientationLeftMirrored:
            transform = CGAffineTransformTranslate(transform, aImage.size.width, 0);
            transform = CGAffineTransformRotate(transform, M_PI_2);
            break;
            
        case UIImageOrientationRight:
        case UIImageOrientationRightMirrored:
            transform = CGAffineTransformTranslate(transform, 0, aImage.size.height);
            transform = CGAffineTransformRotate(transform, -M_PI_2);
            break;
        default:
            break;
    }
    
    switch (aImage.imageOrientation) {
        case UIImageOrientationUpMirrored:
        case UIImageOrientationDownMirrored:
            transform = CGAffineTransformTranslate(transform, aImage.size.width, 0);
            transform = CGAffineTransformScale(transform, -1, 1);
            break;
            
        case UIImageOrientationLeftMirrored:
        case UIImageOrientationRightMirrored:
            transform = CGAffineTransformTranslate(transform, aImage.size.height, 0);
            transform = CGAffineTransformScale(transform, -1, 1);
            break;
        default:
            break;
    }
    
    // Now we draw the underlying CGImage into a new context, applying the transform
    // calculated above.
    CGContextRef ctx = CGBitmapContextCreate(NULL, aImage.size.width, aImage.size.height,
                                             CGImageGetBitsPerComponent(aImage.CGImage), 0,
                                             CGImageGetColorSpace(aImage.CGImage),
                                             CGImageGetBitmapInfo(aImage.CGImage));
    CGContextConcatCTM(ctx, transform);
    switch (aImage.imageOrientation) {
        case UIImageOrientationLeft:
        case UIImageOrientationLeftMirrored:
        case UIImageOrientationRight:
        case UIImageOrientationRightMirrored:
            // Grr...
            CGContextDrawImage(ctx, CGRectMake(0,0,aImage.size.height,aImage.size.width), aImage.CGImage);
            break;
            
        default:
            CGContextDrawImage(ctx, CGRectMake(0,0,aImage.size.width,aImage.size.height), aImage.CGImage);
            break;
    }
    
    // And now we just create a new UIImage from the drawing context
    CGImageRef cgimg = CGBitmapContextCreateImage(ctx);
    UIImage *img = [UIImage imageWithCGImage:cgimg];
    CGContextRelease(ctx);
    CGImageRelease(cgimg);
    return img;
}

@end
