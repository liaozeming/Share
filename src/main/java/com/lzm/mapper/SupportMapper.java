package com.lzm.mapper;

import com.lzm.pojo.Support;
import com.lzm.pojo.SupportExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SupportMapper {
    int countByExample(SupportExample example);

    int deleteByExample(SupportExample example);

    int deleteByPrimaryKey(String id);

    int insert(Support record);

    int insertSelective(Support record);

    List<Support> selectByExample(SupportExample example);

    Support selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") Support record, @Param("example") SupportExample example);

    int updateByExample(@Param("record") Support record, @Param("example") SupportExample example);

    int updateByPrimaryKeySelective(Support record);

    int updateByPrimaryKey(Support record);
}