//
//  SongListCell.m
//  QQHomePage
//
//  Created by Cocos on 2020/3/16.
//  Copyright © 2020 Cocos. All rights reserved.
//

#import "SongListCell.h"
#import "SongCollectionViewCell.h"
#import "UIImageView+WebCache.h"

@interface SongListCell()

@end

@implementation SongListCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    [self.collectionView registerNib:[UINib nibWithNibName:@"SongCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"Cell"];
}

#pragma mark - UICollectionViewDelegate, UICollectionViewDataSource

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    SongCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    NSDictionary *dic = self.listJson[indexPath.item];
    
    [cell.imgV setImageURL:[NSURL URLWithString:dic[@"imgurl"]]];
    cell.imgV.asyncCornerRadius = 10.f;
    cell.titleLabel.text = dic[@"dissname"];
    cell.imgV.drawMask = YES;
    return cell;
}

@end
