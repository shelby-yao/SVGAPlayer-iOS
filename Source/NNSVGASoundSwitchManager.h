//
//  NNSVGASoundSwitchManager.h
//  SVGAPlayer
//
//  Created by Shelby on 2021/10/21.
//  Copyright © 2021 UED Center. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@interface NNSVGASoundSwitchManager : NSObject
@property (nonatomic, assign) BOOL isCloseSounds;
+ (instancetype)shareManager;
@end

NS_ASSUME_NONNULL_END
