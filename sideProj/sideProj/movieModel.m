//
//  movieModel.m
//  sideProj
//
//  Created by michelle vargas on 5/18/16.
//  Copyright © 2016 michelle vargas. All rights reserved.
//

#import "movieModel.h"

@implementation movieModel


-(instancetype) initWithSearchDictionary: (NSDictionary *) movieDictionary {
    
    self = [super init];
    
    if (self) {
        
        _title = movieDictionary[@"Title"];
        _year = movieDictionary[@"Year"];
        _imdbID = movieDictionary[@"imdbID"];
        _posterURL = movieDictionary[@"PosterUrl"];
        
    }
    
    return  self;
    
}

-(instancetype)initWithImdbDictionary: (NSDictionary *) imdbDictionary {
    
    self = [super init];
    
    
    if (self) {
        NSLog(@"imdb");
        
    }
    
    return self;
    
}

-

@end
