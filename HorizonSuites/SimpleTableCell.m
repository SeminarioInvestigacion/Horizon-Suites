//
//  SimpleTableCell.m
//  HorizonSuites
//
//  Created by Fernando Archila on 10/6/13.
//  Copyright (c) 2013 Fernando Archila. All rights reserved.
//

#import "SimpleTableCell.h"

@implementation SimpleTableCell




- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
