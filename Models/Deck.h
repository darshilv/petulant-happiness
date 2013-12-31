//
//  Deck.h
//  MachoCards
//
//  Created by Darshil Vora on 12/31/13.
//  Copyright (c) 2013 HipMarks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
@interface Deck : NSObject

-(void) addCard:(Card *)card atTop:(BOOL)atTop;
-(void) addCard:(Card *)card;
-(Card *)drawRandomCard;

@end
