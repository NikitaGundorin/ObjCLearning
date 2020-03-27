//
//  NumbersViewController.m
//  ObjCLearning
//
//  Created by Никита Гундорин on 27.03.2020.
//  Copyright © 2020 Никита Гундорин. All rights reserved.
//

#import "NumbersViewController.h"
#include <math.h>

@interface NumbersViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation NumbersViewController

- (IBAction)buttonPressed:(id)sender {
    NSInteger number = [_textField.text integerValue];
    NSString* pattern = @"^-?[0-9]+$";
    NSRegularExpressionOptions regexOptions = NSRegularExpressionCaseInsensitive;
    NSError* error = NULL;
    NSRegularExpression* regex = [NSRegularExpression regularExpressionWithPattern:pattern options:regexOptions error:&error];
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:_textField.text
    options:0
      range:NSMakeRange(0, [_textField.text length])];
    if (numberOfMatches == 0){
        _label.text = @"Введите целое число в строку";
    }
    else {
        double p = pow(2, number);
        _label.text = [NSString stringWithFormat:@"%.2f",p];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

@end
