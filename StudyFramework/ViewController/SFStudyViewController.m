//
//  SFStudyViewController.m
//  StudyFramework
//
//  Created by Tintin on 2017/7/14.
//  Copyright © 2017年 NDK. All rights reserved.
//

#import "SFStudyViewController.h"

@interface SFStudyViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
static NSString * cellIdentifier = @"studyCellIdentifier";
#import "SFStudyTableCell.h"
@implementation SFStudyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    UIImage *image = [UIImage imageNamed:@"person" inBundle:bundle compatibleWithTraitCollection:nil];
    UIImageView * imageView =[[UIImageView alloc]initWithImage:image];
    self.tableView.tableHeaderView = imageView;
    [self.tableView registerNib:[UINib nibWithNibName:@"SFStudyTableCell" bundle:bundle] forCellReuseIdentifier:cellIdentifier];
}
#pragma mark - UITableViewDelegate,UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SFStudyTableCell * cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    cell.contentLabel.text = [NSString stringWithFormat:@"第%ld行",(long)indexPath.row];
    return cell;
}


@end
