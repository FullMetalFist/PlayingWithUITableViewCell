//
//  ViewController.m
//  PlayingWithUITableViewCell
//
//  Created by Michael Vilabrera on 6/22/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import "ViewController.h"
#import "PWCountry.h"

#define COUNTRY_TAG 1
#define CODE_TAG 2
#define CONTINENT_TAG 3
#define POPULATION_TAG 4
#define CURRENCY_TAG 5

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic) UITableView *tableView;
@property (nonatomic) NSMutableArray *countryList;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self loadCountryData];
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self.view addSubview:self.tableView];
}



- (void)loadCountryData {
    NSMutableArray *array = [NSMutableArray array];
    self.countryList = array;
    PWCountry *country = [[PWCountry alloc] initWithCode:@"USA" name:@"United States" continent:@"North America" population:[NSNumber numberWithInt:989898] currency:@"USD"];
    [self.countryList addObject:country];
    country = [[PWCountry alloc] initWithCode:@"CAN" name:@"Canada" continent:@"North America" population:[NSNumber numberWithInt:979797] currency:@"CAD"];
    [self.countryList addObject:country];
    country = [[PWCountry alloc] initWithCode:@"MXN" name:@"Mexico" continent:@"North America" population:[NSNumber numberWithInt:969696] currency:@"MXN"];
    [self.countryList addObject:country];
    country = [[PWCountry alloc] initWithCode:@"CHN" name:@"China" continent:@"Asia" population:[NSNumber numberWithInt:959595] currency:@"RMB"];
    [self.countryList addObject:country];
    country = [[PWCountry alloc] initWithCode:@"NHS" name:@"The Netherlands" continent:@"Europe" population:[NSNumber numberWithInt:949494] currency:@"EUR"];
    [self.countryList addObject:country];
}

@end
