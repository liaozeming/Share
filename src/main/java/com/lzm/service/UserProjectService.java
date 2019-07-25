package com.lzm.service;

import com.lzm.pojo.Project;

import java.util.List;

public interface UserProjectService {
    List<Project> selectByStatusAndUserID(int userid,  String status);
}
