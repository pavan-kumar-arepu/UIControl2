//
//  ViewController.h
//  UIControl2
//
//  Created by Pavankumar Arepu on 28/01/2016.
//  Copyright © 2016 ppam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *sampleSegment;
@property (weak, nonatomic) IBOutlet UIView *firstView;
@property (weak, nonatomic) IBOutlet UIView *secondView;
@property (weak, nonatomic) IBOutlet UILabel *firstLabel;
@property (weak, nonatomic) IBOutlet UILabel *secondLabel;

@property (weak, nonatomic) IBOutlet UITextField *firstTextField;
@property (weak, nonatomic) IBOutlet UITextField *secondTextField;


- (IBAction)firstButtonAction:(id)sender;
- (IBAction)secondButtonAction:(id)sender;

@end

