//
//  Fecha2ViewController.m
//  HorizonSuites
//
//  Created by Fernando Archila on 10/14/13.
//  Copyright (c) 2013 Fernando Archila. All rights reserved.
//

#import "Fecha2ViewController.h"
#import "ReservarViewController.h"

@interface Fecha2ViewController ()

@end

@implementation Fecha2ViewController

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
    
    [_datepicker_checkout setDate:now animated:YES] ;	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([[segue identifier] isEqualToString:@"pasarfechacheckout"])
    {
        NSDate *selected= [_datepicker_checkout date];
        
        NSDateFormatter *form = [[NSDateFormatter alloc] init];
        [form setDateFormat:@"MM-dd-YYYY"];
        NSString *str = [form stringFromDate:selected];
        NSLog(str);
        ReservarViewController *destino2 = [segue destinationViewController];
        destino2.fecha_checkout=str;
        
        
        
        
        
    }
}
@end
