//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    int multiplied = [number intValue];
    multiplied = multiplied*2;
    number = [NSNumber numberWithInt:multiplied];
    return number;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSMutableArray *listOfNumbers = [[NSMutableArray alloc] init];
    
    NSInteger lowerNumber = number;
    NSInteger higherNumber = otherNumber;
    
    if (higherNumber<lowerNumber) {
        lowerNumber = otherNumber;
        higherNumber = number;
    }
    
    while (lowerNumber <= higherNumber) {
        [listOfNumbers addObject: [NSNumber numberWithLong:lowerNumber]]; // [[NSNumber alloc] initWithInt:number];
        lowerNumber++;
    }
    
    return listOfNumbers;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    // start lowest at the first value
    NSInteger lowest = ((NSNumber*)arrayOfNumbers[0]).integerValue;
    
    // for each value
    for (NSInteger i = 0; i < arrayOfNumbers.count; i++) {
        if (((NSNumber*)arrayOfNumbers[i]).integerValue < lowest){
            lowest = ((NSNumber*)arrayOfNumbers[i]).integerValue;
        }
    }
    
    // return lowest
    return lowest;
}

@end
