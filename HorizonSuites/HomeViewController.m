//
//  HomeViewController.m
//  HorizonSuites
//
//  Created by Fernando Archila on 9/27/13.
//  Copyright (c) 2013 Fernando Archila. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()


@end

@implementation HomeViewController

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
    NSOperationQueue *cola_imagenes = [NSOperationQueue new];
    NSInvocationOperation *operacion=[[NSInvocationOperation alloc] initWithTarget:self selector:@selector(LoadImages) object:nil];
    [cola_imagenes addOperation:operacion];
   
    
    
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) LoadImages  {
   
    
    NSURL *url = [NSURL URLWithString:@"http://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Hotel_Kazakhstan.jpg/402px-Hotel_Kazakhstan.jpg"];
    NSData *data =  [NSData dataWithContentsOfURL:url];
  // NSURL *url_logo = [NSURL URLWithString:@""];
  //  NSData *data_logo =  [NSData dataWithContentsOfURL:url_logo];
    
    UIImage *imgd = [UIImage imageWithData:data];
   //  UIImage *imgd_logo = [UIImage imageWithData:data_logo];
    
    [self.imagen performSelectorOnMainThread:@selector(setImage:) withObject:(imgd) waitUntilDone:YES];
     //[self.logo performSelectorOnMainThread:@selector(setImage:) withObject:(imgd_logo) waitUntilDone:YES];

    
    

}

- (IBAction)cargar:(id)sender {
  
  
}

- (IBAction)fb_button:(id)sender {
   
    
      [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.facebook.com/pages/Holiday-Inn-Zona-10-Guatemala/135752759825855"]];
}


- (IBAction)tw_Button:(id)sender {
      [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/HolidayInn"]];
}
@end
