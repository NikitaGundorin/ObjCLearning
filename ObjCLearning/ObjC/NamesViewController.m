//
//  NamesViewController.m
//  ObjCLearning
//
//  Created by Никита Гундорин on 27.03.2020.
//  Copyright © 2020 Никита Гундорин. All rights reserved.
//

#import "NamesViewController.h"

@interface NamesViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property NSString *text;
@end

@implementation NamesViewController
- (IBAction)buttonPressed:(id)sender {
    _text = [[NSString alloc] initWithFormat:@"%@ %@",_textField.text, _text];
    _label.text = _text;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _text = @"";
    _label.text = _text;
}

@end
