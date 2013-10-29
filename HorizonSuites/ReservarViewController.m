//
//  ReservarViewController.m
//  HorizonSuites
//
//  Created by Fernando Archila on 10/13/13.
//  Copyright (c) 2013 Fernando Archila. All rights reserved.
//

#import "ReservarViewController.h"

@interface ReservarViewController (){
    int costo;
    int dias;
    int total;
    

}

@end
/*
extern NSDate *extern_fecha_checkin;
extern NSDate *extern_fecha_checkout;
extern NSInteger extern_room_type;
extern NSInteger indicador_fecha_checkin;
extern NSInteger indicador_fecha_checkout;

 */
@implementation ReservarViewController
NSString *str;

extern NSDate *extern_fecha_checkin;
extern NSDate *extern_fecha_checkout;
extern NSInteger extern_room_type;
extern NSInteger indicador_fecha_checkin;
extern NSInteger indicador_fecha_checkout;
extern  NSInteger costo;
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
    self.textfield_email.delegate=self;
    self.textfield_firstname.delegate=self;
    self.textfield_lastname.delegate=self;
    self.textfield_phone1.delegate=self;
    self.textfield_phone2.delegate=self;
    self.textfield_skype.delegate=self;
    
    
    self.label_checkin.text=self.fecha_checkin;
    self.label_checkout.text=self.fecha_checkout;
    self.label_room.text=self.room_type;
  
    if (indicador_fecha_checkin==1) {
        NSDateFormatter *form = [[NSDateFormatter alloc] init];
        [form setDateFormat:@"MM-dd-YYYY"];
        NSString *str = [form stringFromDate:extern_fecha_checkin];
        self.label_checkin.text=str;
    }
    if (indicador_fecha_checkout==1) {
        NSDateFormatter *form = [[NSDateFormatter alloc] init];
        [form setDateFormat:@"MM-dd-YYYY"];
        NSString *str = [form stringFromDate:extern_fecha_checkout];
        self.label_checkout.text=str;
    }
    if (extern_room_type==1){
        self.label_room.text=@"Simple";
        costo=80;
    
    } else if (extern_room_type==2){
        self.label_room.text=@"Double";
        costo=95;
        
    }else if (extern_room_type==1){
        self.label_room.text=@"Suite";
        costo=115;
        
    }
    
    
	// Do any additional setup after loading the view.
}



- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [_textfield_email resignFirstResponder];
    [_textfield_firstname resignFirstResponder];
    [_textfield_lastname resignFirstResponder];
    [_textfield_phone1 resignFirstResponder];
    [_textfield_phone2 resignFirstResponder];
    [_textfield_skype resignFirstResponder];

    }

- (BOOL)  textFieldShouldReturn:(UITextField *)textField {
    
    if (textField) {
        [textField resignFirstResponder];
    }
    return NO;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)reservar:(id)sender {
    
    NSTimeInterval secondsBetween = [extern_fecha_checkout timeIntervalSinceDate:extern_fecha_checkin];
    
    int numberOfDays = secondsBetween / 86400;
    
    
    total = costo* numberOfDays;
    
   // NSLog(@"There are %d days in between the two dates.", numberOfDays);

    
    NSString *mensaje =[NSString stringWithFormat:@"Su reservacion sera por %i ", total];
    
    confirmation = [[UIAlertView alloc] initWithTitle:@"Confirmation" message:mensaje delegate:self cancelButtonTitle: @"Cancel" otherButtonTitles:@"Confirm", nil];

    [confirmation show];
    
}
@end
