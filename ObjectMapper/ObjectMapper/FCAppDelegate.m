//
//  FCAppDelegate.m
//  ObjectMapper
//
//  Created by Fabian Canas on 7/4/13.
//  Copyright (c) 2013 Fabian Canas. All rights reserved.
//

#import "FCAppDelegate.h"
#import "OMTestModel.h"

#import <ObjectMapping/ObjectMapping.h>

@implementation FCAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    OMMakeMappableWithDictionary([OMTestModel class], @{@"favorite_word" : @"favoriteWord", @"favorite_number" : @"favoriteNumber", @"favorite_model" : @"favoriteModel"});
    
    OMTestModel *testModel = [[OMTestModel alloc] init];
    
    NSDictionary *innerModel = @{@"name": @"Music", @"favorite_word": @"glitter", @"favorite_number" : @7};
    NSDictionary *outerModel = @{@"name": @"Fabian", @"favorite_word": @"absurd", @"favorite_number" : @2, @"favorite_model" : innerModel};
    
    [testModel setValuesForKeysWithDictionary:outerModel];
    NSLog(@"%@", testModel);
}

@end