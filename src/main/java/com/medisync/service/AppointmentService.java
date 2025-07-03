package com.medisync.service;

import com.medisync.dao.AppointmentDAO;
import com.medisync.model.Appointment;

public class AppointmentService {
    private final AppointmentDAO dao = new AppointmentDAO();

    public boolean book(Appointment appt) {
        return dao.save(appt);
    }
}
