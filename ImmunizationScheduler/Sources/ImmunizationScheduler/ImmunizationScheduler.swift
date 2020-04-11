

struct ImmunizationScheduler {
    
    public func schedule(request: ImmunizationScheduleRequest) -> ImmunizationScheduleResponse {
        
        var response = ImmunizationScheduleResponse()
        
        response.immunizationSchedules += HepBDoseScheduler().immunizationSchedule(request: request)
        response.immunizationSchedules += RVDoseScheduler().immunizationSchedule(request: request)
        response.immunizationSchedules += DtapTdapDoseScheduler().immunizationSchedule(request: request)
        response.immunizationSchedules += HibDoseScheduler().immunizationSchedule(request: request)
        response.immunizationSchedules += PCV13DoseScheduler().immunizationSchedule(request: request)
        response.immunizationSchedules += IPVDoseScheduler().immunizationSchedule(request: request)
        response.immunizationSchedules += InfluenzaDoseScheduler().immunizationSchedule(request: request)
        response.immunizationSchedules += MMRDoseScheduler().immunizationSchedule(request: request)
        response.immunizationSchedules += VarDoseScheduler().immunizationSchedule(request: request)
        response.immunizationSchedules += HepADoseScheduler().immunizationSchedule(request: request)
        response.immunizationSchedules += MeningococcalDoseScheduler().immunizationSchedule(request: request)
        response.immunizationSchedules += HpvDoseScheduler().immunizationSchedule(request: request)
        
        return response
    }
}
