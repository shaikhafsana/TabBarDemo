//
//  CollectionViewController.m
//  AsTabbarmachineTest
//
//  Created by Student P_02 on 19/03/17.
//  Copyright © 2017 Afsana. All rights reserved.
//

#import "CollectionViewController.h"
#import "CustomCollectionViewCell.h"
@interface CollectionViewController ()

@end

@implementation CollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self LoadPlist];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)LoadPlist
{
    NSString *path=[[NSBundle mainBundle] pathForResource:@"MyList" ofType:@"plist"];
    plistArray=[NSArray arrayWithContentsOfFile:path];
    NSLog(@"%@",plistArray);
    if(plistArray.count)
        [_collection_View reloadData];
}

//Collection view Datasource methods
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return plistArray.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"Cell";
    CustomCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    
    
    NSMutableArray *data = [plistArray objectAtIndex:indexPath.item];
    
    cell.lbl_title.text=[data valueForKey:@"title"];
    NSString *imageName=[data valueForKey:@"imageName"];
    cell.image_View.image=[UIImage imageNamed:imageName];
    
    return cell;
    
}

@end
