package com.lzm.service;

import com.lzm.mapper.AccountMapper;
import com.lzm.pojo.Account;
import com.lzm.pojo.AccountExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author lzm
 * @create 2019- 07- 16- 11:12
 */
@Service
public class AccountServiceImpl implements  AccountService {
    @Autowired
    private AccountMapper accountMapper;


    @Override
    public List<Account> selectAccountByUserID(int userid) {
        AccountExample accountExample=new AccountExample();
        accountExample.or().andUseridEqualTo(userid);
        accountExample.setOrderByClause("ctime desc");
        List<Account> accounts = accountMapper.selectByExample(accountExample);
        return accounts;
    }
}
