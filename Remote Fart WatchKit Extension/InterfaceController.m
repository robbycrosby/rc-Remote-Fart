//
//  InterfaceController.m
//  Remote Fart WatchKit Extension
//
//  Created by Robert Crosby on 4/25/15.
//  Copyright (c) 2015 Robert Crosby. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)play {
    NSString *counterString = @"Hey";
    NSDictionary *applicationData = [[NSDictionary alloc] initWithObjects:@[counterString] forKeys:@[@"counterValue"]];
    
    [WKInterfaceController openParentApplication:applicationData reply:^(NSDictionary *replyInfo, NSError *error) {
        NSLog(@"%@ %@",replyInfo, error);
    }];

}
@end



