//
//  PWCountry.h
//  PlayingWithUITableViewCell
//
//  Created by Michael Vilabrera on 6/22/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PWCountry : NSObject

@property (nonatomic) NSString *code;
@property (nonatomic) NSString *name;
@property (nonatomic) NSString *continent;
@property (nonatomic) NSNumber *population;
@property (nonatomic) NSString *currency;

- (instancetype)initWithCode:(NSString *)code
                        name:(NSString *)name
                   continent:(NSString *)continent
                  population:(NSNumber *)population
                    currency:(NSString *)currency;

@end
