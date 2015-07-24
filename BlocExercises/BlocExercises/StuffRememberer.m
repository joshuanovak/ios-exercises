//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    self.rememberedArray = arrayToRemember;
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    //create new array that is copy of method array
    NSMutableArray *currentArray = [arrayToCopy mutableCopy];
    //assign temporary array to property
    self.copyedArray = currentArray;
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    CGFloat currentFloat = floatToRemember;
    self.rememberedFloat = currentFloat;

}

- (NSMutableArray *) arrayYouShouldRemember {
    //returns property
    return [self rememberedArray];
}

- (NSMutableArray *) arrayYouShouldCopy {
    
    return [self copyedArray];
}

- (CGFloat) floatYouShouldRemember {
    return [self rememberedFloat];
}

@end