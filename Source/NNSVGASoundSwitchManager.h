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
@property (nonatomic, assign, readonly) BOOL isCloseSounds;

/// 更改开关声音状态
/// @param isClose 开关
/// @param save 是否保存本地(NO应对未登录状态)
- (void)updateIsCloseSounds:(BOOL)isClose save:(BOOL)save;
+ (instancetype)shareManager;
@end

NS_ASSUME_NONNULL_END
