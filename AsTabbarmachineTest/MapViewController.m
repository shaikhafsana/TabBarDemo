//
//  MapViewController.m
//  AsTabbarmachineTest
//
//  Created by Student P_02 on 19/03/17.
//  Copyright © 2017 Afsana. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self LoadMap];
}
-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations
{
    CLLocation *currentLoction=[locations lastObject];
    if(currentLoction !=nil)
    {
        NSLog(@" lati: %f Long: %f",currentLoction.coordinate.latitude,currentLoction.coordinate.longitude);
        [locationManager stopUpdatingLocation];
    }
    
    
    
    
}
-(void)LoadMap{
    locationManager=[[CLLocationManager alloc]init];
    locationManager.delegate = self;
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    locationManager.distanceFilter = kCLDistanceFilterNone;
    //[locationManager requestAlwaysAuthorization];
    [locationManager requestWhenInUseAuthorization];
    [locationManager startUpdatingLocation];
    
    MKPointAnnotation *point = [[MKPointAnnotation alloc]init];
    point.title =@"Welcome to Pune";
    point.coordinate = locationManager.location.coordinate;
    [_mapView addAnnotation:point];
    CLLocation *location=locationManager.location;
    CLLocationCoordinate2D coordinate=location.coordinate;
    NSLog(@"Latitude%f",coordinate.latitude);
    NSLog(@"Longitude%f",coordinate.longitude);
    
    MKPointAnnotation *pointAnnotation=[[MKPointAnnotation alloc]init];
    pointAnnotation.coordinate=coordinate;
    [_mapView addAnnotation:pointAnnotation];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
