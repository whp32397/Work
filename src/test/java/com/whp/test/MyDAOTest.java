package com.whp.test;

import com.whp.App;
import com.whp.dao.UserDAO;
import com.whp.entity.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = App.class)
public class MyDAOTest {
    @Autowired
    UserDAO userDAO;

    @Test
    public void testLogin() {
        User user = new User();
        user.setUsername("xiaohei");
        user.setPassword("123456");
        User queryUser = userDAO.queryUser(user);
        System.out.println(queryUser);
    }
    @Test
    public void testAll() {
        User user = new User();
        List<User> users = userDAO.queryAll();
        for (User user1 : users) {
            System.out.println(user1);
        }
    }
}
