//
//  DetailsView.h
//  aboutMVC
//
//  Created by OPSolutions on 06/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol DetailsViewDelegate <NSObject>

@required
- (void)didTapClose;
- (void)didTapChange;

@end
NS_ASSUME_NONNULL_BEGIN

@interface DetailsView : UIView



@property (strong) id<DetailsViewDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
