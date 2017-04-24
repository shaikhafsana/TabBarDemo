//
//  GalleryViewController.m
//  AsTabbarmachineTest
//
//  Created by Student P_02 on 19/03/17.
//  Copyright © 2017 Afsana. All rights reserved.
//

#import "GalleryViewController.h"

@interface GalleryViewController ()

@end

@implementation GalleryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)ShowGallery:(id)sender {
    UIImagePickerController *picker=[[UIImagePickerController alloc]init];
    picker.delegate=self;
    picker.sourceType=UIImagePickerControllerSourceTypePhotoLibrary;
    picker.allowsEditing=YES;
    [self presentViewController:picker animated:YES completion:nil];
    }
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(nullable NSDictionary<NSString *,id> *)editingInfo NS_DEPRECATED_IOS(2_0, 3_0);
{
    NSLog(@"%@",editingInfo);
    UIImage *imge = editingInfo [UIImagePickerControllerOriginalImage];
    _imageVIew.image=imge;
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
