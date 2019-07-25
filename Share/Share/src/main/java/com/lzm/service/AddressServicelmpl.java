package com.lzm.service;

import com.lzm.mapper.CityMapper;
import com.lzm.mapper.ProvinceMapper;
import com.lzm.mapper.StreetMapper;
import com.lzm.pojo.*;
import com.lzm.mapper.AddressMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AddressServicelmpl implements AddressService {
    @Autowired
    private AddressMapper addressMapper;
    @Autowired
    private ProvinceMapper provinceMapper;
    @Autowired
    private CityMapper cityMapper;
    @Autowired
    private StreetMapper streetMapper;


    @Override
    public int addAddress(int userId,Address address){
        AddressExample addressExample=new AddressExample();
        addressExample.or().andUseridEqualTo(userId);
        List<Address> addresses = addressMapper.selectByExample(addressExample);
        if (addresses.size()==0)
        {
            //添加的第一个地址设为默认值
            address.setIsdefault("1");
             addressMapper.insert(address);
        }else {
            address.setIsdefault("0");
            addressMapper.insert(address);
        }
        return 1;
    }

    @Override
    public List<Address> showAddress(int userid) {
        AddressExample addressExample=new AddressExample();
        addressExample.or().andUseridEqualTo(userid);
        List<Address> addressList = addressMapper.selectByExample(addressExample);
        for (Address address:addressList)
        {
            Province province = provinceMapper.selectByPrimaryKey(address.getProvinceid());
            address.setProvincename(province.getPname());

            City city = cityMapper.selectByPrimaryKey(address.getCityid());
            address.setCityname(city.getCname());

            Street street=streetMapper.selectByPrimaryKey(address.getCityid());
            address.setStreetnam(street.getSname());
        }
        return addressList;
    }

    @Override
    public int setDefaultAddress(int id,int userid) {
        AddressExample addressExample=new AddressExample();
        addressExample.or().andUseridEqualTo(userid);
        List<Address> addressList = addressMapper.selectByExample(addressExample);
        for (Address address:addressList)
        {
            address.setIsdefault("0");
            addressMapper.updateByPrimaryKey(address);
        }
        Address address = addressMapper.selectByPrimaryKey(id);
        address.setIsdefault("1");
        addressMapper.updateByPrimaryKey(address);
        return 1;
    }

    @Override
    public Address selectAddressById(int id) {
        Address address = addressMapper.selectByPrimaryKey(id);
        return address;
    }

    @Override
    public String upAddress(Address address) {
        Address address1 = addressMapper.selectByPrimaryKey(address.getId());
        address.setIsdefault(address1.getIsdefault());
        addressMapper.updateByPrimaryKey(address);
        return "1";
    }

    //删除时至少保证一个为默认地址
    @Override
    public void deleteAddressByID(int userId,int id) {
        addressMapper.deleteByPrimaryKey(id);

        AddressExample addressExample1=new AddressExample();
        addressExample1.or().andUseridEqualTo(userId);
        List<Address> addressList = addressMapper.selectByExample(addressExample1);

        AddressExample addressExample=new AddressExample();
        addressExample.or().andUseridEqualTo(userId).andIsdefaultEqualTo("1");
        List<Address> addresses = addressMapper.selectByExample(addressExample);
        if (addresses.size()==0)
        {
            addressList.get(0).setIsdefault("1");
            addressMapper.updateByPrimaryKey(addressList.get(0));
        }
    }

    @Override
    public Address ShowDefaultAddressByUserID(Integer id) {
        AddressExample addressExample=new AddressExample();
        addressExample.or().andUseridEqualTo(id).andIsdefaultEqualTo("1");
        List<Address> addresses = addressMapper.selectByExample(addressExample);
        if (addresses.size()>0)
        {
            Address address = addresses.get(0);
            Province province = provinceMapper.selectByPrimaryKey(address.getProvinceid());
            address.setProvincename(province.getPname());

            City city = cityMapper.selectByPrimaryKey(address.getCityid());
            address.setCityname(city.getCname());

            Street street=streetMapper.selectByPrimaryKey(address.getCityid());
            address.setStreetnam(street.getSname());

            return address;
        }
        return null;
    }
}
