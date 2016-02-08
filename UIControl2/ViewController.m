//
//  ViewController.m
//  UIControl2
//
//  Created by Pavankumar Arepu on 28/01/2016.
//  Copyright © 2016 ppam. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [_sampleSegment addTarget:self action:@selector(MySegmentControlAction:) forControlEvents: UIControlEventValueChanged];
    _sampleSegment.selectedSegmentIndex = 0;
    
    [_weekdaySegmentControl addTarget:self action:@selector(showWeekDays:) forControlEvents:UIControlEventValueChanged];
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


-(UIColor*)colorWithHexString:(NSString*)hex
{
    NSString *cString = [[hex stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    // String should be 6 or 8 characters
    if ([cString length] < 6) return [UIColor grayColor];
    
    // strip 0X if it appears
    if ([cString hasPrefix:@"0X"]) cString = [cString substringFromIndex:2];
    
    if ([cString length] != 6) return  [UIColor grayColor];
    
    // Separate into r, g, b substrings
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *rString = [cString substringWithRange:range];
    
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f)
                           green:((float) g / 255.0f)
                            blue:((float) b / 255.0f)
                           alpha:1.0f];
}

-(void)showWeekDays:(UISegmentedControl *)sender
{
    if (_weekdaySegmentControl.selectedSegmentIndex == 0 )
    {
        self.firstView.backgroundColor = [UIColor greenColor];
        self.secondView.backgroundColor = [UIColor greenColor];

    }else if (_weekdaySegmentControl.selectedSegmentIndex == 1)
    {
        self.firstView.backgroundColor = [UIColor grayColor];
        self.secondView.backgroundColor = [UIColor greenColor];

    }else if (_weekdaySegmentControl.selectedSegmentIndex == 2)
    {
        self.firstView.backgroundColor = [UIColor blueColor];
        self.secondView.backgroundColor = [UIColor blueColor];

    }else if (_weekdaySegmentControl.selectedSegmentIndex == 3)
    {
        self.firstView.backgroundColor = [UIColor yellowColor];
        self.secondView.backgroundColor = [UIColor yellowColor];

    }else if (_weekdaySegmentControl.selectedSegmentIndex == 4)
    {
        self.firstView.backgroundColor = [UIColor purpleColor];
        self.secondView.backgroundColor = [UIColor purpleColor];

    }else if (_weekdaySegmentControl.selectedSegmentIndex == 5)
    {
        self.firstView.backgroundColor = [UIColor brownColor];
        self.secondView.backgroundColor = [UIColor brownColor];

    }else if (_weekdaySegmentControl.selectedSegmentIndex == 6)
    {
        self.firstView.backgroundColor = [UIColor lightGrayColor];
        self.secondView.backgroundColor = [UIColor lightGrayColor];

    }else if (_weekdaySegmentControl.selectedSegmentIndex == 7)
    {
        self.firstView.backgroundColor = [UIColor lightTextColor];
        self.secondView.backgroundColor = [UIColor lightTextColor];

    }
    
//    switch (_weekdaySegmentControl.selectedSegmentIndex)
//    {
//        case 0:
//            self.firstView.backgroundColor greenColor]];
//            break;
//        case 1:
//            <#statements#>
//            break;
//            
//        default:
//            break;
//    }
}

-(void)MySegmentControlAction:(UISegmentedControl *)sender
{
    NSLog(@"Came to MySegmentMethod %s",__func__);
    
    if (_sampleSegment.selectedSegmentIndex == 0)
    {
        _firstLabel.hidden = NO;
        _firstView.hidden = NO;
        
        
        _secondView.hidden = YES;
        _secondLabel.hidden = YES;
        
        _firstView.backgroundColor = [UIColor greenColor];
        _firstLabel.text  = @"You are in First Segment";
    }else if(_sampleSegment.selectedSegmentIndex == 1)
    {
        _secondView.backgroundColor = [UIColor blueColor];
        _secondLabel.text  = @"You are in second Segment";
        
        
        _firstLabel.hidden = YES;
        _firstView.hidden = YES;
        
        _secondView.hidden = NO;
        _secondLabel.hidden = NO;
        
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)firstButtonAction:(id)sender
{
    _firstLabel.text = [NSString stringWithFormat:@"%@ %@",_firstTextField.text,_firstViewSecondTextField.text];
    
//    UIAlertController *sampleAlert = [[UIAlertController alloc]init];
//    
//   sampleAlert = [UIAlertController alertControllerWithTitle:@"My Alert"
//                                                                   message:@"This is an alert."
//                                                            preferredStyle:UIAlertControllerStyleAlert];
//    
//    
//    [self presentViewController:sampleAlert animated:YES completion:nil];

    
    
}

- (IBAction)secondButtonAction:(id)sender
{
    NSString *secondTextFieldText = _secondTextField.text;
    _secondLabel.text = [NSString stringWithFormat:@"%@ %@",_secondLabel.text,secondTextFieldText];
}


- (IBAction)sliderValueChangeAction:(id)sender
{
    int value = _mySlider.value * 100;
    
    _sliderChangeValueLabel.text = [NSString stringWithFormat:@"%d",value];
    
}


- (IBAction)switchModeDetection:(id)sender
{

    if([_switchControl isOn])
    {
        NSLog(@"Switch is ON");
       // self.myTimer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(updateUI:) userInfo:nil repeats:YES];
        
        _secondTextField.hidden = NO;
        _secondLabel.hidden = NO;
        _mySlider.hidden = NO;
        [_activityIndicator startAnimating];
    
    } else
    {
        NSLog(@"Switch is OFF");
        
        _secondTextField.hidden = YES;
        _secondLabel.hidden = YES;
        _mySlider.hidden = YES;
        [_activityIndicator stopAnimating];

    }

}


@end
