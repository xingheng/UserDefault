//
//  MainViewController.m
//  UserDefaultUtility
//
//  Created by Wei Han on 5/14/15.
//  Copyright (c) 2015 Wei Han. All rights reserved.
//

#import "MainViewController.h"
#import "UserDefault.h"
#import "UserDefaultKey.h"

#define NSLooog(__format__, __keyvalue__, __func__)       NSLog(@"%@ = "__format__, __keyvalue__, __func__(__keyvalue__))


@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = NSStringFromClass([self class]);
    
    [self testEntry];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)testEntry
{
    NSString *boolKey = kUserDefaultKey(BOOL);
    SetUserDefaultBool(boolKey, YES);
    NSLooog("%d", boolKey, UserDefaultBool);
    
    NSString *intKey = kUserDefaultKey(int);
    SetUserDefaultInteger(intKey, 100);
    NSLooog("%ld", intKey, UserDefaultInteger);
    
    NSString *floatKey = kUserDefaultKey(float);
    SetUserDefaultFloat(floatKey, 99.99f);
    NSLooog("%f", floatKey, UserDefaultFloat);
    
    NSString *doubleKey = kUserDefaultKey(double);
    SetUserDefaultDouble(doubleKey, 999.99f);
    NSLooog("%f", doubleKey, UserDefaultDouble);
    
    NSString *urlKey = kUserDefaultKey(url);
    SetUserDefaultURL(urlKey, [NSURL URLWithString:@"http://"]);
    NSLooog("%@", urlKey, UserDefaultURL);
    
    
    NSString *stringKey = kUserDefaultKey(string);
    SetUserDefaultObject(stringKey, @"I'm a string");
    NSLooog("%@", stringKey, UserDefaultString);
    
    NSString *stringArrayKey = kUserDefaultKey(stringArray);
    SetUserDefaultObject(stringArrayKey, @[@"item1", @"item2", @"item3"]);
    NSLooog("%@", stringArrayKey, UserDefaultStringArray);
    
    NSString *arrayKey = kUserDefaultKey(array);
    SetUserDefaultObject(arrayKey, @[@"item1", @"item2", @"item3", @100, @10.99f, @{@"key":@"value"}]);
    NSLooog("%@", arrayKey, UserDefaultArray);
    
    NSString *dataKey = kUserDefaultKey(data);
    SetUserDefaultObject(dataKey, [NSData dataWithBytes:"I'm a data from string" length:22]);
    NSLooog("%@", dataKey, UserDefaultData);
    
    NSString *dictKey = kUserDefaultKey(dictionary);
    SetUserDefaultObject(dictKey, @{@"key1":@"value1", @"key2":@10.99});
    NSLooog("%@", dictKey, UserDefaultDictionary);
    
    NSString *objectKey = kUserDefaultKey(object);
    SetUserDefaultObject(objectKey, [NSNumber numberWithDouble:99.99f]);
    NSLooog("%@", objectKey, UserDefaultObject);
    
    
    
    UserDefaultRemoveKey(objectKey);
    NSLog(@"Removing key %@", objectKey);
    NSLooog("%@", objectKey, UserDefaultObject);
    
    NSLog(@"Before removing part of keys: %@", UserDefaultAllValue());
    UserDefaultClearAllExcept(@[boolKey, intKey, floatKey, doubleKey, urlKey]);
    NSLog(@"After removing part of keys: %@", UserDefaultAllValue());
    
    UserDefaultClearAll();
    NSLog(@"After removing all the keys: %@", UserDefaultAllValue());
}

@end
