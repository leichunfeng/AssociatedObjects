//
//  ViewController+AssociatedObjects.h
//  AssociatedObjects
//
//  Created by leichunfeng on 15/6/25.
//  Copyright (c) 2015年 leichunfeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (AssociatedObjects)

@property (assign, nonatomic) NSString *associatedObject_assign;
@property (strong, nonatomic) NSString *associatedObject_retain;
@property (copy,   nonatomic) NSString *associatedObject_copy;

+ (NSString *)associatedObject;
+ (void)setAssociatedObject:(NSString *)associatedObject;

@end
