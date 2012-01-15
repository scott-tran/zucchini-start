//
//  MainViewController.h
//  zucchini-start
//
//  Created by Scott Tran on 1/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController {

    UITextField *nameField;
    UILabel *greetingLabel;

}
@property(nonatomic, strong) UITextField *nameField;
@property(nonatomic, strong) UILabel *greetingLabel;


@end
