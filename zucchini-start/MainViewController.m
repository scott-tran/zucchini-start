//
//  MainViewController.m
//  zucchini-start
//
//  Created by Scott Tran on 1/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"

@implementation MainViewController

@synthesize nameField;
@synthesize greetingLabel;

- (void)sayHello {
    greetingLabel.text = [NSString stringWithFormat:@"Hello %@", nameField.text];

    nameField.text = @"";
    [nameField resignFirstResponder];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];

    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)loadView {
    [super loadView];
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    self.greetingLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 200, 30)];
    greetingLabel.backgroundColor = [UIColor clearColor];
    greetingLabel.accessibilityIdentifier = @"greetingLabel";
    [self.view addSubview:greetingLabel];

    self.nameField = [[UITextField alloc] initWithFrame:CGRectMake(20, 60, 200, 30)];
    nameField.backgroundColor = [UIColor whiteColor];
    nameField.accessibilityIdentifier = @"nameField";
    [self.view addSubview:nameField];
    
    UIButton *helloButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    helloButton.frame = CGRectMake(20, 100, 100, 30);
    [helloButton setTitle:@"Say Hello" forState:UIControlStateNormal];
    [helloButton addTarget:self action:@selector(sayHello) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:helloButton];
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
