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
@property (weak, nonatomic) IBOutlet UIView       *firstView;
@property (weak, nonatomic) IBOutlet UIView       *secondView;
@property (weak, nonatomic) IBOutlet UILabel      *firstLabel;
@property (weak, nonatomic) IBOutlet UILabel      *secondLabel;

@property (weak, nonatomic) IBOutlet UITextField  *firstTextField;
@property (weak, nonatomic) IBOutlet UITextField  *secondTextField;

@property (weak, nonatomic) IBOutlet UISwitch     *switchControl;
@property (weak, nonatomic) IBOutlet UISlider     *mySlider;
@property (weak, nonatomic) IBOutlet UILabel      *sliderChangeValueLabel;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView       *activityIndicator;
@property (weak, nonatomic) IBOutlet UITextField *firstViewSecondTextField;




- (IBAction)sliderValueChangeAction:(id)sender;
- (IBAction)switchModeDetection:(id)sender;
- (IBAction)firstButtonAction:(id)sender;
- (IBAction)secondButtonAction:(id)sender;

@property (weak, nonatomic) IBOutlet UISegmentedControl *weekdaySegmentControl;
@end

