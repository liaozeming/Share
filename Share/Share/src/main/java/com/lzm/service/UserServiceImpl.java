package com.lzm.service;

import com.lzm.conversion.DateConveter;
import com.lzm.mapper.UserMapper;
import com.lzm.pojo.User;
import com.lzm.pojo.UserExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @author lzm
 * @create 2019- 07- 11- 22:07
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private DateConveter dateConveter;
    //增加用户
    @Override
    public int addUser(User user) {
        //判断用户名是否重复
        UserExample userExample=new UserExample();
        userExample.or().andFnameEqualTo(user.getFname());
        List<User> users = userMapper.selectByExample(userExample);
        if (users.size()>=1)
        {
                return  0;
        }
        else {

            Date date = new Date(System.currentTimeMillis());
            user.setRtime(date);
        user.setIsadmin("0");
        user.setHeadimg("1.jpg");
        user.setIsable("0");
        user.setIsforbid("1");
        userMapper.insert(user);
        return 1;
    }

    }

    @Override
    public User update(User user) {
        User user1 = userMapper.selectByPrimaryKey(user.getId());
        user1.setHeadimg(user.getHeadimg());
        user1.setPhone(user.getPhone());
        user1.setEmail(user.getEmail());
        user1.setIntroduce(user.getIntroduce());
        userMapper.updateByPrimaryKey(user1);
        return user1;
    }

    @Override
    public List<User> selectUserByFname(User user) {
        UserExample userExample = new UserExample();
        userExample.or().andFnameEqualTo(user.getFname());
        List<User> users = userMapper.selectByExample(userExample);
        return users;
    }

    @Override
    public List<User> selectUserByPhone(String phone) {
        UserExample userExample = new UserExample();
        userExample.or().andPhoneEqualTo(phone);
        List<User> users = userMapper.selectByExample(userExample);
        return users;
    }

    @Override
    public int updatePassword(User user) {
        UserExample userExample = new UserExample();
        userExample.or().andPhoneEqualTo(user.getPhone());
        List<User> users = userMapper.selectByExample(userExample);
        if (users.size()!=0)
        {
            users.get(0).setPassword(user.getPassword());
            userMapper.updateByPrimaryKey(users.get(0));
            return 1;
        }else return 0;
    }

    @Override
    public User seleUserById(Integer userid) {
        User user = userMapper.selectByPrimaryKey(userid);
        return user;
    }
}
