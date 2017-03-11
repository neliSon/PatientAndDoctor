//
//  Doctor.m
//  PatientAndDoctor
//
//  Created by Nelson Chow on 2017-03-11.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (instancetype)initWithFirstName: (NSString *) firstName lastName: (NSString *) lastName andSpecialization: (NSString *) specialization
{
    self = [super init];
    if (self) {
        _firstName = firstName;
        _lastName = lastName;
        _specialization = specialization;
    }
    return self;
}

@end
