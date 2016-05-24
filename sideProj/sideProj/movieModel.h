//
//  movieModel.h
//  sideProj
//
//  Created by michelle vargas on 5/18/16.
//  Copyright © 2016 michelle vargas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface movieModel : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *imdbID;
@property (strong, nonatomic) NSString *year;
@property (strong, nonatomic) NSURL *posterURL;
@property (strong, nonatomic) NSString *movieInfo;

-(instancetype)initWithTile: (NSString *)title
                     imdbID: (NSString *)imdbID
                       year: (NSString *) year
                  posterURL: (NSURL *) posterURL
                  movieInfo: (NSString *) movieInfo;

@end
