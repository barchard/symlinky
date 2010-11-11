//
//  SMLinkController.h
//  symlinky
//
//  Created by Gregory Barchard on 11/10/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface SMLinkController : NSObject {

	// The source directory of the symlink
	NSURL *source;
	
	// The destination directory to make the symlink in
	NSURL *destination;
}
@property (readwrite, retain) NSURL *source;
@property (readwrite, retain) NSURL *destination;

// Make the link
- (IBAction)link:(id)sender;

// Show an error panel
//- (void)

@end
