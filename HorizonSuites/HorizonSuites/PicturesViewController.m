//
//  PicturesViewController.m
//  HorizonSuites
//
//  Created by user3747 on 10/27/13.
//  Copyright (c) 2013 Fernando Archila. All rights reserved.
//

#import "PicturesViewController.h"

@interface PicturesViewController (){
    NSArray *hotelPictures;
}

@end

@implementation PicturesViewController

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
	// Do any additional setup after loading the view.
    
    hotelPictures = [NSArray arrayWithObjects:@"h1.jpg",@"h2.jpg",nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return hotelPictures.count;
}



- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"Cell";
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    UIImageView *hotelImageView = (UIImageView *)[cell viewWithTag:100];
    hotelImageView.image = [UIImage imageNamed:[hotelPictures objectAtIndex:indexPath.row]];
    
    return cell;
}


@end
