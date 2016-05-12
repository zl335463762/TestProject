//
//  MYTableViewCell.h
//  TestProject
//
//  Created by lang on 16/5/10.
//  Copyright © 2016年 lang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MYTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIControl *leftControl;
@property (weak, nonatomic) IBOutlet UIControl *rightControl;
@property (weak, nonatomic) IBOutlet UIImageView *leftImage;
@property (weak, nonatomic) IBOutlet UIImageView *rightImage;
@property (weak, nonatomic) IBOutlet UILabel *lTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLeftLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceRightLabel;


@end
