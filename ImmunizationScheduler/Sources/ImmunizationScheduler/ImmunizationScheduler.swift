

struct ImmunizationScheduler {
    
    public func schedule(request: ImmunizationScheduleRequest) -> ImmunizationScheduleResponse {
        
        var response = ImmunizationScheduleResponse()
        
        response.immunizationSchedules += HepBDoseScheduler().immunizationSchedule(request: request, response: response)
        response.immunizationSchedules += RVDoseScheduler().immunizationSchedule(request: request, response: response)
        response.immunizationSchedules += DtapTdapDoseScheduler().immunizationSchedule(request: request, response: response)
        response.immunizationSchedules += HibDoseScheduler().immunizationSchedule(request: request, response: response)
        response.immunizationSchedules += PCV13DoseScheduler().immunizationSchedule(request: request, response: response)
        response.immunizationSchedules += IPVDoseScheduler().immunizationSchedule(request: request, response: response)
        response.immunizationSchedules += InfluenzaDoseScheduler().immunizationSchedule(request: request, response: response)
        response.immunizationSchedules += MMRDoseScheduler().immunizationSchedule(request: request, response: response)
        response.immunizationSchedules += VarDoseScheduler().immunizationSchedule(request: request, response: response)
        response.immunizationSchedules += HepADoseScheduler().immunizationSchedule(request: request, response: response)
        response.immunizationSchedules += MeningococcalDoseScheduler().immunizationSchedule(request: request, response: response)
        response.immunizationSchedules += HpvDoseScheduler().immunizationSchedule(request: request, response: response)
        
        return response
    }
}
