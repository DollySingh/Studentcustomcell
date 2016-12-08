//
//  StudentTableViewController.m
//  student
//
//  Created by Student-004 on 25/11/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "StudentTableViewController.h"
#import "Student.h"
#import "CustomTableViewCell.h"
//#import "XIBTableViewCell.h"

@interface StudentTableViewController ()

@end

@implementation StudentTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _studentarray=[[NSMutableArray alloc]init];
    
    Student *s1=[[Student alloc]init];
    s1.studname=@"Doll";
    s1.studrollno=@"1";
    s1.studaddress=@"Pune";
    s1.studdob=@"1 jan 1990";
    s1.studimg=@"1";
    
    
    Student *s2=[[Student alloc]init];
    s2.studname=@"Dolly";
    s2.studrollno=@"2";
    s2.studaddress=@"Pune";
    s2.studdob=@"2 jan 1990";
    s2.studimg=@"2";
    
    Student *s3=[[Student alloc]init];
    s3.studname=@"Shubh";
    s3.studrollno=@"3";
    s3.studaddress=@"Pune";
    s3.studdob=@"3 jan 1990";
    s3.studimg=@"3";
    
    
    [_studentarray addObject:s1];
    [_studentarray addObject:s2];
    [_studentarray addObject:s3];
    
    [self.tableView registerClass:[CustomTableViewCell class] forCellReuseIdentifier:@"cell"];
    
  //      [self.tableView registerNib:[UINib nibWithNibName:@"XIBTableViewCell" bundle:nil] forCellReuseIdentifier:@"cell"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    return _studentarray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
//    XIBTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    Student *temp= [_studentarray objectAtIndex:indexPath.row];
    
    cell.namelbl.text = temp.studname;
    cell.rollnolbl.text= temp.studrollno;
    cell.addresslbl.text= temp.studaddress;
    cell.doblbl.text=temp.studdob;
    cell.imgview.image=[UIImage imageNamed:temp.studimg];
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 170;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
