//
//  UserDefaultHeader.h
//  MeiToken
//
//  Created by MrfengJW on 16/5/19.
//  Copyright © 2016年 Feng. All rights reserved.
//

#ifndef UserDefaultHeader_h
#define UserDefaultHeader_h

#define UserDefault_Set_Password(str)       [[NSUserDefaults standardUserDefaults] setObject:str forKey:@"password"];[[NSUserDefaults standardUserDefaults] synchronize]
#define UserDefault_Get_Password()          [[NSUserDefaults standardUserDefaults] objectForKey:@"password"]
#define UserDefault_Remove_Password()       [[NSUserDefaults standardUserDefaults]  removeObjectForKey:@"password"];[[NSUserDefaults standardUserDefaults] synchronize]

#define MAINBUNDLE  [NSBundle mainBundle]

#endif /* UserDefaultHeader_h */
