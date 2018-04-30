

struct ImmunizationScheduler {
    
    public func schedule(request: ImmunizationScheduleRequest) -> ImmunizationScheduleResponse {
        var schedules = [ImmunizationSchedule]()
        schedules.append(ImmunizationSchedule(vaccineType: .HEP_B))
        schedules.append(ImmunizationSchedule(vaccineType: .RV))
        schedules.append(ImmunizationSchedule(vaccineType: .DTAP))
        schedules.append(ImmunizationSchedule(vaccineType: .TDAP))
        schedules.append(ImmunizationSchedule(vaccineType: .HI_B))
        schedules.append(ImmunizationSchedule(vaccineType: .PCV_13))
        schedules.append(ImmunizationSchedule(vaccineType: .IPV))
        schedules.append(ImmunizationSchedule(vaccineType: .INFLUENZA))
        schedules.append(ImmunizationSchedule(vaccineType: .MMR))
        schedules.append(ImmunizationSchedule(vaccineType: .VAR))
        schedules.append(ImmunizationSchedule(vaccineType: .HEP_A))
        schedules.append(ImmunizationSchedule(vaccineType: .MENINGOCOCCAL))
        schedules.append(ImmunizationSchedule(vaccineType: .HPV))
        let response = ImmunizationScheduleResponse(immunizationSchedules: schedules)
        
        return response
    }
    
}
