//
//  API.h
//  sideProj
//
//  Created by michelle vargas on 5/12/16.
//  Copyright © 2016 michelle vargas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface API : NSObject

+(void)searchRequestForMovies: (NSString *) search withCompletion: (void (^) (NSMutableArray* movies)) completionBlock;


@end
