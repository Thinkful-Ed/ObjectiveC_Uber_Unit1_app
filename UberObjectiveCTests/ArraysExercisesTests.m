//
//  ArraysExercisesTests.m
//  UberObjectiveC
//
//  Created by Eric Gu on 6/29/15.
//  Copyright (c) 2015 Thinkful. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "ArraysExercises.h"

@interface ArraysExercisesTests : XCTestCase

@property (nonatomic, strong) NSString *chicken;
@property (nonatomic, strong) NSString *horse;
@property (nonatomic, strong) NSString *cow;
@property (nonatomic, strong) NSString *pig;
@property (nonatomic, strong) ArraysExercises *arrays;

@end

@implementation ArraysExercisesTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    self.chicken = @"Chickey";
    self.horse = @"Horsey";
    self.cow = @"Cowy";
    self.pig = @"Piggy";
    self.arrays = [[ArraysExercises alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void) testStringToArray {
    NSString *aStringOfFarmAnimals = [NSString stringWithFormat:@"%@;%@;%@;%@", self.chicken, self.horse, self.cow, self.pig];
    NSArray *correctArray = @[self.chicken, self.horse, self.cow, self.pig];
    NSArray *returnedArray = [self.arrays arrayOfNamesfromString:aStringOfFarmAnimals];
    XCTAssertEqualObjects(correctArray, returnedArray, @"The items in the array were different than the line-up of farm animals.");
    
    aStringOfFarmAnimals = [NSString stringWithFormat:@"%@;%@;%@;%@", self.pig, self.cow, self.horse, self.chicken];

    correctArray = @[self.pig, self.cow, self.horse, self.chicken];
    returnedArray = [self.arrays arrayOfNamesfromString:aStringOfFarmAnimals];
    XCTAssertEqualObjects(correctArray, returnedArray, @"The items in the array were different than the line-up of farm animals.");
}

- (void) testRangeToArray {
    NSInteger four = 4;
    NSInteger eight = 8;
    NSArray *correctArray = @[@(4), @(5), @(6), @(7), @(8)];
    NSArray *returnedArray = [self.arrays arrayOfNumbersBetweenStartingNumber:4 andEndingNumberInclusive:8];
    XCTAssertEqualObjects(correctArray, returnedArray, @"The items in the array were different than the numbers expected.");
}

- (void) testArrayReverseSort {
    NSMutableArray *inputArray = [@[self.chicken, self.horse, self.cow, self.pig] mutableCopy];
    NSMutableArray *expectedArray = [@[self.pig, self.horse, self.cow, self.chicken] mutableCopy];
    NSMutableArray *actualArray = [self.arrays arrayOfSortedNamesInDescendingOrder:inputArray];
    XCTAssertEqualObjects(expectedArray, actualArray, @"The items in the array were sorted in unexpected fashion.");
    
    inputArray = [@[self.chicken, self.pig] mutableCopy];
    expectedArray = [@[self.pig, self.chicken] mutableCopy];
    actualArray = [self.arrays arrayOfSortedNamesInDescendingOrder:inputArray];
    XCTAssertEqualObjects(expectedArray, actualArray, "The items in the array were sorted in unexpected fashion.");
}

- (void) testArrayFilter {
    NSMutableArray *inputArray = [@[@(4), @(5), @(6), @(7), @(8)] mutableCopy];
    NSMutableArray *expectedArray = [@[@(6), @(7), @(8)] mutableCopy];
    NSMutableArray *actualArray = [self.arrays arrayOfFilteredNumbers:inputArray];
    XCTAssertEqualObjects(expectedArray, actualArray, @"The items in the array were filtered in unexpected fashion.");
}

@end
