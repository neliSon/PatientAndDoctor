//
//  Doctor.h
//  PatientAndDoctor
//
//  Created by Nelson Chow on 2017-03-11.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PatientDelegate.h"

@class Patient;

@interface Doctor : NSObject 

/*
 STEP TWO: ADD A PROPERTY - id <Delegate> delegate;
 */
@property id <PatientDelegate> patient;

@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;
@property (nonatomic, strong) NSString *specialization;
@property (nonatomic, strong) NSMutableSet *acceptedPatients;
@property (nonatomic, strong) NSDictionary *prescriptions;

-(instancetype)initWithFirstName: (NSString *) firstName andLastName: (NSString *) lastName andSpecialization: (NSString *) specialization;
-(void)reviewPatient: (Patient *) patient;
-(NSString *)prescribeDrug: (Patient *) patient;

@end
