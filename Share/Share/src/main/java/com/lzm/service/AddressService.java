package com.lzm.service;

import com.lzm.pojo.Address;
import org.springframework.stereotype.Repository;

import java.util.List;


public interface AddressService {

    //增加地址
    int addAddress(int userId,Address address);

    List<Address> showAddress(int userid);

    int setDefaultAddress(int id,int userid);

    Address selectAddressById(int id);

    String upAddress(Address address);

    void deleteAddressByID(int userId,int id);

    Address  ShowDefaultAddressByUserID(Integer id);
}

