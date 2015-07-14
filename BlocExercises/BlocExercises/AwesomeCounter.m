//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    NSMutableString *actual = [[NSMutableString alloc] initWithString:@""];
    
    if (number<otherNumber) {
        while (number<otherNumber+1) {
            [actual appendString:[NSString stringWithFormat:@"%d",(int)number]];
            number++;
        }
        return actual;
    }else if(number>otherNumber){
        while (otherNumber<number+1) {
            [actual appendString:[NSString stringWithFormat:@"%d",(int)otherNumber]];
            otherNumber++;
        }
        return actual;
    }else{
        [actual appendString:[NSString stringWithFormat:@"%d",(int)number]];
        return actual;
    }
    
}

@end
