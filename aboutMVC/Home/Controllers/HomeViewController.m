//
//  HomeViewController.m
//  aboutMVC
//
//  Created by OPSolutions on 06/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import "HomeViewController.h"


@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Cast the Xib to HomeView
    
    //NSBundle = Bundle Identifier *All files under NSBundle
    //Load yung Xib na si HomeView
    //Object at Index Path *Yung pinaka top na view
    self.homeView = (HomeView*)[[[NSBundle mainBundle] loadNibNamed:@"HomeView" owner:self options:nil] objectAtIndex:0];
    
    self.homeView.nameLabel.text = @"Jeyo Eugenio";
    self.homeView.profilePictureImageView.image = [UIImage imageNamed:@"ic_dp"];
    
    self.homeView.delegate = self;
    
    //Link delegates and dataSource programatically
//    self.homeView.historyTableView.delegate = self;
//    self.homeView.historyTableView.dataSource = self;
    
    
    [self.view addSubview:self.homeView];

}


- (void)didTapButton {
    
    [self performSegueWithIdentifier:@"nextSegue" sender:self];
    
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqualToString:@"nextSegue"]) {
        DetailsViewController *vc = [segue destinationViewController];
        
        vc.delegate = self;
    }
    
}

- (void)didTapChange{
 
    self.homeView.nameLabel.text = @"Nagbago ka na! :(";
    
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
