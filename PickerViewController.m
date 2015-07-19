//
//  PickerViewController.m
//  UIKit
//
//  Created by Milan Shah on 7/18/15.
//  Copyright © 2015 Milan Shah. All rights reserved.
//

#import "PickerViewController.h"

@interface PickerViewController ()

@end

@implementation PickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.pickerView.dataSource = self;
    self.pickerView.delegate = self;
    self.view.backgroundColor = [UIColor colorWithRed:82.0f/255.0f green:176.0f/255.0f blue:238.0f/255.0f alpha:1.0f];
    self.pickerLabel.textColor = [UIColor colorWithRed:89/255.0f green:89/255.0f blue:89/255.0f alpha:1];
    self.questionLabel.textColor = [UIColor colorWithRed:89/255.0f green:89/255.0f blue:89/255.0f alpha:1];
    self.places = [[NSArray alloc]initWithObjects:@"New York", @"Virginia", @"New Jersey", @"California", @"Texas", @"Delaware", @"Utah", @"Pennsylvania",@"Alabama", @"Arkansas", @"Illinois", @"Arizona", @"Kansas", @"Florida", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfComponentsInPickerView:(nonnull UIPickerView *)pickerView {
    
    return 1;
}

-(NSInteger)pickerView:(nonnull UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    return self.places.count;
}

-(nullable NSString *)pickerView:(nonnull UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    
    return self.places[row];
}

-(void)pickerView:(nonnull UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    
    NSString *message = [NSString stringWithFormat:@"Ok. Let's go to %@", self.places[row]];
    self.pickerLabel.text = message;
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
