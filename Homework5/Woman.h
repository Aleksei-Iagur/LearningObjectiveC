//
//  Woman.h
//  Homework5
//
//  Created by MAC  on 08.06.16.
//  Copyright © 2016 Lexo. All rights reserved.
//

#import "Human.h"
#import "CreatureProtocol.h"

@interface Woman : Human <CreatureProtocol>		

- (id) initWithAge:(int) age name:(NSString*) name;

+ (id) WomanWithAge:(int)age name:(NSString*) name;

@end
