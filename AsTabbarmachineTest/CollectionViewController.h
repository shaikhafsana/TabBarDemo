//
//  CollectionViewController.h
//  AsTabbarmachineTest
//
//  Created by Student P_02 on 19/03/17.
//  Copyright © 2017 Afsana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewController : UIViewController<UICollectionViewDelegate,UICollectionViewDataSource>
{
    NSArray *plistArray;
}
@property (strong, nonatomic) IBOutlet UICollectionView *collection_View;
@end
