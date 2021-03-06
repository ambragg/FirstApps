//
//  CharacterTableViewCell.h
//  GroupTherapy
//
//  Created by Aimee Bragg on 6/2/15.
//  Copyright (c) 2015 Whitney Lauren. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CharacterTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *characterImage;

@property (weak, nonatomic) IBOutlet UILabel *cellText;

@property (weak, nonatomic) IBOutlet UILabel *totalComics;


@end
