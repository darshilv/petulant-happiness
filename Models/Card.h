//
//  Card.h
//  MachoCards
//
//  Created by Darshil Vora on 12/31/13.
//  Copyright (c) 2013 HipMarks. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong,nonatomic) NSString *contents;
@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;

-(int) match:(NSArray *)otherCards;

@end
