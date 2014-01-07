//
//  HMSViewController.m
//  MachoCards
//
//  Created by Darshil Vora on 12/30/13.
//  Copyright (c) 2013 HipMarks. All rights reserved.
//

#import "HMSViewController.h"

@interface HMSViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipsCount;
@end

@implementation HMSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)touchCardButton:(UIButton *)sender {
    if ([sender.currentTitle length]) {
        UIImage *cardImage = [UIImage imageNamed:@"card_back"];
        [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else{
        UIImage *cardImage = [UIImage imageNamed:@"cardfront"];
        [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
        [sender setTitle:@"Darshil" forState:UIControlStateNormal];
    }
    self.flipsCount++;
    
}

-(void) setFlipsCount:(int)flipsCount{
    _flipsCount = flipsCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips Count : %d", self.flipsCount];
    NSLog(@"Flips Count : %d", self.flipsCount);
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
