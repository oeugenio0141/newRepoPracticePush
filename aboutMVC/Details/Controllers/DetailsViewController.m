
//
//  DetailsViewController.m
//  aboutMVC
//
//  Created by OPSolutions on 06/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import "DetailsViewController.h"



@interface DetailsViewController ()

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.detailsView = (DetailsView*)[[[NSBundle mainBundle] loadNibNamed:@"DetailsView" owner:self options:nil] objectAtIndex:0];
    self.detailsView.delegate = self;
    [self.view addSubview:self.detailsView];
    

}

- (void)didTapClose{
    
    [self dismissViewControllerAnimated:true completion:nil];
    
}


- (void)didTapChange{
    [self.delegate didTapChange];
}
    
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
