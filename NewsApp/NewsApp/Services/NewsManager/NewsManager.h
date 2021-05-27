//
//  NewsManager.h
//  NewsApp
//
//  Created by Ruslan Safargalin on 26.05.2021.
//

#define API_KEY @"ac13e918338145ddb0897612115b03a2"
#define URL_TOP_HEADLINES_FOR_RUSSIA @"https://newsapi.org/v2/top-headlines?country=us&apiKey="

#import <Foundation/Foundation.h>
#import "NetworkManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface NewsManager : NetworkManager

- (void)fetchTopHeadlinesForRussia: (void (^)(id _Nullable result))completion;

@end

NS_ASSUME_NONNULL_END
