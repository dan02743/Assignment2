//
//  ViewController.h
//  VegetableCart
//
//  Created by Daniel O'Malley on 2/4/13.
//  Copyright (c) 2013 Daniel O'Malley. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray * cart;

@end
