//
//  BIDDoubleComponentPickerViewController.h
//  Pickers
//
//  Created by 李 潇磊 on 13-4-9.
//  Copyright (c) 2013年 李 潇磊. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kFillingComponent 0
#define kBreadComponent   1

@interface BIDDoubleComponentPickerViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>
@property (strong, nonatomic) IBOutlet UIPickerView *doublePicker;
@property (strong, nonatomic) NSArray *fillingTypes;
@property (strong, nonatomic) NSArray *breadTypes;

- (IBAction)buttonPressed;

@end
