//
//  ViewController.m
//  AssociatedObjects
//
//  Created by leichunfeng on 15/6/25.
//  Copyright (c) 2015年 leichunfeng. All rights reserved.
//

#import "ViewController.h"
#import "ViewController+AssociatedObjects.h"

__weak NSString *string_weak_assign = nil;
__weak NSString *string_weak_retain = nil;
__weak NSString *string_weak_copy   = nil;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.associatedObject_assign = [NSString stringWithFormat:@"leichunfeng1"];
    self.associatedObject_retain = [NSString stringWithFormat:@"leichunfeng2"];
    self.associatedObject_copy   = [NSString stringWithFormat:@"leichunfeng3"];

    string_weak_assign = self.associatedObject_assign;
    string_weak_retain = self.associatedObject_retain;
    string_weak_copy   = self.associatedObject_copy;
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
//    NSLog(@"self.associatedObject_assign: %@", self.associatedObject_assign); // Will Crash
    NSLog(@"self.associatedObject_retain: %@", self.associatedObject_retain);
    NSLog(@"self.associatedObject_copy:   %@", self.associatedObject_copy);
}

@end
