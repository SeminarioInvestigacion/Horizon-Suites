//
//  SimpleTableCell.h
//  HorizonSuites
//
//  Created by Fernando Archila on 10/6/13.
//  Copyright (c) 2013 Fernando Archila. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleTableCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *label_nombre_servicio;
@property (strong, nonatomic) IBOutlet UIImageView *image_servicio;

@end
