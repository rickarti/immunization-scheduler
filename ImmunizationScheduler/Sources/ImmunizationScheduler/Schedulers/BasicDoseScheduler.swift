//
//  BasicDoseScheduler.swift
//  ImmunizationScheduler
//
//  Created by Richard Johnson on 4/11/20.
//

import Foundation

class BasicDoseScheduler : DoseScheduler {
    
    weak open var delegate: BasicDoseSchedulerDelegate?
    
    
    func immunizationSchedule(request: ImmunizationScheduleRequest) -> [ImmunizationSchedule] {

        let givenDoses: [GivenDose] = []
        // List<GivenDose> givenDoses = getGivenDosesForType(request, getVaccineType());
        
        // var schedDoses: [DueDose] = []
        // List<DueDose> dueDoses = new ArrayList<>();

        let doseScheduleIterator: DoseScheduleIterator = self.validateGivenDoses(givenDoses, birthDate: request.birthDate, requestDate: request.requestDate)
        // DoseScheduleIterator doseScheduleIterator = validateDoses(givenDoses, dueDoses, birthDate, requestDate);

        let schedDoses: [DueDose] = self.scheduleDueDoses(doseScheduleIterator: doseScheduleIterator,
                              givenDoses: givenDoses, birthDate: request.birthDate, requestDate: request.requestDate)
        // scheduleDueDoses(birthDate, requestDate, doseScheduleIterator, givenDoses, dueDoses, getMaxDate(birthDate));
        
        return [ImmunizationSchedule(vaccineType: .HEP_A, givenDoses: givenDoses, scheduledDoses: schedDoses)]
    }
    
    func validateGivenDoses(_ givenDoses: [GivenDose], birthDate: Date, requestDate: Date) -> DoseScheduleIterator {
        
        let doseScheduleIterator = DoseScheduleIterator(doseSchedulerDelegate: delegate!, givenDoses: givenDoses, birthDate: birthDate, requestDate: requestDate)
        
//        let nextImmunizationDoseType: ImmunizationDoseType? = doseScheduleIterator.hasNext() ? doseScheduleIterator.next() : nil
//        print("-> \(String(describing: nextImmunizationDoseType))")
// TODO: This part validates the existing given doses
//        for (GivenDose givenDose : givenDoses) {
//            DoseWindow doseWindow = nextImmunizationDoseType == null ? null :
//                    calculateDoseWindow(birthDate, requestDate, nextImmunizationDoseType, givenDoses, new ArrayList<>());
//            if (nextImmunizationDoseType != null && getGivenDate(givenDose).isBefore(doseWindow.getMinimumValidStart())) {
//                givenDose.setDoseType(DoseType.INVALID_EARLY);
//                nextImmunizationDoseType = doseScheduleIterator.removeCurrent();
//            } else {
//                givenDose.setDoseType(nextImmunizationDoseType == null ? null : nextImmunizationDoseType.getDoseType());
//                if (doseScheduleIterator.hasNext()) {
//                    nextImmunizationDoseType = doseScheduleIterator.next();
//                } else {
//                    nextImmunizationDoseType = null;
//                }
//            }
//        }
        
        return doseScheduleIterator
    }
    
    func scheduleDueDoses(doseScheduleIterator: DoseScheduleIterator, givenDoses: [GivenDose], birthDate: Date, requestDate: Date) -> [DueDose] {
        
//        ImmunizationDoseType immunizationDoseType = doseScheduleIterator.getCurrent();
//
//        if(immunizationDoseType!=null && !doseAlreadyGiven(immunizationDoseType, givenDoses)){
//            DueDose dueDose = scheduleDueDose(immunizationDoseType, patientBirthDate, requestDate, givenDoses, dueDoses, maxDate);
//            if (dueDose==null)
//                return;
//            dueDoses.add(dueDose);
//        }
        
        // var scheduledDoses: [DueDose] = []
        
        while doseScheduleIterator.hasNext() {
            let immunizationDoseType = doseScheduleIterator.next()
            let scheduledDose = scheduleDueDose(immunizationDoseType: immunizationDoseType, patientBirthDate: birthDate, requestDate: requestDate, givenDoses: givenDoses, scheduledDoses: doseScheduleIterator.schedDoses, maxDate: getMaxDate(birthDate: birthDate))
            
            if scheduledDose == nil {
                return doseScheduleIterator.schedDoses
            }
            doseScheduleIterator.schedDoses.append(scheduledDose!)
        }
        return doseScheduleIterator.schedDoses
    }
    
