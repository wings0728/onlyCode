//
//  JCCellImageView.h
//  01-百思不得姐
//
//  Created by Jenny&Jason on 16/2/25.
//  Copyright © 2016年 Jenny&Jason. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JCJokeModel;

@interface JCCellImageView : UIView

+(instancetype)cellImageView;
/** cell中的模型 **/
@property (strong, nonatomic) JCJokeModel *model;

@property (weak, nonatomic) IBOutlet UIImageView *pictureView;

@end
