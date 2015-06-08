//
// Created by BLACKGENE on 15. 5. 29..
// Copyright (c) 2015 Cédric Luthi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Xcproj.h"

@interface Xcproj (FileUtils)
- (BOOL)atomicCopyItemAtURL:(NSURL *)sourceURL toURL:(NSURL *)destinationURL error:(NSError **)outError;
@end