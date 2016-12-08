//
//  CustomTableViewCell.m
//  student
//
//  Created by Student-004 on 25/11/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "CustomTableViewCell.h"

@implementation CustomTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
}

    -(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
    {
        self=  [super initWithStyle:style reuseIdentifier:reuseIdentifier];
        
        if(self)
        {
            _namelbl=[[UILabel alloc]initWithFrame:CGRectMake(20, 20, 100, 30)];
            _namelbl.textColor=[UIColor redColor];
            _rollnolbl=[[UILabel alloc]initWithFrame:CGRectMake(20, 50, 50, 30)];
            _rollnolbl.textColor=[UIColor greenColor];
            _addresslbl=[[UILabel alloc]initWithFrame:CGRectMake(20, 80, 80, 30)];
            _doblbl=[[UILabel alloc]initWithFrame:CGRectMake(20, 110, 80, 30)];
            
            _imgview=[[UIImageView alloc]initWithFrame:CGRectMake(200, 20, 100, 110)];
            
            
            [self addSubview:_namelbl];
            [self addSubview:_rollnolbl];
            [self addSubview:_addresslbl];
            [self addSubview:_doblbl];
            [self addSubview:_imgview];
            
        }
        return self;
    }
    
    
    - (void)setSelected:(BOOL)selected animated:(BOOL)animated {
        [super setSelected:selected animated:animated];
        

}


@end
