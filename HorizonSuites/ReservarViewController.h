//
//  ReservarViewController.h
//  HorizonSuites
//
//  Created by Fernando Archila on 10/13/13.
//  Copyright (c) 2013 Fernando Archila. All rights reserved.
//

#import "ViewController.h"

@interface ReservarViewController : ViewController <UIVideoEditorControllerDelegate>
{
NSString *str,*room_type,*str2;
    IBOutlet UIAlertView  *confirmation;
   
    
    
}

extern NSDate *extern_fecha_checkin;
extern NSDate *extern_fecha_checkout;
extern NSInteger extern_room_type;
extern NSInteger indicador_fecha_checkin;
extern NSInteger indicador_fecha_checkout;
 extern NSInteger costo;

@property (strong, nonatomic) IBOutlet UILabel *label_checkin;
- (IBAction)reservar:(id)sender;
@property (nonatomic, strong) NSString *fecha_checkin;
@property (nonatomic, strong) NSString *fecha_checkout;
@property (strong, nonatomic) IBOutlet UILabel *label_checkout;
@property (strong, nonatomic) IBOutlet UILabel *label_room;
@property (nonatomic, strong) NSString *room_type;
@property (strong, nonatomic) IBOutlet UITextField *textfield_firstname;
@property (strong, nonatomic) IBOutlet UITextField *textfield_lastname;
@property (strong, nonatomic) IBOutlet UITextField *textfield_phone1;
@property (strong, nonatomic) IBOutlet UITextField *textfield_phone2;
@property (strong, nonatomic) IBOutlet UITextField *textfield_skype;
@property (strong, nonatomic) IBOutlet UITextField *textfield_email;
- (IBAction)reservar:(id)sender;

@end
