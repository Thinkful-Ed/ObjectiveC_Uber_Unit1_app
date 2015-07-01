//
//  Strings.h
//  UberObjectiveC
//
//  Created by Eric Gu on 6/28/15.
//  Copyright (c) 2015 Thinkful. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StringsExercises : NSObject

- (NSString *) capitalCityOfDenmark;

- (NSMutableString *) capitalNameAppendedToCountryName:(NSMutableString *)country withCapital:(NSString *)capital;

- (NSString *) singularWords:(NSString *)plural;

@end
