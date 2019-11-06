//
//  HomeView.h
//  aboutMVC
//
//  Created by OPSolutions on 06/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>



@protocol HomeViewDelegate <NSObject>

@required

- (void)didTapButton;

@end


NS_ASSUME_NONNULL_BEGIN

@interface HomeView : UIView

@property (weak, nonatomic) IBOutlet UIImageView *profilePictureImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIView *blankView;
@property (weak, nonatomic) IBOutlet UITableView *historyTableView;


@property (strong) id<HomeViewDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
