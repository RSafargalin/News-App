//
//  NewsProfileViewController.m
//  NewsApp
//
//  Created by Ruslan Safargalin on 26.05.2021.
//

#import "NewsProfileViewController.h"

@interface NewsProfileViewController ()

@end

@implementation NewsProfileViewController

- (instancetype)initWithNews: (NSDictionary*)news {
    self = [super init];
    if (self) {
        [self setup];
        _titleLabel.text = [news valueForKey: @"title"];
        _contentLabel.text = [news valueForKey: @"content"];
        _urlString = [news valueForKey: @"url"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void) toSiteButtonDidTap {
    NSURL *url = [NSURL URLWithString: _urlString];
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        [[UIApplication sharedApplication] openURL: url options: @{} completionHandler: nil];
    }
}

- (void) setup {
    self.view.backgroundColor = UIColor.whiteColor;
    
    _toSiteButton = [UIButton new];
    _toSiteButton.backgroundColor = UIColor.systemGreenColor;
    [_toSiteButton addTarget: self action: @selector(toSiteButtonDidTap) forControlEvents: UIControlEventTouchUpInside];
    [_toSiteButton setTitle: @"Go site" forState: UIControlStateNormal];
    _toSiteButton.frame = CGRectMake(0, 0, 120, 30);
    [[self view] addSubview: _toSiteButton];

    // Title Label
    
    _titleLabel = [UILabel new];
    _titleLabel.textColor = UIColor.blackColor;
    _titleLabel.font = [UIFont systemFontOfSize: 16 weight: UIFontWeightBold];
    _titleLabel.frame = CGRectMake(0, 0, [self view].bounds.size.width - 40, 45);
    
    [[self view] addSubview: _titleLabel];
    _titleLabel.numberOfLines = 3;
    _titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    
    [_titleLabel.topAnchor constraintEqualToAnchor: self.view.safeAreaLayoutGuide.topAnchor constant:20.0].active = YES;
//    [_titleLabel.topAnchor constraintEqualToAnchor: self.view.topAnchor constant:20.0].active = YES;
//    [title.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-20.0].active = YES;
    [_titleLabel.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:20.0].active = YES;
    [_titleLabel.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-20.0].active = YES;
    [_titleLabel.heightAnchor constraintEqualToConstant: 60].active = YES;
    
    // Content Label
    
    _contentLabel = [UILabel new];
    _contentLabel.textColor = UIColor.blackColor;
    _contentLabel.font = [UIFont systemFontOfSize: 14];
    _contentLabel.frame = CGRectMake(0, 0, [self view].bounds.size.width - 40, 45);
    
    [[self view] addSubview: _contentLabel];
    _contentLabel.numberOfLines = 6;
    _contentLabel.translatesAutoresizingMaskIntoConstraints = NO;
    
//    _contentLabel
    [_contentLabel.topAnchor constraintEqualToAnchor: _toSiteButton.bottomAnchor constant:20.0].active = YES;
//    [_titleLabel.topAnchor constraintEqualToAnchor: self.view.topAnchor constant:20.0].active = YES;
//    [_contentLabel.bottomAnchor constraintEqualToAnchor: self.view.safeAreaLayoutGuide.bottomAnchor constant:-20.0].active = YES;
    [_contentLabel.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:20.0].active = YES;
    [_contentLabel.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-20.0].active = YES;
    [_contentLabel.heightAnchor constraintEqualToConstant: 100].active = YES;
    
    // Button
    
    _toSiteButton.translatesAutoresizingMaskIntoConstraints = NO;
    
    [_toSiteButton.topAnchor constraintEqualToAnchor: _titleLabel.bottomAnchor constant: 20.0].active = YES;
//    [_toSiteButton.bo constraintEqualToAnchor: self.view.topAnchor constant:20.0].active = YES;
//    [title.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-20.0].active = YES;
    [_toSiteButton.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [_toSiteButton.heightAnchor constraintEqualToConstant: 30].active = YES;
    [_toSiteButton.widthAnchor constraintEqualToConstant: 120].active = YES;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
