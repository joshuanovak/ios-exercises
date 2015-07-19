//
//  MarysAppleHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/8/14.
//
//

#import "MarysAppleHandler.h"

@implementation MarysAppleHandler

- (NSString *) itemMaryCanPurchaseForDollars:(NSInteger)dollars {
    NSString *itemToReturn;
    if (dollars >= 0 && dollars <= 4){
        itemToReturn = @"get out of my store";
    }if (dollars == 5) {
        itemToReturn = @"have some gum";
    }if (dollars >= 6 && dollars < 1000 ){
        itemToReturn = @"have an apple";
    }if (dollars >= 1000 && dollars < 1000000000){
        itemToReturn = @"have an Apple computer";
    }if (dollars >= 1000000000 && dollars <= 10000000000){
        itemToReturn = @"have The Big Apple";
    }else{
        itemToReturn = @"dollar amount out of range";
    }
    
    NSLog(@"For $%ld, Mary can: %@", (long)dollars, itemToReturn);
    return itemToReturn;
}

- (NSUInteger) dollarCostForAppleFlavoredVodka {
    NSUInteger cost = 24;
    NSUInteger final = (self.getsDiscount) ? cost*=.75 : cost;
        
    return final;
}

@end
