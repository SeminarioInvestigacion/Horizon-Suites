//
//  FechaViewController.h
//  HorizonSuites
//
//  Created by Fernando Archila on 10/13/13.
//  Copyright (c) 2013 Fernando Archila. All rights reserved.
//

#import "ViewController.h"

@interface FechaViewController : ViewController

{NSString *str;
    NSString *str2;
    
}
@property (strong, nonatomic) IBOutlet UIDatePicker *checkin_datepicker;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *SetDate;

- (IBAction)set_date:(id)sender;

- (IBAction)cancel_selection:(id)sender;
@end
