//
//  HomeViewController.h
//  aboutMVC
//
//  Created by OPSolutions on 06/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "../Views/HomeView.h"
#import "../../Details/Controllers/DetailsViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface HomeViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, HomeViewDelegate, DetailsViewControllerDelegate>

@property (strong, nonatomic) HomeView * homeView;


@end

NS_ASSUME_NONNULL_END
