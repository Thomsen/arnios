//
//  TodoItem.h
//  arnios
//
//  Created by cinna on 14-12-6.
//  Copyright (c) 2014年 Personal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TodoItem : NSObject

@property NSString *itemName;

@property BOOL completed;

@property (readonly) NSDate *creationDate;

@end
