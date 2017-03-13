//
//  PatientProtocol.h
//  PatientAndDoctor
//
//  Created by Nelson Chow on 2017-03-11.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 STEP ONE: CREATE PROTOCOL
 */

@class Doctor;

@protocol PatientDelegate <NSObject>

@property (nonatomic, assign) BOOL hasValidHealthCard;

-(void)visitDoctor: (Doctor*) doctor;
-(void)requestMedication: (Doctor*) doctor;

@end
