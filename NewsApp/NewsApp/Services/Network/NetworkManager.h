//
//  NetworkManager.h
//  NewsApp
//
//  Created by Ruslan Safargalin on 26.05.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NetworkManager : NSObject

- (void)load:(NSString *)urlString withCompletion:(void (^)(id _Nullable result))completion;

@end

NS_ASSUME_NONNULL_END
