//
//  ViewController.m
//  Remote Fart
//
//  Created by Robert Crosby on 4/25/15.
//  Copyright (c) 2015 Robert Crosby. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _play.layer.cornerRadius = 7.0f;
    _play.layer.borderColor = (__bridge CGColorRef)([UIColor whiteColor]);
    _play.layer.borderWidth = 2.0f;
    _play.clipsToBounds = YES;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (IBAction)play:(id)sender {
    SystemSoundID soundID;
    NSString *soundFile = [[NSBundle mainBundle] pathForResource:@"woopee" ofType:@"mp3"];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath:soundFile], &soundID);
    AudioServicesPlaySystemSound(soundID);
}


@end
