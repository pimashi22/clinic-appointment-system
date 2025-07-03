package com.medisync.model;

public class UserDetails {
    private String fullName, dob, email, phone, gender, username, password;

    public UserDetails(String fullName, String dob, String email, String phone,
                       String gender, String username, String password) {
        this.fullName = fullName;
        this.dob = dob;
        this.email = email;
        this.phone = phone;
        this.gender = gender;
        this.username = username;
        this.password = password;
    }

    // Getters
    public String getFullName() { return fullName; }
    public String getDob() { return dob; }
    public String getEmail() { return email; }
    public String getPhone() { return phone; }
    public String getGender() { return gender; }
    public String getUsername() { return username; }
    public String getPassword() { return password; }
}
