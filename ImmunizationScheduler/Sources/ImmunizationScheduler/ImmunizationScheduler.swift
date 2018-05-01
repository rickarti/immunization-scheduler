

struct ImmunizationScheduler {
    
    public func schedule(request: ImmunizationScheduleRequest) -> ImmunizationScheduleResponse {
        
        var response = ImmunizationScheduleResponse()
        
        response.immunizationSchedules += HepBDoseScheduler().immunizationSchedule(request: request, response: response)
        response.immunizationSchedules += RVDoseScheduler().immunizationSchedule(request: request, response: response)
        response.immunizationSchedules += DtapTdapDoseScheduler().immunizationSchedule(request: request, response: response)
        response.immunizationSchedules += HibDoseScheduler().immunizationSchedule(request: request, response: response)
        response.immunizationSchedules += PCV13DoseScheduler().immunizationSchedule(request: request, response: response)
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
