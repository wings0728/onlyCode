//
//  JCCellVoiceView.h
//  01-百思不得姐
//
//  Created by Jenny&Jason on 16/2/29.
//  Copyright © 2016年 Jenny&Jason. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JCJokeModel;

@interface JCCellVoiceView : UIView

+(instancetype)cellVoiceView;
/** cell中的模型 **/
@property (strong, nonatomic) JCJokeModel *model;

@end
