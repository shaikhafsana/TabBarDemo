//
//  MapViewController.h
//  AsTabbarmachineTest
//
//  Created by Student P_02 on 19/03/17.
//  Copyright © 2017 Afsana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
@interface MapViewController : UIViewController<CLLocationManagerDelegate,MKMapViewDelegate>
{
    CLLocationManager *locationManager;
}
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@end
