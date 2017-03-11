//
//  Patient.m
//  PatientAndDoctor
//
//  Created by Nelson Chow on 2017-03-11.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (instancetype)initWithFirstName: (NSString *) firstName andLastName: (NSString *) lastName andAge: (int) age andHasValidHealthCard: (BOOL) isValid
{
    self = [super init];
    if (self) {
        _firstName = firstName;
        _lastName = lastName;
        _age = age;
        _hasValidHealthCard = isValid;
    }
    return self;
}

-(void)visitDoctor:(Doctor *)doctor {
    // visit doctor
    [doctor reviewPatient:self];
}

@end
