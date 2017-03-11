//
//  Doctor.m
//  PatientAndDoctor
//
//  Created by Nelson Chow on 2017-03-11.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

- (instancetype)initWithFirstName: (NSString *) firstName andLastName: (NSString *) lastName andSpecialization: (NSString *)specialization
{
    self = [super init];
    if (self) {
        _firstName = firstName;
        _lastName = lastName;
        _specialization = specialization;
    }
    return self;
}

-(void)reviewPatient:(Patient *)patient {
    if (patient.hasValidHealthCard == YES) {
        // accept patient.
        NSLog(@"Dr. %@ has accepted %@", self.lastName, patient.firstName);
    } else {
        NSLog(@"Patient, %@, must present valid health card.", patient.firstName);
    }
}

@end
