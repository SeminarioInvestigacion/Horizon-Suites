//
//  HomeViewController.h
//  HorizonSuites
//
//  Created by Fernando Archila on 9/27/13.
//  Copyright (c) 2013 Fernando Archila. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>


@interface HomeViewController : UIViewController
<MFMailComposeViewControllerDelegate>
@property (strong, nonatomic) IBOutlet UIImageView *imagen;
@property (strong, nonatomic) IBOutlet UIImageView *logo;
- (IBAction)cargar:(id)sender;
- (IBAction)fb_button:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *twitter_button;
- (IBAction)tw_Button:(id)sender;
- (IBAction)Send_Mail:(id)sender;

@end
