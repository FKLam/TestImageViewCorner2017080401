//
//  ViewController.m
//  TestImageViewCorner2017080401
//
//  Created by amglfk on 2017/8/4.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+Corner.h"

@interface ViewController ()<UITableViewDataSource>

@property (nonatomic, strong) UITableView *contentTableView;
@property (nonatomic, strong) UIImage *originImage;
@property (nonatomic, strong) UIImage *cornerImage;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(50, 80, 100, 100)];
//    NSString *urlString = @"https://avatars3.githubusercontent.com/u/10610587?v=4&u=2289aed65397ce9d32aea7719fd5e5af5022e300&s=400";
//    UIImage *image = [UIImage cornerImageWithUrlString:urlString cornerRadius:50];
//    [imageView setImage:image];
//    
//    [self.view addSubview:imageView];
    [self.view addSubview:self.contentTableView];
}

#pragma mark ==================== UITableViewDataSource ====================

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10000;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"CornerImageUITableViewCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if ( nil == cell ) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
//        [self addOriginImage:cell];
        [self addCornerImage:cell];
    }
    return cell;
}

- (void)addCornerImage:(UITableViewCell *)cell {
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 0, 70, 70)];
    imageView.image = self.cornerImage;
    imageView.layer.cornerRadius = 35;
    imageView.layer.masksToBounds = YES;
    [cell addSubview:imageView];
    
    UIImageView *imageView1 = [[UIImageView alloc] initWithFrame:CGRectMake(90, 0, 70, 70)];
    imageView1.image = self.cornerImage;
    imageView1.layer.cornerRadius = 35;
    imageView1.layer.masksToBounds = YES;
    [cell addSubview:imageView1];
    
    UIImageView *imageView2 = [[UIImageView alloc] initWithFrame:CGRectMake(160, 0, 70, 70)];
    imageView2.image = self.cornerImage;
    imageView2.layer.cornerRadius = 35;
    imageView2.layer.masksToBounds = YES;
    [cell addSubview:imageView2];
    
    UIImageView *imageView3 = [[UIImageView alloc] initWithFrame:CGRectMake(230, 0, 70, 70)];
    imageView3.image = self.cornerImage;
    imageView3.layer.cornerRadius = 35;
    imageView3.layer.masksToBounds = YES;
    [cell addSubview:imageView3];
    
    UIImageView *imageView4 = [[UIImageView alloc] initWithFrame:CGRectMake(300, 0, 70, 70)];
    imageView4.image = self.cornerImage;
    imageView4.layer.cornerRadius = 35;
    imageView4.layer.masksToBounds = YES;
    [cell addSubview:imageView4];
}

- (void)addOriginImage:(UITableViewCell *)cell {
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 0, 70, 70)];
    imageView.image = self.originImage;
    imageView.layer.cornerRadius = 35;
    imageView.layer.masksToBounds = YES;
    [cell addSubview:imageView];
    
    UIImageView *imageView1 = [[UIImageView alloc] initWithFrame:CGRectMake(90, 0, 70, 70)];
    imageView1.image = self.originImage;
    imageView1.layer.cornerRadius = 35;
    imageView1.layer.masksToBounds = YES;
    [cell addSubview:imageView1];
    
    UIImageView *imageView2 = [[UIImageView alloc] initWithFrame:CGRectMake(160, 0, 70, 70)];
    imageView2.image = self.originImage;
    imageView2.layer.cornerRadius = 35;
    imageView2.layer.masksToBounds = YES;
    [cell addSubview:imageView2];
    
    UIImageView *imageView3 = [[UIImageView alloc] initWithFrame:CGRectMake(230, 0, 70, 70)];
    imageView3.image = self.originImage;
    imageView3.layer.cornerRadius = 35;
    imageView3.layer.masksToBounds = YES;
    [cell addSubview:imageView3];
    
    UIImageView *imageView4 = [[UIImageView alloc] initWithFrame:CGRectMake(300, 0, 70, 70)];
    imageView4.image = self.originImage;
    imageView4.layer.cornerRadius = 35;
    imageView4.layer.masksToBounds = YES;
    [cell addSubview:imageView4];
}

#pragma mark ==================== getter methods ====================

- (UITableView *)contentTableView {
    if ( nil == _contentTableView ) {
        _contentTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _contentTableView.dataSource = self;
        _contentTableView.rowHeight = 90;
    }
    return _contentTableView;
}

- (UIImage *)originImage {
    if ( nil == _originImage ) {
        NSString *urlString = @"https://avatars3.githubusercontent.com/u/10610587?v=4&u=2289aed65397ce9d32aea7719fd5e5af5022e300&s=400";
        UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:urlString]]];
        _originImage = image;
    }
    return _originImage;
}

- (UIImage *)cornerImage {
    if ( nil == _cornerImage ) {
        NSString *urlString = @"https://avatars3.githubusercontent.com/u/10610587?v=4&u=2289aed65397ce9d32aea7719fd5e5af5022e300&s=400";
            UIImage *image = [UIImage cornerImageWithUrlString:urlString cornerRadius:35];
        _cornerImage = image;
    }
    return _cornerImage;
}

@end
