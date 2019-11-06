//
//  HomeView.m
//  aboutMVC
//
//  Created by OPSolutions on 06/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import "HomeView.h"

@implementation HomeView



- (IBAction)didTapButton:(id)sender {
    
    if (self.delegate && [self.delegate respondsToSelector:@selector(didTapButton)]){
        
        [self.delegate didTapButton];
        
    }
    
}



@end