    func scheduleDueDose(immunizationDoseType: ImmunizationDoseType, patientBirthDate: Date, requestDate: Date,
                         givenDoses: [GivenDose], scheduledDoses: [DueDose], maxDate: Date?) -> DueDose? {
        
        let doseWindow = calculateDoseWindow(birthDate: patientBirthDate, requestDate: requestDate, immunizationDoseType: immunizationDoseType, givenDoses: givenDoses, pendingDoses: scheduledDoses)

//        if (doseWindow.getStart().isAfter(maxDate) || requestDate.isAfter(maxDate)) {
//            return null;
//        } else {
//            return DueDose(
//                    toDate(doseWindow.getStart()),
//                    toDate(doseWindow.getEnd()),
//                    toDate(doseWindow.getMinimumDateToGive()),
//                    toDate(doseWindow.getMaximumDateToGive()),
//                    immunizationDoseType.getVaccineType(),
//                    immunizationDoseType.getDoseType(),
//                    doseWindow.isCatchup());
//        }
        
        return DueDose(earliestRecommendedDueDate: doseWindow.start, latestRecommendedDueDate: doseWindow.end, vaccineType: immunizationDoseType.vaccineType, doseType: immunizationDoseType.doseType)
    }
    
    func calculateDoseWindow(birthDate: Date, requestDate: Date, immunizationDoseType: ImmunizationDoseType, givenDoses: [GivenDose], pendingDoses: [DueDose]) -> DoseWindow {

        let minimumValidDueTime = birthDate
        let minimumDateToGive = birthDate
        
        // MIN VALID
        let minimumValidRuleParameters: RuleParameters = RuleParameters(patientBirthDate: birthDate, givenDoses: givenDoses, dueDoses: pendingDoses, useMinimumDateToGive: true)
        
        for rule in immunizationDoseType.startWindowRules {
            let ruleDate = rule.apply(params: minimumValidRuleParameters)
            print(ruleDate)
        }
        
//        for (IntervalRule rule : immunizationDoseType.getMinimumValidDoseRules()) {
//            LocalDateTime ruleDate = rule.apply(minimumValidRuleParameters);
//            if(ruleDate != null && ruleDate.minusDays(MINIMUM_DOSE_VALID_BUFFER_DAYS).isAfter(minimumValidDueTime)) {
//                minimumDateToGive = ruleDate;
//                minimumValidDueTime = ruleDate.minusDays(MINIMUM_DOSE_VALID_BUFFER_DAYS);
//            }
//        }
        
        
        let dueTime = birthDate
        
        
        
        
        
        
        
        
        
        return DoseWindow(minimumValidStart: minimumValidDueTime, minimumDateToGive: minimumDateToGive, maximumDateToGive: nil, start: dueTime, end: dueTime, isCatchup: false)
    }
    
    struct DoseWindow {
        let minimumValidStart: Date
        let minimumDateToGive: Date
        let maximumDateToGive: Date?
        let start: Date
        let end: Date
        let isCatchup: Bool
    }
    
    class DoseScheduleIterator {
        
        init(doseSchedulerDelegate: BasicDoseSchedulerDelegate, givenDoses: [GivenDose], birthDate: Date, requestDate: Date) {
            self.doseSchedulerDelegate = doseSchedulerDelegate
            self.givenDoses = givenDoses
            self.birthDate = birthDate
            self.requestDate = requestDate
        }
        
        let doseSchedulerDelegate: BasicDoseSchedulerDelegate
        let givenDoses: [GivenDose]
        var schedDoses: [DueDose] = []
        let birthDate: Date
        let requestDate: Date
        
        var nextHolder: ImmunizationDoseType?
        
        var validatedImmunizationSchedule: [ImmunizationDoseType] = []
        
        func hasNext() -> Bool {
            let ret = findNext() != nil
            return ret
        }
        
        func getCurrent() -> ImmunizationDoseType? {
            return validatedImmunizationSchedule.isEmpty ? nil : validatedImmunizationSchedule.last
        }
        
        
        func findNext() -> ImmunizationDoseType? {
            if nextHolder != nil {
                return nextHolder
            }
            nextHolder = doseSchedulerDelegate.getNextDoseType(currentDoseType: getCurrent(), givenDoses: givenDoses, birthDate: birthDate, requestDate: requestDate)
            return nextHolder
        }
        
        func next() -> ImmunizationDoseType {
            let nextDoseType: ImmunizationDoseType = findNext()!;
//            if (nextDoseType == nil) {
//                throw new NoSuchElementException("No Such Element in the DoseScheduleIterator");
//            }
            nextHolder = nil;
            validatedImmunizationSchedule.append(nextDoseType);
            return nextDoseType;
        }
    }
    
}


