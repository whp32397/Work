package com.whp.service;

import com.whp.dao.UserDAO;
import com.whp.entity.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Resource
    private UserDAO userDAO;

    @Override
    public User login(User user) {
        return userDAO.queryUser(user);
    }

    @Override
    public List<User> showAll() {
        return userDAO.queryAll();
    }
}
