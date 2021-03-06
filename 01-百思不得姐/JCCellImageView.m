//
//  JCCellImageView.m
//  01-百思不得姐
//
//  Created by Jenny&Jason on 16/2/25.
//  Copyright © 2016年 Jenny&Jason. All rights reserved.
//

#import "JCCellImageView.h"
#import "JCJokeModel.h"
#import <UIImageView+WebCache.h>
#import "JCBigImageController.h"

@interface JCCellImageView()

@property (weak, nonatomic) IBOutlet UIImageView *gifImage;
@property (weak, nonatomic) IBOutlet UIImageView *pictureView;
@property (weak, nonatomic) IBOutlet UIButton *bigImageBtn;

@end

@implementation JCCellImageView

+(instancetype)cellImageView{
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
}

-(void)setModel:(JCJokeModel *)model{
    _model = model;
    //设置图片
    [self.pictureView sd_setImageWithURL:[NSURL URLWithString:model.image1]];
    //设置gif图标的隐藏
    self.gifImage.hidden = !model.is_gif;
    //判断是否超大图片
    if (!model.isTooBigImage) {
        self.pictureView.contentMode = UIViewContentModeScaleToFill;
        self.bigImageBtn.hidden = YES;
    }else{
        self.pictureView.contentMode = UIViewContentModeScaleAspectFill;
        self.bigImageBtn.hidden = NO;
    }
}

-(void)awakeFromNib{
    self.autoresizingMask = UIViewAutoresizingNone;
}
//当此view被点击
-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self bigImageClick];
}
- (IBAction)bigImageClick {
    JCBigImageController *bic = [[JCBigImageController alloc] init];
    bic.model = self.model;
    [self.window.rootViewController presentViewController:bic animated:YES completion:nil];
}

@end
