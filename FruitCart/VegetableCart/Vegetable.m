//
//  Vegetable.m
//  VegetableCart
//
//  Created by Daniel O'Malley on 2/4/13.
//  Copyright (c) 2013 Daniel O'Malley. All rights reserved.
//

#import "Vegetable.h"

@implementation Vegetable

-initWithWithName:(NSString *) inName andColor:(NSString *) inColor andShape:(NSString *) inShape
{
    _name = inName;
    _shape = inShape;
    _color = inColor;
    return self;
}

-(NSString *) description
{
    return _name;
}

@end