//
//  PlayingCardDeck.m
//  MachoCards
//
//  Created by Darshil Vora on 1/6/14.
//  Copyright (c) 2014 HipMarks. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

-(instancetype) init{
    self = [super init]; //call the super class init
    // if the object is initialized correctly proceed
    if(self){
        //run a for loop to create the playing cards in the deck
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger rank=1; rank<= [PlayingCard maxRank]; rank++) {
                //allocate memory for the card and call its init
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank; //assign the rank to the card
                card.suit = suit; //assign the suit to the card
                [self addCard:card]; //add the card to the mutable array defined in the parent class.
            }
        }
    }
    return self;
}

@end
