//
//  RoomViewController.m
//  HorizonSuites
//
//  Created by Fernando Archila on 10/16/13.
//  Copyright (c) 2013 Fernando Archila. All rights reserved.
//

#import "RoomViewController.h"
#import "ReservarViewController.h"

@interface RoomViewController ()

@end

@implementation RoomViewController

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
    UIPickerView * myPickerView = [[UIPickerView alloc] initWithFrame:CGRectMake(0, 0, 320, 320)];
    self.picker_cuarto.delegate = self;
    self.picker_cuarto.dataSource = self;
    [self.view addSubview:self.picker_cuarto];
    
    _arrayC= [[NSMutableArray alloc] initWithObjects:@"Simple",@"Doble",@"Suite", nil];

  
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([[segue identifier] isEqualToString:@"setroom"])
    {
       /* NSString *room= [self.picker_room ];
        
       
        NSLog(room);
       
        
      */
        ReservarViewController *destino2 = [segue destinationViewController];
        destino2.room_type=room_type;
        
        
    }
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView;
{
    return 1;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if (row==0){
        room_type=@"Simple";
        
    } if (row==1){
        
       room_type=@"Double";
        
    } if (row==2){
        
       room_type=@"Suite";  
    }
    NSLog(room_type);
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component;
{
    return [self.arrayC count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component;
{
    return [self.arrayC objectAtIndex:row];
}
/*
-(void) pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    }*/
    @end
