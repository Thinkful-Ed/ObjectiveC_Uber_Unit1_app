//
//  StringsTests.m
//  UberObjectiveC
//
//  Created by Eric Gu on 6/28/15.
//  Copyright (c) 2015 Thinkful. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "StringsExercises.h"

@interface StringsExercisesTests : XCTestCase

@property (nonatomic, strong) StringsExercises *strings;

@end

@implementation StringsExercisesTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.strings = [[StringsExercises alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testCapitalOfDenmark {
    // Click the Diamond Next To Left Of - (void)testThatYouCanRecallCapitalOfDenmark to Test
    NSString *capitalOfDenmark = @"Copenhagen";
    NSString *studentGeneratedCapital = [self.strings capitalCityOfDenmark];
    XCTAssertEqualObjects(studentGeneratedCapital, capitalOfDenmark, @"The String returned is different from the actual capital city of Denmark");
}

- (void)testAppendingString {
    NSMutableString *countryOfChina = [@"China" mutableCopy];
    NSString *capitalOfChina = @"Beijing";
    
    NSMutableString *capitalWithCountryChina = [self.strings capitalNameAppendedToCountryName:countryOfChina withCapital:capitalOfChina];
    
    XCTAssertEqualObjects(capitalWithCountryChina, @"ChinaBeijing", @"Incorrect Country/City Combination returned.");
    
    NSMutableString *countryOfGermany = [@"Germany" mutableCopy];
    NSString *capitalOfGermany = @"Berlin";
    
    NSMutableString *capitalWithCountryGermany = [self.strings capitalNameAppendedToCountryName:countryOfGermany withCapital:capitalOfGermany];
    
    XCTAssertEqualObjects(capitalWithCountryGermany, @"GermanyBerlin", @"Incorrect Country/City Combination returned.");
}

- (void)testSearchAndReplaceStrings {
    NSString *manyPizzas = @"Pizzas";
    NSString *onePizza = [self.strings singularWords:manyPizzas];
    XCTAssertEqualObjects(onePizza, @"Pizza", @"Pizza should be returned.");
    
    NSString *manyElephants = @"Elephants";
    NSString *oneElephant = [self.strings singularWords:manyElephants];
    XCTAssertEqualObjects(oneElephant, @"Elephant", @"Elephant should be returned.");
}

@end
