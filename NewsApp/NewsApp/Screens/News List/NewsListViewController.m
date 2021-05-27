//
//  NewsListViewController.m
//  NewsApp
//
//  Created by Ruslan Safargalin on 26.05.2021.
//

#import "NewsListViewController.h"
#import "NewsManager.h"
#import "NewsProfileViewController.h"

@interface NewsListViewController ()

@end

@implementation NewsListViewController

NewsManager *manager;
NSNumber *newsCount = 0;
NSMutableArray *newsList;

- (void)viewDidLoad {
    [super viewDidLoad];
    manager = [NewsManager new];
    [manager fetchTopHeadlinesForRussia:^(id  _Nullable result) {
        NSDictionary *json = result;
        newsCount = [json valueForKey: @"totalResults"];
        newsList = [json mutableArrayValueForKey: @"articles"];
        [[self tableView] reloadData];
    }];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return newsList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [UITableViewCell new];
    cell.textLabel.text = [[newsList objectAtIndex: indexPath.item] valueForKey: @"title"];
    cell.textLabel.numberOfLines = 0;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSDictionary *news = [newsList objectAtIndex: indexPath.item];
    NewsProfileViewController *newsProfileViewController = [[NewsProfileViewController alloc] initWithNews: news];
    newsProfileViewController.title = [[news valueForKey: @"source"] valueForKey: @"name"];
    [[self navigationController] pushViewController: newsProfileViewController animated: YES];
}


@end
