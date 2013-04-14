//
//  BIDCustomPickerViewController.h
//  Pickers
//
//  Created by 李 潇磊 on 13-4-9.
//  Copyright (c) 2013年 李 潇磊. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDCustomPickerViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (strong, nonatomic) IBOutlet UIPickerView *picker;
@property (strong, nonatomic) IBOutlet UILabel *winLabel;
@property (strong, nonatomic) NSArray *images;
@property (strong, nonatomic) IBOutlet UIButton *button;

- (IBAction)spin;

@end
