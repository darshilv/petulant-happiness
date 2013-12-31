//
//  PlayingCard.m
//  MachoCards
//
//  Created by Darshil Vora on 12/31/13.
//  Copyright (c) 2013 HipMarks. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

-(NSString *)contents{
    NSArray *rankStrings = @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit;
-(void)setSuit:(NSString *)suit{
    if ([@[@"♠️",@"♥️",@"♣️",@"♦️"] containsObject:suit]) {
        _suit = suit;
    }
}

-(NSString *)suit{
    return _suit ? _suit : @"?";
}
@end
