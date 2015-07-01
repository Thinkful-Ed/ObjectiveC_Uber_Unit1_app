//
//  ArraysExercise.h
//  UberObjectiveC
//
//  Created by Eric Gu on 6/28/15.
//  Copyright (c) 2015 Thinkful. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ArraysExercises : NSObject

- (NSArray *) arrayOfNamesfromString:(NSString *)stringOfNames;

- (NSArray *) arrayOfNumbersBetweenStartingNumber:(NSInteger)startingNumber andEndingNumberInclusive: (NSInteger)endingNumber;

- (NSMutableArray *) arrayOfSortedNamesInDescendingOrder:(NSMutableArray *)names;

- (NSMutableArray *) arrayOfFilteredNumbers:(NSMutableArray *)unfilteredNumbers;

@end
