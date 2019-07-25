package com.lzm.test;

import com.lzm.mapper.UserMapper;
import com.lzm.pojo.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/applicationContext.xml")
public class UserTest {
	@Autowired
	private UserMapper userMapper;
	/**  
	
	* @author ¡Œ‘Û√˙
	
	* @date 2019-07-02 09:03
	
	*/
	@Test
	public void  UsersTest()
	{

		User user = userMapper.selectByPrimaryKey(1);
		System.out.println(user.toString());

	}


}
