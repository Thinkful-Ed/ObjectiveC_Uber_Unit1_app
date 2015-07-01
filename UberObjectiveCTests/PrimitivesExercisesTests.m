//
//  FunWithPrimitivesTest.m
//  UberObjectiveC
//
//  Created by Eric Gu on 6/20/15.
//  Copyright (c) 2015 Thinkful. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "PrimitivesExercises.h"

@interface PrimitivesExercisesTest : XCTestCase

@property (nonatomic, strong) PrimitivesExercises *primitives;

@end

@implementation PrimitivesExercisesTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.

    self.primitives = [[PrimitivesExercises alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testEnglishAlphabetBackwards {
    // Click the Diamond Next To Left Of -(void)testThatYouCanReciteEnglishAlphabetBackwards to Test
    
    char secondToLastLetterOfEnglishAlphabet = [self.primitives secondTolastLetterOfTheEnglishAlphabet];
    XCTAssertTrue(secondToLastLetterOfEnglishAlphabet == 'y', @"The letter returned is different from the actual second to last letter of the English alphabet.");
}

- (void)testGallonsToOuncesConversion {
    // Click the Diamond Next To Left Of -(void)testThatYouCanConvertGallonsToOunces to Test
    
    int numberOfOuncesInAGallon = [self.primitives numberOfOuncesInAGallon];
    XCTAssertTrue(numberOfOuncesInAGallon == 128, @"The number returned is different from the actual number of Ounces in a Gallon.");
}

- (void)testPIToSevenDigits {
    // Click the Diamond Next To Left Of -(void)testThatYouCanConvertGallonsToOunces to Test
    
    double π = [self.primitives πToSevenDecimals];
    XCTAssertTrue(π == 3.1415926, @"The number returned is different from Pi to the precision of Seven Decimals.");
}

- (void)testThatYouWillLearnObjectiveC {
    // Click the Diamond Next To Left Of -(void)testThatYouWillLearnObjectiveC to Test
  
    BOOL willYouLearnObjectiveC = [self.primitives willYouLearniOSwithObjectiveC];
    XCTAssertTrue(willYouLearnObjectiveC == YES, @"You will learn Objective C but the method 'willYouLearnObjectiveC' indicated otherwise.");
}





@end
