//
// Created by BLACKGENE on 15. 5. 29..
// Copyright (c) 2015 Cédric Luthi. All rights reserved.
//

#import "Xcproj+FileUtils.h"


@implementation Xcproj (FileUtils)

- (BOOL)atomicCopyItemAtURL:(NSURL *)sourceURL toURL:(NSURL *)destinationURL error:(NSError **)outError {
    NSFileManager *manager = [NSFileManager defaultManager];
    NSURL *tempDir = [manager URLForDirectory:NSItemReplacementDirectory inDomain:NSUserDomainMask appropriateForURL:destinationURL create:YES error:outError];
    if (!tempDir){
        return NO;
    }

    NSURL *tempURL = [tempDir URLByAppendingPathComponent:[destinationURL lastPathComponent]];
    BOOL result = [manager copyItemAtURL:sourceURL toURL:tempURL error:outError];
    if (result){
        NSURL *resultingURL;
        result = [manager replaceItemAtURL:destinationURL
                             withItemAtURL:tempURL
                            backupItemName:nil
                                   options:NSFileManagerItemReplacementUsingNewMetadataOnly
                          resultingItemURL:&resultingURL
                                     error:outError];

        if (result){
            NSAssert([resultingURL.absoluteString isEqualToString:destinationURL.absoluteString],
                    @"URL unexpectedly changed during replacement from:\n%@\nto:\n%@",
                    destinationURL,
                    resultingURL);
        }
    }

    // Clean up
    NSError *error;
    if (![manager removeItemAtURL:tempDir error:&error]){
        NSLog(@"Failed to remove temp directory after atomic copy: %@", error);
    }
    return result;
}

@end