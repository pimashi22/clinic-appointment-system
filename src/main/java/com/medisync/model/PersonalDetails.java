package com.medisync.model;

public class PersonalDetails {
    private String fullName, dob, email, phone, gender, username;

    public PersonalDetails() {}

    public PersonalDetails(String fullName, String dob, String email, String phone, String gender, String username) {
        this.fullName = fullName;
        this.dob = dob;
        this.email = email;
        this.phone = phone;
        this.gender = gender;
        this.username = username;
    }

    public String getFullName() { return fullName; }
    public String getDob() { return dob; }
    public String getEmail() { return email; }
    public String getPhone() { return phone; }
    public String getGender() { return gender; }
    public String getUsername() { return username; }

    public void setFullName(String fullName) { this.fullName = fullName; }
    public void setDob(String dob) { this.dob = dob; }
    public void setEmail(String email) { this.email = email; }
    public void setPhone(String phone) { this.phone = phone; }
    public void setGender(String gender) { this.gender = gender; }
    public void setUsername(String username) { this.username = username; }
}
