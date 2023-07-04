package com.example.hibernateapp;

import com.example.hibernateapp.dao.UserDao;
import com.example.hibernateapp.model.User;
import com.example.hibernateapp.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class TestApp {


    public static void main(String[] args) {
        UserDao userDao = new UserDao();
        User testUser = new User("t1", "e1", "c1");
        userDao.saveUser(testUser);
        User testUser2 = new User("t2", "e2", "c2");
        userDao.saveUser(testUser2);
        User u111 = userDao.getUser(2);
        System.out.println(u111.getName());
        List<User> listOfUsers = userDao.getAllUsers();
        System.out.println(listOfUsers);
    }
}
