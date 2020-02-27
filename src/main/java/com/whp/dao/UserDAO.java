package com.whp.dao;

import com.whp.entity.User;

import java.util.List;

public interface UserDAO {
    User queryUser(User user);

    List<User> queryAll();
}
