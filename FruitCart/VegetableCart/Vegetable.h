//
//  Vegetable.h
//  VegetableCart
//
//  Created by Daniel O'Malley on 2/4/13.
//  Copyright (c) 2013 Daniel O'Malley. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vegetable : NSObject

@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * shape;
@property (nonatomic, strong) NSString * color;

-initWithWithName:(NSString *) inName andColor:(NSString *) inColor andShape:(NSString *) inShape;

-(NSString *) description;


@end