package com.lzm.controller;

import com.lzm.pojo.Address;
import com.lzm.pojo.User;
import com.lzm.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class AddressController {

    @Autowired
    private AddressService addressService;

    //增加新地址
    @RequestMapping(value="/AddUserAddress.action",method = RequestMethod.POST)
    @ResponseBody
    public String AddAddress(HttpSession session,@RequestBody Address address){
        //添加
        if (address.getId()==null)
        {
            User user= (User) session.getAttribute("user");
            addressService.addAddress(user.getId(),address);
            return "1";
        }else {
            //更新
            addressService.upAddress(address);
            return "1";
        }
    }


    //显示用户地址
    @RequestMapping(value="/ShowAddress.action",method = RequestMethod.GET)
    @ResponseBody
    public List<Address>   ShowAddress(int userid){
        List<Address> addressList=addressService.showAddress(userid);
        return addressList;
    }
    //设置默认地址
    @RequestMapping(value="/setDefaultAddress.action",method = RequestMethod.GET)
    @ResponseBody
    public int   setDefaultAddress(int id,int userid){
        addressService.setDefaultAddress(id,userid);
        return 1;
    }

    //根据ID查找地址
    @RequestMapping(value="/findAddressById.action",method = RequestMethod.GET)
    @ResponseBody
    public Address   findAddressById(int id){
        Address address = addressService.selectAddressById(id);
        return address;
    }

    //删除地址
    @RequestMapping(value="/deleteAddress.action",method = RequestMethod.GET)
    @ResponseBody
    public void    deleteAddress(HttpSession session ,int id){
        User user= (User) session.getAttribute("user");
       addressService.deleteAddressByID(user.getId(),id);
    }
    //显示默认地址
    @RequestMapping(value="/ShowDefaultAddress.action",method = RequestMethod.GET)
    @ResponseBody
    public Address   ShowDefaultAddress(HttpSession session){
        User user= (User) session.getAttribute("user");
        Address address = addressService.ShowDefaultAddressByUserID(user.getId());
        return  address;
    }

}