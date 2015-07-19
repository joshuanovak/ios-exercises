//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    id drink = characterDictionary[@"favorite drink"];
    return drink;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    NSMutableArray *drinks = [[NSMutableArray alloc]init];
    for (NSInteger i=0; i<charactersArray.count; i++) {
        NSString *drink = (charactersArray[i])[@"favorite drink"];
        drinks[i] = drink;
    }
    return drinks;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSMutableDictionary *newCharacterDictionary = [characterDictionary mutableCopy];
    [newCharacterDictionary setObject:@"engage" forKey:@"quote"];
    return newCharacterDictionary;
}

@end
