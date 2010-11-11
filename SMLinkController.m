//
//  SMLinkController.m
//  symlinky
//
//  Created by Gregory Barchard on 11/10/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "SMLinkController.h"


@implementation SMLinkController

@synthesize source, destination;

- (id)init {
	
	if (self = [super init]) {
		source = [NSURL new];
		destination = [NSURL new];
	}
	
	return self;
}

- (void)dealloc {
	[source release];
	[destination release];
	[super dealloc];
}

- (void)finalize {
	[source release];
	[destination release];
	[super finalize];
}

// Make the link
- (IBAction)link:(id)sender {
	
	// Get the filemanager
	NSFileManager *filemanager = [NSFileManager defaultManager];
	
	// The error
	NSError *error = [NSError errorWithDomain:@"net.barchard.symlinky"
										 code:100
									 userInfo:nil];
	
	// Create the link. If an error occurs, throw a warning message
	if (![filemanager createSymbolicLinkAtPath:[destination path]
						   withDestinationPath:[source path]
										 error:&error]) {
		NSLog(@"Error: %@", error);
	}
}

@end
