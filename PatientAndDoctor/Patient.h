//
//  Patient.h
//  PatientAndDoctor
//
//  Created by Nelson Chow on 2017-03-11.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PatientDelegate.h"

@class Doctor;

@interface Patient : NSObject <PatientDelegate>     // STEP THREE: DECLARE CONFORMANCE TO PROTOCOL.

@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;
@property (nonatomic, assign) int age;
@property (nonatomic, assign) BOOL hasValidHealthCard;
@property (nonatomic, strong) NSString *symptom;

-(instancetype)initWithFirstName: (NSString *) firstName andLastName: (NSString *) lastName andAge: (int) age andHasValidHealthCard: (BOOL) hasValidCard;


@end
