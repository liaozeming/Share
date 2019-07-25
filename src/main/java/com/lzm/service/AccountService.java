package com.lzm.service;

import com.lzm.pojo.Account;

import java.util.List;

public interface AccountService {

    public List<Account> selectAccountByUserID(int id);
}
