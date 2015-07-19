//
//  SecondViewController.m
//  UIKit
//
//  Created by Milan Shah on 7/14/15.
//  Copyright © 2015 Milan Shah. All rights reserved.
//

#import "SecondViewController.h"
#import "PickerViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor colorWithRed:82.0f/255.0f green:176.0f/255.0f blue:238.0f/255.0f alpha:1.0f];
    self.showNameLabel.text = self.showNameMessage;
    self.showNameLabel.textColor = [UIColor colorWithRed:89/255.0f green:89/255.0f blue:89/255.0f alpha:1];
    self.instructionLabel.textColor = [UIColor colorWithRed:89/255.0f green:89/255.0f blue:89/255.0f alpha:1];
    self.segLabel.textColor = [UIColor colorWithRed:89/255.0f green:89/255.0f blue:89/255.0f alpha:1];
    self.sliderLabel.textColor = [UIColor colorWithRed:89/255.0f green:89/255.0f blue:89/255.0f alpha:1];
    [self.activityIndicator setHidden:YES];
    
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithTitle:@"Picker" style:UIBarButtonItemStylePlain target:self action:@selector(goPicker)];
    [self.navigationItem setRightBarButtonItem:item];
    
    
}

- (void) goPicker
{
    PickerViewController *pvc = [[PickerViewController alloc]initWithNibName:@"PickerViewController" bundle:nil];
    [self.navigationController pushViewController:pvc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)segControlClicked:(id)sender {
    
    UISegmentedControl *ctrl = (UISegmentedControl *)sender;
    
    switch ([ctrl selectedSegmentIndex]) {
        case 0:
            self.segLabel.text = @"First one!";
            break;
        case 1:
            self.segLabel.text = @"Second one!";
            break;
        case 2:
            self.segLabel.text = @"Third one!";
            break;
        default:
            break;
    }
}


- (IBAction)sliderValueChanged:(id)sender {
    
    UISlider *slider = (UISlider *)sender;
    int value = slider.value;
    NSString *valueString = [NSString stringWithFormat:@"Value: %i", value];
    self.sliderLabel.text = valueString;
    self.progress.progress = slider.value;
}

- (IBAction)switchValueChanged:(id)sender {
    
    [self.activityIndicator setHidden:NO];
    
    UISwitch *switchValue = (UISwitch *)sender;
    if (switchValue.isOn) {
        self.sliderLabel.text = @"ON";
        NSLog(@"Switch is on!");
        [self.activityIndicator startAnimating];
    } else if (![switchValue isOn]) {
        self.sliderLabel.text = @"OFF";
        NSLog(@"Switch is off!");
        [self.activityIndicator setHidden:YES]  ;
        [self.activityIndicator stopAnimating];
    }
}

- (IBAction)stepperValueChanged:(id)sender {
    
    UIStepper *stepper = (UIStepper *)sender;
    NSString *newValue = [NSString stringWithFormat:@"%f", [stepper value]];
    self.stepperLabel.text = newValue;
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
