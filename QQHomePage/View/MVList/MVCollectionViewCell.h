//
//  MVCollectionViewCell.h
//  QQHomePage
//
//  Created by Cocos on 2020/3/16.
//  Copyright © 2020 Cocos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AsyncImageView.h"

NS_ASSUME_NONNULL_BEGIN

@interface MVCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet AsyncImageView *imgV;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;


@property (weak, nonatomic) IBOutlet AsyncImageView *iconV;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

NS_ASSUME_NONNULL_END
