//
//  NewsProfileViewController.h
//  NewsApp
//
//  Created by Ruslan Safargalin on 26.05.2021.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NewsProfileViewController : UIViewController

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *contentLabel;
@property (nonatomic, strong) UIButton *toSiteButton;

@property (nonatomic) NSString *urlString;

- (instancetype)initWithNews: (NSDictionary*)news;

@end

NS_ASSUME_NONNULL_END
