//
//  FGMotionize.m
//  SunUp
//
//  Created by Finn Gaida on 19.05.14.
//  Copyright (c) 2014 Finn Gaida. All rights reserved.
//

void FGMotionize(UIView *v) {
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7) {
    
        UIInterpolatingMotionEffect *x = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.x" type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
        x.minimumRelativeValue = @-10;
        x.maximumRelativeValue = @10;
        
        UIInterpolatingMotionEffect *y = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.y" type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
        y.minimumRelativeValue = @-10;
        y.maximumRelativeValue = @10;
        
        [v addMotionEffect:x];
        [v addMotionEffect:y];
        
    } else {
        
        NSLog(@"Unfortunately only iOS 7 and up support this feature.");
        
    }
}
