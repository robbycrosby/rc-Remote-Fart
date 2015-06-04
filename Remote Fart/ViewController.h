//
//  ViewController.h
//  Remote Fart
//
//  Created by Robert Crosby on 4/25/15.
//  Copyright (c) 2015 Robert Crosby. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *play;
- (IBAction)play:(id)sender;


@end

