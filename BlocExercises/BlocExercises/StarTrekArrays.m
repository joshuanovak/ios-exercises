//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    
    NSArray *characterArray = [characterString componentsSeparatedByString:@";"];
    return characterArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSString *characterString = [characterArray componentsJoinedByString:@";"];
    return characterString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    NSMutableArray *tempArray = [(NSArray*)characterArray mutableCopy];
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [tempArray sortUsingDescriptors:@[sortDescriptor]];
    return tempArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    
    NSMutableArray *tempArray = [(NSArray*)characterArray mutableCopy];
    
    NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'Worf'"];
    [tempArray filterUsingPredicate:containsWorf];
    for (NSString *character in characterArray){
        if ([character containsString:@"Worf"]) {
            return YES;
        }
    }
    return NO;
}

@end
