//
//  Doctor.h
//  PatientAndDoctor
//
//  Created by Nelson Chow on 2017-03-11.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Patient.h"

@class Patient;

@interface Doctor : NSObject {
    Patient *patient;
}

@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;
@property (nonatomic, strong) NSString *specialization;

-(instancetype)initWithFirstName: (NSString *) firstName andLastName: (NSString *) lastName andSpecialization: (NSString *)specialization;
-(void)reviewPatient: (Patient *)patient;

@end
