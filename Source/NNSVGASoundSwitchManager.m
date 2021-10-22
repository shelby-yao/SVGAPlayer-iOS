//
//  NNSVGASoundSwitchManager.m
//  SVGAPlayer
//
//  Created by Shelby on 2021/10/21.
//  Copyright © 2021 UED Center. All rights reserved.
//

#import "NNSVGASoundSwitchManager.h"
static NSString *const kNNSVGASoundSwitchManagerIsCloseSoundsKey = @"kNNSVGASoundSwitchManagerIsCloseSoundsKey";

@interface NNSVGASoundSwitchManager()
@property (nonatomic, assign) BOOL isCloseSounds;
@end
@implementation NNSVGASoundSwitchManager

+ (instancetype)shareManager {
    static NNSVGASoundSwitchManager * instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
        instance.isCloseSounds = [[NSUserDefaults standardUserDefaults] boolForKey:kNNSVGASoundSwitchManagerIsCloseSoundsKey];
    });
    
    return instance;
}

- (void)updateIsCloseSounds:(BOOL)isClose save:(BOOL)save {
    _isCloseSounds = isClose;
    if (save) {
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            [[NSUserDefaults standardUserDefaults] setBool:isClose forKey:kNNSVGASoundSwitchManagerIsCloseSoundsKey];
            [[NSUserDefaults standardUserDefaults] synchronize];
        });
    }
}

@end
