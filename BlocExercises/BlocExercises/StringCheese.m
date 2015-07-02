//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    //NSString *name = cheeseName;
    NSString *statement = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    return (statement);
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
        NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
        NSString *mutated = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
        return mutated;
    } else {
        return cheeseName;
    }
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        NSString *singleCheese = @"1 cheese";
        return singleCheese;
    } else {
        NSString *multiCheese =[NSString stringWithFormat:@"%ld cheeses", (long)cheeseCount];
        return multiCheese;
    }
    
    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */
    
    return nil;
}

@end
