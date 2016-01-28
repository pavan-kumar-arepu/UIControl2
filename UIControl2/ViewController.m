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
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
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
    NSString *firstTextFieldText = _firstTextField.text;
    _firstLabel.text = [NSString stringWithFormat:@"%@ %@",_firstLabel.text,firstTextFieldText];
    
    UIAlertController *sampleAlert = [[UIAlertController alloc]init];
    
   sampleAlert = [UIAlertController alertControllerWithTitle:@"My Alert"
                                                                   message:@"This is an alert."
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    
    [self presentViewController:sampleAlert animated:YES completion:nil];

    
    
}

- (IBAction)secondButtonAction:(id)sender
{
    NSString *secondTextFieldText = _secondTextField.text;
    _secondLabel.text = [NSString stringWithFormat:@"%@ %@",_secondLabel.text,secondTextFieldText];
}
@end
