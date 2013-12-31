//
//  Deck.m
//  MachoCards
//
//  Created by Darshil Vora on 12/31/13.
//  Copyright (c) 2013 HipMarks. All rights reserved.
//

#import "Deck.h"

@interface Deck()

//this property is declared here to make it private to this implementation
@property (strong,nonatomic) NSMutableArray *cards;

@end

@implementation Deck
/*
 Purpose: Modify the getter method for the private property declared above to always return an array of cards with allocated memory
 */
-(NSMutableArray *)cards{
    if(!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

- (void) addCard:(Card *)card atTop:(BOOL)atTop{
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    } else{
        [self.cards addObject:card];
    }
}

- (void) addCard:(Card *)card{
    [self addCard:card atTop:NO];
}


- (Card *)drawRandomCard{
    Card *randomCard = Nil;
    /*
     if the array is empty we cannot remove a card
     */
    if ([self.cards count]) {
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    return randomCard;
}

@end
