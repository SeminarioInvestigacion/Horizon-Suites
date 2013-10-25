//
//  ReservarViewController.m
//  HorizonSuites
//
//  Created by Fernando Archila on 10/13/13.
//  Copyright (c) 2013 Fernando Archila. All rights reserved.
//

#import "ReservarViewController.h"

@interface ReservarViewController (){

}

@end

@implementation ReservarViewController
NSString *str;

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
    
    confirmation = [[UIAlertView alloc] initWithTitle:@"Confirmation" message:@"El precio es de $67" delegate:self cancelButtonTitle: @"Cancel" otherButtonTitles:@"Confirm", nil];

    [confirmation show];
    
}
@end
