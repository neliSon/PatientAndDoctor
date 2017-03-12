//
//  Patient.h
//  PatientAndDoctor
//
//  Created by Nelson Chow on 2017-03-11.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Doctor.h"
@class Doctor;

@interface Patient : NSObject {
    Doctor *doctor;
}

@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;
@property (nonatomic, assign) int age;
@property (nonatomic, assign) BOOL hasValidHealthCard;

-(instancetype)initWithFirstName: (NSString *) firstName andLastName: (NSString *) lastName andAge: (int) age andHasValidHealthCard: (BOOL) isValid;
-(void)visitDoctor: (Doctor*) doctor;

@end
