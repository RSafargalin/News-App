//
//  NewsManager.m
//  NewsApp
//
//  Created by Ruslan Safargalin on 26.05.2021.
//

#import "NewsManager.h"

@implementation NewsManager

- (void)fetchTopHeadlinesForRussia: (void (^)(id _Nullable result))completion {
    NSString *url = [NSString stringWithFormat:@"%@%@", URL_TOP_HEADLINES_FOR_RUSSIA, API_KEY];
    [self load: url withCompletion:^(id  _Nullable result) {
        dispatch_async(dispatch_get_main_queue(), ^{
            completion(result);
        });
        
//        NSLog(@"%@", [[[result mutableArrayValueForKey: @"articles"] objectAtIndex: 0] valueForKey: @"content"]);
    }];
}

@end
