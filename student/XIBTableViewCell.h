//
//  XIBTableViewCell.h
//  student
//
//  Created by Student-004 on 25/11/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StudentTableViewController.h"
#import "Student.h"

@interface XIBTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *namelbl;

@property (weak, nonatomic) IBOutlet UILabel *rollnolbl;
@property (weak, nonatomic) IBOutlet UILabel *addresslbl;
@property (weak, nonatomic) IBOutlet UILabel *doblbl;
@property (weak, nonatomic) IBOutlet UIImageView *imgview;

@end
