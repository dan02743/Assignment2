//
//  ViewController.m
//  VegetableCart
//
//  Created by Daniel O'Malley on 2/4/13.
//  Copyright (c) 2013 Daniel O'Malley. All rights reserved.
//

#import "ViewController.h"
#import "Vegetable.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
   
    _cart = [NSMutableArray arrayWithCapacity:0];
    
    for(int i = 0; i < 20; i++){
        NSString * vegeName = [NSString stringWithFormat:@"Onion %d", i];
        
        if((i % 10) == 0){
            vegeName = [NSString stringWithFormat:@"Free Onion %d", i];
        }
        Vegetable * anonVege = [[Vegetable alloc] initWithWithName:vegeName andColor:@"Satin" andShape:@"Teardrop-shaped"];
        [_cart addObject:anonVege];
    }
    
    for(int i = 20; i < 40; i++){
        NSString * vegeName = [NSString stringWithFormat:@"Pumpkin %d", i];
        
        if((i % 10) == 0){
            vegeName = [NSString stringWithFormat:@"Free Pumpkin %d", i];
        }
        Vegetable * anonVege = [[Vegetable alloc] initWithWithName:vegeName andColor:@"Orange" andShape:@"Round"];
        [_cart addObject:anonVege];
        
    }
    for(int i = 40; i < 60; i++){
        NSString * vegeName = [NSString stringWithFormat:@"Potato %d", i];
        
        if((i % 10) == 0){
            vegeName = [NSString stringWithFormat:@"Free Potato %d", i];
        }
        Vegetable * anonVege = [[Vegetable alloc] initWithWithName:vegeName andColor:@"Brown" andShape:@"Lumpy"];
        [_cart addObject:anonVege];
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    }
-(int) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"Vegetable";
}

-(int) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_cart count];
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell"];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"TableViewCell"];
    }
    
    Vegetable * tempVege = [_cart objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [tempVege name];
    cell.detailTextLabel.text = [tempVege color];
    return cell;
}

@end
