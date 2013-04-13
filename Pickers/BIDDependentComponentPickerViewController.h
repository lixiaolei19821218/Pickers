//
//  BIDDependentComponentPickerViewController.h
//  Pickers
//
//  Created by 李 潇磊 on 13-4-9.
//  Copyright (c) 2013年 李 潇磊. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kStateComponent 0
#define kZipComponent   1

@interface BIDDependentComponentPickerViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (strong, nonatomic) IBOutlet UIPickerView *dependentPicker;
@property (strong, nonatomic) NSDictionary *stateZips;
@property (strong, nonatomic) NSArray *states;
@property (strong, nonatomic) NSArray *zips;
- (IBAction)buttonPressed;

@end
