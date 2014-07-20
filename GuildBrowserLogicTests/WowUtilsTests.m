//
//  WowUtilsTests.m
//  GuildBrowser
//
//  Created by Eugene Mammie on 7/19/14.
//  Copyright (c) 2014 Charlie Fulton. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <SenTestingKit/SenTestingKit.h>
#import "WowUtils.h"

@interface WowUtilsTests : XCTestCase

@end

@implementation WowUtilsTests

- (void)setUp
{
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}




-(void)testCharacterClassNameLookup
{
   
    
    XCTAssertEqualObjects(@"Warrior",[WoWUtils classFromCharacterType:1],@"ClassType should be Warrior");
 
    XCTAssertFalse([ @"Mage" isEqualToString:[WoWUtils classFromCharacterType:2]], @" ", Nil);
    
    // 4
    XCTAssertTrue([@"Paladin" isEqualToString:[WoWUtils classFromCharacterType:2]],@" ",nil);
    // add the rest as an exercise
}

- (void)testRaceTypeLookup
{
    XCTAssertEqualObjects(@"Human", [WoWUtils raceFromRaceType:1], @" ",nil);
    XCTAssertEqualObjects(@"Orc", [WoWUtils raceFromRaceType:2], @" ",nil);
    XCTAssertFalse([@"Night Elf" isEqualToString:[WoWUtils raceFromRaceType:45]],@" ",nil);
    // add the rest as an exercise
}

- (void)testQualityLookup
{
    
    
    XCTAssertEqual(@"Grey", [WoWUtils qualityFromQualityType:1], @" ",nil);
   XCTAssertFalse([@"Purple" isEqualToString:[WoWUtils qualityFromQualityType:10]],@" ",nil);
    // add the rest as an exercise
}


@end
