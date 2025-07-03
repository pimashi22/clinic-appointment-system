package com.medisync.model;

public class Appointment {
    private String fullName, username, gender, phone, address, email, timeSlot, reason;
    private int age;
    private String appointmentDate;
    private int id;


    public Appointment(String fullName, String username, String gender, int age, String phone,
                       String address, String email, String appointmentDate,
                       String timeSlot, String reason) {
        this.fullName = fullName;
        this.username = username;
        this.gender = gender;
        this.age = age;
        this.phone = phone;
        this.address = address;
        this.email = email;
        this.appointmentDate = appointmentDate;
        this.timeSlot = timeSlot;
        this.reason = reason;
    }

    public String getFullName() { return fullName; }
    public String getUsername() { return username; }
    public String getGender() { return gender; }
    public int getAge() { return age; }
    public String getPhone() { return phone; }
    public String getAddress() { return address; }
    public String getEmail() { return email; }
    public String getAppointmentDate() { return appointmentDate; }
    public String getTimeSlot() { return timeSlot; }
    public String getReason() { return reason; }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    
}
