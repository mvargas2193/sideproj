//
//  API.m
//  sideProj
//
//  Created by michelle vargas on 5/12/16.
//  Copyright © 2016 michelle vargas. All rights reserved.
//

#import "API.h"
#import "CollectionViewController.h"
#import "movieModel.h"


NSString * const OMDB_URL = @"https://www.omdbapi.com/?";



@implementation API


+(void)searchRequestForMovies: (NSString *) search withCompletion: (void (^) (NSMutableArray* movies)) completionBlock

{
    
    NSString *urlString = [NSString stringWithFormat:@"%@s=%@&page=1", OMDB_URL, search];
    
    NSURL *omdbUrl = [NSURL URLWithString:urlString];
    
    NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithURL:omdbUrl completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        
        if (error) {
            NSLog(@"Error: %@", error.description);
            
        }
        
        NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *) response;
        
        if (httpResponse.statusCode != 200) {
            NSLog(@"uh oh! status code: %ld", (long)httpResponse.statusCode);
            
        }
        
        //using json serializtion here. convert json to be put in a dictionary.
        
        NSDictionary *searchResponse = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        
        NSMutableArray *moviesresults = searchResponse [@"Search"];
        
        NSMutableArray *mMovies = [NSMutableArray new];
        
        
                for (NSDictionary *movie in moviesresults) {
                    
                    movieModel *currentMovies = [[movieModel new] initWithSearchDictionary: movieModel];
                    
                    mMovies = (NSMutableArray *) [mMovies arrayByAddingObjectsFromArray:currentMovies];
                    
                    
                    

                    }
        
                for (movieModel *movie in mMovies) {
                        NSLog(@"Created Movie: %@", movie.title);
            
                    }
        
        
        
        completionBlock (moviesresults);
        
        
        
        

    }];

    
    [task resume];
    
    
    
    
    
}
                          
@end
