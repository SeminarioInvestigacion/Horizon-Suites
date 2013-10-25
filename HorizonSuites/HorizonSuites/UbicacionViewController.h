//
//  UbicacionViewController.h
//  HorizonSuites
//
//  Created by user3747 on 9/28/13.
//  Copyright (c) 2013 Fernando Archila. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import "MapPoint.h"

//#define kGOOGLE_API_KEY @"AIzaSyCizq7QvPED3UkztXhCs1BTqyyFoRWRYWI"
#define kGOOGLE_API_KEY @"AIzaSyBmmmUy4jrp6gAxQGlzWz4TP_ikmXjCaas"
#define kBgQueue dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)

@interface UbicacionViewController : UIViewController

{
 
    CLLocationManager *locationManager;
    CLLocationCoordinate2D currentCentre;
    int currenDist;
    
}

@property (strong, nonatomic) IBOutlet MKMapView *mapView;



@end
