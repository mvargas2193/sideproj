//
//  API.m
//  sideProj
//
//  Created by michelle vargas on 5/12/16.
//  Copyright © 2016 michelle vargas. All rights reserved.
//

#import "API.h"
#import "CollectionViewController.h"


NSString * const OMDB_URL = @"https://www.omdbapi.com/?";


@implementation API


+(void)searchRequestForMovies: (NSString *) search withCompletion: (void (^) (NSMutableArray* movies)) completionBlock {
    
    
    NSString *urlString = [NSString stringWithFormat:@"%@s=%@&page=1", OMDB_URL, search];
    
    NSURL *omdbUrl = [NSURL URLWithString:urlString];
    
    NSURLSession *session = [NSURLSession sharedSession];
    
    NSURLSession *task = [session dataTaskWithURL:omdbUrl completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (<#condition#>) {
            <#statements#>
        }
            }
        
    }];
    
    
}
@end
