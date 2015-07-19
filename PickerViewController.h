//
//  PickerViewController.h
//  UIKit
//
//  Created by Milan Shah on 7/18/15.
//  Copyright © 2015 Milan Shah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickerViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;
@property (weak, nonatomic) IBOutlet UILabel *pickerLabel;
@property (strong, nonatomic) NSArray *places;
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@end
