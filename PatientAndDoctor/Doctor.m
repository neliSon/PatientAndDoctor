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
        _acceptedPatients = [NSMutableSet set];
        _prescriptions = @{@"failing":@"fail some more",
                           @"infection":@"antibiotics"};
    }
    return self;
}

-(void)reviewPatient:(Patient *)patient {
    if ([patient hasValidHealthCard] == YES) {
        // accept patient.
        [self.acceptedPatients addObject:patient];
        NSLog(@"Dr. %@ has accepted %@", self.lastName, patient.firstName);
    } else {
        // decline patient.
        NSLog(@"Patient, %@, must present valid health card.", patient.firstName);
    }
}

-(void)prescribeDrug:(Patient *)patient {
    // only patients who have been accepted by the doctor can ask for medication.
    if ([self.acceptedPatients containsObject:patient]) {
        NSMutableSet *drugs = [NSMutableSet set];
        for (id symptom in patient.symptoms) {
            [drugs addObject:[self.prescriptions objectForKey:symptom]];
            for (id drug in drugs) {
                NSLog(@"Dr. %@ has prescribed %@ to treat %@'s %@.", self.lastName, drug, patient.firstName, symptom);
            }
        }
    } else {
        NSLog(@"Dr. %@ has declined prescriptions.", self.lastName);
    }
}

@end
