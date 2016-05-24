//
//  movieModel.m
//  sideProj
//
//  Created by michelle vargas on 5/18/16.
//  Copyright © 2016 michelle vargas. All rights reserved.
//

#import "movieModel.h"

@implementation movieModel


-(instancetype)initWithTile:(NSString *)title imdbID:(NSString *)imdbID year:(NSString *)year posterURL:(NSURL *)posterURL movieInfo:(NSString *)movieInfo {
    
    self = [super init];
    
    if (self) {
        
        _title = title;
        _imdbID = imdbID;
        _year = year;
        _posterURL = posterURL;
        _movieInfo = movieInfo;
        
    }
    
    return  self;
    
    
 
}



@end
