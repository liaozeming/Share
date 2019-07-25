package com.lzm.service;

import com.lzm.pojo.Project;
import org.springframework.stereotype.Service;

import java.util.List;


public interface RecommendService {

    List<Project> selectByNumSup();
}
