//
//  AppDelegate.m
//  NumberProblems-Objc
//
//  Created by Joshua Howland on 8/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

static int multiple = 8;
static int divisor = 6;


@interface AppDelegate ()

@end

@implementation AppDelegate
            

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOption
{
    [self iterateCount:4];
    [self multiplied:3];
    
    return YES;
}

-(void)iterateCount:(float)number{
    
    float myInt = [self multiplied:number];
    NSLog(@"Mulitiplied %f by %d to get %f", number, multiple, myInt);
    
    float myIntDivided = [self divided:myInt];
    NSLog(@"Divided %f by %d to get %f", myInt, divisor, myIntDivided);
    
    if (number == 0) {
        return;
    }
    else{
        NSLog(@"Iterate %f", number);
        number--;
        [self iterateCount:number];
    }
}
-(float)multiplied:(float)number{
    return number * multiple;
}

-(float)divided:(float)number{
    return number/divisor;
}

@end
