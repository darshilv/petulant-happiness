//
//  PlayingCard.h
//  MachoCards
//
//  Created by Darshil Vora on 12/31/13.
//  Copyright (c) 2013 HipMarks. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card
@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;
@end
