//
//  RoomViewController.h
//  HorizonSuites
//
//  Created by Fernando Archila on 10/16/13.
//  Copyright (c) 2013 Fernando Archila. All rights reserved.
//

#import "ViewController.h"

@interface RoomViewController : ViewController <UIPickerViewDataSource,UIPickerViewDelegate>
{

    NSString *room_type;
}

@property (strong, nonatomic) IBOutlet UIPickerView *picker_cuarto;
@property (strong, nonatomic) NSMutableArray *arrayC;

@end
