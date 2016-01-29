//
//  PTUtility.m
//  PlayTennis
//
//  Created by Krishantha Sunil on 29/1/16.
//  Copyright © 2016 Krishan. All rights reserved.
//

#import "PTUtility.h"

@implementation PTUtility

#define IDIOM UI_USER_INTERFACE_IDIOM()
#define IPAD  UIUserInterfaceIdiomPad

+(PTUtility*)sharedManager {
    static PTUtility *sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken,^{
        sharedManager = [[self alloc]init];
    });
    
    return sharedManager;
}

-(id)init{
    if (self=[super init]) {
        
    }
    
    return self;
}

// Get the Xib File name based on the Device Type
-(NSString*)getNibName:name {
    
    if (IDIOM==IPAD) {
        return [NSString stringWithFormat:@"%@_iPad",name];
    }
    
    return [NSString stringWithFormat:@"%@_iPhone",name];
}

@end
