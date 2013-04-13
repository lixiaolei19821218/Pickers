//
//  BIDDoubleComponentPickerViewController.m
//  Pickers
//
//  Created by 李 潇磊 on 13-4-9.
//  Copyright (c) 2013年 李 潇磊. All rights reserved.
//

#import "BIDDoubleComponentPickerViewController.h"

@interface BIDDoubleComponentPickerViewController ()

@end

@implementation BIDDoubleComponentPickerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.fillingTypes = @[@"Ham", @"Turkey", @"Peanut Butter",
                          @"Tuna Salad", @"Chicken Salad", @"Roast Beef", @"Vegemite"];
    self.breadTypes = @[@"White", @"Whole Wheat", @"Rye",
                        @"Sourdough", @"Seven Grain"];}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed {
    NSInteger fillingRow = [self.doublePicker selectedRowInComponent:kFillingComponent];
    NSInteger breadRow = [self.doublePicker selectedRowInComponent:kBreadComponent];
    NSString *message = [[NSString alloc] initWithFormat:@"Your %@ on %@ will be right up.", self.fillingTypes[fillingRow], self.breadTypes[breadRow]];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Thank you for you order" message:message delegate:nil cancelButtonTitle:@"Great!" otherButtonTitles:nil];
    [alert show];
}

#pragma mark -
#pragma mark Picker Data Source Methods 
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (component == kFillingComponent)
    {
        return [self.fillingTypes count];
    }
    else
    {
        return [self.breadTypes count];
    }
}

#pragma mark Picker Delegate Methods
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (component == kFillingComponent)
    {
        return self.fillingTypes[row];
    }
    else
    {
        return self.breadTypes[row];
    }
}

@end
