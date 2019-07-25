package com.lzm.mapper;

import com.lzm.pojo.Kind;
import com.lzm.pojo.KindExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface KindMapper {
    int countByExample(KindExample example);

    int deleteByExample(KindExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Kind record);

    int insertSelective(Kind record);

    List<Kind> selectByExample(KindExample example);

    Kind selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Kind record, @Param("example") KindExample example);

    int updateByExample(@Param("record") Kind record, @Param("example") KindExample example);

    int updateByPrimaryKeySelective(Kind record);

    int updateByPrimaryKey(Kind record);
}