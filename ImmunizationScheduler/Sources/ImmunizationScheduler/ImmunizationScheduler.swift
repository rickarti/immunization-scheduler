

struct ImmunizationScheduler {
    
    public func schedule(request: ImmunizationScheduleRequest) -> ImmunizationScheduleResponse {
        
        var response = ImmunizationScheduleResponse()
        
        response.immunizationSchedules += HepBDoseScheduler().immunizationSchedule(request: request, response: response)
        response.immunizationSchedules += RVDoseScheduler().immunizationSchedule(request: request, response: response)
        response.immunizationSchedules.append(ImmunizationSchedule(vaccineType: .DTAP))
        response.immunizationSchedules.append(ImmunizationSchedule(vaccineType: .TDAP))
        response.immunizationSchedules.append(ImmunizationSchedule(vaccineType: .HI_B))
        response.immunizationSchedules.append(ImmunizationSchedule(vaccineType: .PCV_13))
        response.immunizationSchedules.append(ImmunizationSchedule(vaccineType: .IPV))
        response.immunizationSchedules.append(ImmunizationSchedule(vaccineType: .INFLUENZA))
        response.immunizationSchedules.append(ImmunizationSchedule(vaccineType: .MMR))
        response.immunizationSchedules.append(ImmunizationSchedule(vaccineType: .VAR))
        response.immunizationSchedules.append(ImmunizationSchedule(vaccineType: .HEP_A))
        response.immunizationSchedules.append(ImmunizationSchedule(vaccineType: .MENINGOCOCCAL))
        response.immunizationSchedules.append(ImmunizationSchedule(vaccineType: .HPV))
        
        return response
    }
}
