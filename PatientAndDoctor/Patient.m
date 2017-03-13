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
        _symptoms = [NSMutableSet setWithObjects:@"infection", @"failing", nil];
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
    [doctor prescribeDrug:self];
}


@end
