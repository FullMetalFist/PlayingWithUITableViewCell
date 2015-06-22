//
//  PWCountry.m
//  PlayingWithUITableViewCell
//
//  Created by Michael Vilabrera on 6/22/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import "PWCountry.h"

@implementation PWCountry

- (instancetype)initWithCode:(NSString *)code
                        name:(NSString *)name
                   continent:(NSString *)continent
                  population:(NSNumber *)population
                    currency:(NSString *)currency {
    self = [super init];
    if (self) {
        self.code = code;
        self.name = name;
        self.continent = continent;
        self.population = population;
        self.currency = currency;
    }
    return self;
}

@end
