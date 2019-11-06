//
//  DetailsViewController.h
//  aboutMVC
//
//  Created by OPSolutions on 06/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "../Views/DetailsView.h"

@protocol DetailsViewControllerDelegate <NSObject>

@required

- (void) didTapChange;


@end
NS_ASSUME_NONNULL_BEGIN

@interface DetailsViewController : UIViewController <DetailsViewDelegate>

@property (strong, nonatomic) DetailsView * detailsView;

@property (strong) id<DetailsViewControllerDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
