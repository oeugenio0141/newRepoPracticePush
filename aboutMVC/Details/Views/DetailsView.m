//
//  DetailsView.m
//  aboutMVC
//
//  Created by OPSolutions on 06/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import "DetailsView.h"

@implementation DetailsView

- (IBAction)closeDetailsViewButton:(id)sender {
    
    if (self.delegate && [self.delegate respondsToSelector:@selector(didTapClose)]){
        
        [self.delegate didTapClose];
        
    }
    
    
}

- (IBAction)somethingToChangeButton:(id)sender {
    
    if (self.delegate && [self.delegate respondsToSelector:@selector(didTapChange)]){
        
        [self.delegate didTapChange];
        
    }
    
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
