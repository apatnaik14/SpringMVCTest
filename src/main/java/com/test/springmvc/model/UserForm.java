/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.test.springmvc.model;

import java.util.List;

/**
 *
 * @author Arpan Patnaik
 */
public class UserForm {
    
    private List<User> users;
    
    public List<User> getUsers() {
	return users;
    }

    public void setUsers(List<User> users) {
	this.users = users;
    }
}
