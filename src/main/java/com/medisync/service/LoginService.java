package com.medisync.service;

import com.medisync.dao.UserDAO;
import com.medisync.model.User;

public class LoginService {
    private final UserDAO userDAO = new UserDAO();

    public boolean login(String username, String password) {
        User user = new User(username, password);
        return userDAO.validateUser(user);
    }
}

