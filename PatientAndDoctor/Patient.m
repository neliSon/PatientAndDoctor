//
//  Patient.m
//  PatientAndDoctor
//
//  Created by Nelson Chow on 2017-03-11.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (instancetype)initWithFirstName: (NSString *) firstName lastName: (NSString *) lastName andAge: (int) age
{
    self = [super init];
    if (self) {
        _firstName = firstName;
        _lastName = lastName;
        _age = age;
    }
    return self;
}

@end
