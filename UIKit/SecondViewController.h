//
//  SecondViewController.h
//  UIKit
//
//  Created by Milan Shah on 7/14/15.
//  Copyright © 2015 Milan Shah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

//Properties
@property NSString *showNameMessage;
@property (weak, nonatomic) IBOutlet UILabel *showNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *instructionLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segControl;
@property (weak, nonatomic) IBOutlet UILabel *segLabel;
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
@property (weak, nonatomic) IBOutlet UISwitch *mySwitch;
@property (weak, nonatomic) IBOutlet UIProgressView *progress;
@property (weak, nonatomic) IBOutlet UISlider *mySlider;
@property (weak, nonatomic) IBOutlet UILabel *stepperLabel;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;


//Actions
- (IBAction)sliderValueChanged:(id)sender;
- (IBAction)switchValueChanged:(id)sender;
- (IBAction)stepperValueChanged:(id)sender;




@end
