//
//  DictionariesExercisesTests.m
//  UberObjectiveC
//
//  Created by Eric Gu on 6/30/15.
//  Copyright (c) 2015 Thinkful. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "DictionariesExercises.h"

@interface DictionariesExercisesTests : XCTestCase

@property (nonatomic, strong) DictionariesExercises *dictionaries;
@property (nonatomic, strong) NSDictionary *travelDictionary;
@end

@implementation DictionariesExercisesTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.dictionaries = [[DictionariesExercises alloc] init];
    self.travelDictionary = @{@"citizenship": @"United States",
                              @"numberOfDays": @[@15]};
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void) testDictionaryToNumber {
    NSNumber *returnedNumber = [self.dictionaries numberOfDaysTraveledFromTravelDictionary:self.travelDictionary];
    XCTAssertEqualObjects(returnedNumber, @[@15], @"The number of days returned is different than expected.");
}

@end
