//
//  EqualityandComparatorsExercisesTests.m
//  UberObjectiveC
//
//  Created by Eric Gu on 6/28/15.
//  Copyright (c) 2015 Thinkful. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "EqualityandComparatorsExercises.h"

@interface EqualityandComparatorsExercisesTests : XCTestCase

@property (nonatomic, strong) EqualityandComparatorsExercises *equality;

@end

@implementation EqualityandComparatorsExercisesTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.equality = [[EqualityandComparatorsExercises alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void) testIntegerEquality {
    NSInteger firstInteger = 9;
    NSInteger secondInteger = 9;
    BOOL integerEquality = [self.equality areTwoIntegersEqual:firstInteger withSecondInteger:secondInteger];
    XCTAssertTrue(integerEquality, @"Nine is equal to Nine but test showed otherwise.");
}

- (void) testIntegerInEquality {
    NSInteger firstInteger = 9;
    NSInteger secondInteger = 19;
    BOOL integerEquality = [self.equality areTwoIntegersEqual:firstInteger withSecondInteger:secondInteger];
    XCTAssertFalse(integerEquality, @"Nine is not equal to Nine-teen but test showed otherwise.");
}

- (void) testStringEquality {
    NSString *firstCelebrityName = @"Tom Cruise";
    NSMutableString *secondCelebrityName = [firstCelebrityName mutableCopy];
    BOOL stringEquality = [self.equality areTwoStringsEqual:firstCelebrityName withSecondString:secondCelebrityName];
    XCTAssertTrue(stringEquality, @"Tom Cruise is semantically equal to Tom Cruise but test showed otherwise");
}

- (void) testStringInequality {
    NSString *firstCelebrityName = @"Tom Cruise";
    NSString *secondCelebrityName = @"Leonardo DiCaprio";
    BOOL stringInEquality = [self.equality areTwoStringsEqual:firstCelebrityName withSecondString:secondCelebrityName];
    XCTAssertFalse(stringInEquality, @"Tom Cruise is not Leonardo DiCaprio but test showed otherwise");
}

- (void) testFirstIntegerIsGreater {
    NSInteger firstInteger = 11;
    NSInteger secondInteger = 9;
    BOOL firstIntegerGreater = [self.equality isFirstIntegerGreaterOrEqualThanSecondInteger:firstInteger withSecondInteger:secondInteger];
    XCTAssertTrue(firstIntegerGreater, @"The first integer is Greater than the second integer but test showed otherwise");
}

- (void) testFirstIntegerEqualToSecond {
    NSInteger firstInteger = 9;
    NSInteger secondInteger = 9;
    BOOL firstIntegerIsEqualToSecondInteger = [self.equality isFirstIntegerGreaterOrEqualThanSecondInteger:firstInteger withSecondInteger:secondInteger];
    XCTAssertTrue(firstIntegerIsEqualToSecondInteger, @"The first integer is equal to the second integer but test showed otherwise");
}

@end
