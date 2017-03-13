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

- (instancetype)initWithFirstName: (NSString *) firstName andLastName: (NSString *) lastName andAge: (int) age andHasValidHealthCard: (BOOL) hasValidCard
{
    self = [super init];
    if (self) {
        _firstName = firstName;
        _lastName = lastName;
        _age = age;
        _hasValidHealthCard = hasValidCard;
        _symptom = @"failing";
    }
    return self;
}

/*
 STEP FOUR: IMPLEMENT REQUIRED METHODS.
 */

#pragma mark - PatientDelegate

-(void)visitDoctor:(Doctor *)doctor {
    // visit doctor
    NSLog(@"%@ is visiting Dr. %@", self.firstName, doctor.lastName);
    [doctor reviewPatient:self];
}

-(void)requestMedication:(Doctor *)doctor {
    // only patients who have been accepted by the doctor can ask for medication.
    if ([doctor.acceptedPatients containsObject:self]) {
        // request med.
        NSString *drug = [doctor prescribeDrug:self];
        NSLog(@"Dr. %@ has prescribed %@ for %@.", doctor.lastName, drug, self.firstName);;
    } else {
        // declined.
        NSLog(@"Dr. %@ has declined prescriptions.", doctor.lastName);
    }
}


@end
