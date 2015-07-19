//
//  ViewController.m
//  UIKit
//
//  Created by Milan Shah on 7/14/15.
//  Copyright © 2015 Milan Shah. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.magicButton.backgroundColor = [UIColor colorWithRed:218/255.0f green:235/255.0f blue:245/255.0f alpha:1];
    [self.magicButton setTitleColor:[UIColor colorWithRed:1/255.0f green:57/255.0f blue:103/255.0f alpha:1] forState:UIControlStateNormal];
    self.changeLabel.textColor = [UIColor colorWithRed:89/255.0f green:89/255.0f blue:89/255.0f alpha:1];
    self.view.backgroundColor = [UIColor colorWithRed:82.0f/255.0f green:176.0f/255.0f blue:238.0f/255.0f alpha:1.0f];
    [self.magicButton setTitle:@"Let's go" forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)magicButtonClicked:(id)sender {
    
    if (self.textField.text.length == 0) {
        //Show the alert
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:@"Please type your name!" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *okButton = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
        [alert addAction:okButton];
        [self presentViewController:alert animated:YES completion:nil];
        
    }
    
    [self.textField resignFirstResponder];
}

-(void)prepareForSegue:(nonnull UIStoryboardSegue *)segue sender:(nullable id)sender {
    
    if ([[segue identifier] isEqualToString:@"secondScreen"]) {
        
        SecondViewController *svc = segue.destinationViewController;
        //Get the name of the person
        NSString *name = self.textField.text;
        //Change the label
        NSString *message = [[NSString alloc]initWithFormat:@"Hello, %@!", name];
        svc.showNameMessage = [NSString stringWithFormat:@"%@", message];
    }
}

@end
