//
//  FechaViewController.m
//  HorizonSuites
//
//  Created by Fernando Archila on 10/13/13.
//  Copyright (c) 2013 Fernando Archila. All rights reserved.
//

#import "FechaViewController.h"
#import "ReservarViewController.h"

@interface FechaViewController ()

@end

@implementation FechaViewController

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
    NSDate *now= [NSDate date];
    
    [_checkin_datepicker setDate:now animated:YES] ;
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

    if ([[segue identifier] isEqualToString:@"pasarfecha_checkin"])
    {
        NSDate *selected= [_checkin_datepicker date];
        
        NSDateFormatter *form = [[NSDateFormatter alloc] init];
        [form setDateFormat:@"MM-dd-YYYY"];
        NSString *str2 = [form stringFromDate:selected];
       // NSLog(str);
        ReservarViewController *destino = [segue destinationViewController];
        destino.fecha_checkin=str2;
        indicador_fecha_checkin=1;
        extern_fecha_checkin=selected;
        
     
       
        
    
    }
    
}
@end
