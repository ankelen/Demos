package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import entity.User;
import mapper.UserMapper;

@Service
public class UserService {
	@Autowired
	private UserMapper mapper;

	public List<User> findAllUsers() {
		return mapper.findAll();
	}
}
