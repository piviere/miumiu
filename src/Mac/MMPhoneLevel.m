//
//  MMPhoneLevel.m
//  MiuMiu
//
//  Created by Peter Zion on 31/10/08.
//  Copyright 2008 Peter Zion. All rights reserved.
//

#import "MMPhoneLevel.h"

@implementation MMPhoneLevel

-(id) init
{
	if ( self = [super init] )
	{
		levelIndicator = [[NSLevelIndicator alloc] init];
		[levelIndicator setMinValue:0.0];
		[levelIndicator setMaxValue:10.0];
		[levelIndicator setWarningValue:6.0];
		[levelIndicator setCriticalValue:8.0];
	}
	return self;
}

-(void) dealloc
{
	[levelIndicator release];
	[super dealloc];
}

@dynamic view;
-(MMView *) view
{
	return levelIndicator;
}

@dynamic frame;
-(MMRect) frame
{
	return levelIndicator.frame;
}
-(void) setFrame:(MMRect)_
{
	levelIndicator.frame = _;
}

@dynamic value;
-(float) value
{
	return [levelIndicator floatValue]/10;
}
-(void) setValue:(float)_
{
	[levelIndicator setFloatValue:_*10];
}

@end
