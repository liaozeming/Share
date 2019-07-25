package com.lzm.mapper;

import com.lzm.pojo.Collections;
import com.lzm.pojo.CollectionsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CollectionsMapper {
    int countByExample(CollectionsExample example);

    int deleteByExample(CollectionsExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Collections record);

    int insertSelective(Collections record);

    List<Collections> selectByExample(CollectionsExample example);

    Collections selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Collections record, @Param("example") CollectionsExample example);

    int updateByExample(@Param("record") Collections record, @Param("example") CollectionsExample example);

    int updateByPrimaryKeySelective(Collections record);

    int updateByPrimaryKey(Collections record);
}