//
//  UtilitesHeader.h
//  MeiToken
//
//  Created by MrfengJW on 16/5/19.
//  Copyright © 2016年 Feng. All rights reserved.
//

#ifndef UtilitesHeader_h
#define UtilitesHeader_h
/********  第一次登录  *********/
#define UserDefault_Set_GuideDidView()       [[NSUserDefaults standardUserDefaults] setObject:@"YES" forKey:@"GuidKey"];[[NSUserDefaults standardUserDefaults] synchronize]
#define UserDefault_Get_GuideDidView()          [[NSUserDefaults standardUserDefaults] objectForKey:@"GuidKey"]


#endif /* UtilitesHeader_h */
