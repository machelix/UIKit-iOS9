//
//  ViewController.h
//  UIKit
//
//  Created by Milan Shah on 7/14/15.
//  Copyright © 2015 Milan Shah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//Properties
@property (weak, nonatomic) IBOutlet UILabel *changeLabel;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIButton *magicButton;

//Actions
- (IBAction)magicButtonClicked:(id)sender;

@end

