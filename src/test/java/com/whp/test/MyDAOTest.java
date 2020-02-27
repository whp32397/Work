package com.whp.test;

import com.whp.App;
import com.whp.dao.UserDAO;
import com.whp.entity.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

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
        System.out.println(user);
        User queryUser = userDAO.queryUser(user);
        System.out.println(queryUser);
    }
}
