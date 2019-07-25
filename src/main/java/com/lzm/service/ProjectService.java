package com.lzm.service;

import com.lzm.pojo.Project;

import java.util.List;

public interface ProjectService {

    int addProject(Project project);

    List<Project> listProjectByPageAndLimit(int page, int limit);

    int findProjectPageCount();

    //综合排序
    List<Project> sortProductByAll(int page, int limit);

    List<Project> sortProductByMoney(int page, int limit);

    List<Project> sortProductBySup(int page, int limit);

    List<Project> sortProductByDay(int page, int limit);

    List<Project> sortAllProduct(int page, int limit);

    //众筹中
    int findProjectingPageCount();

    int findProjectWaitPageCount();

    int findProjectEndPageCount();

    //根据综合排序查询的产品   1.待众筹 2众筹中 3:完成众筹
    List<Project> sortProductingByAll(int page, int limit);

    List<Project> sortProductWaitByAll(int page, int limit);

    List<Project> sortProductENdByAll(int page, int limit);
    //根据天数查询的产品
    List<Project> sortProductingByDay(int page, int limit);

    List<Project> sortProductWaitByDay(int page, int limit);

    List<Project> sortProductENdByDay(int page, int limit);
    //根据金额查询的产品
    List<Project> sortProductingByMoney(int page, int limit);

    List<Project> sortProductWaitByMoney(int page, int limit);

    List<Project> sortProductENdByMoney(int page, int limit);
    //根据支持人数查询的产品
    List<Project> sortProductingBySup(int page, int limit);

    List<Project> sortProductWaitBySup(int page, int limit);

    List<Project> sortProductENdBySup(int page, int limit);

    Project selectProductById(int id);

    int deleteProjectByID(int id);
    
    List<Project> selectProductLikeName(String name, int page, int limit);

    int selectProductLikeNameSize(String name);

    List<Project> AdminListProjectByPageAndLimit(int page, int limit);

    int AdminfindProjectPageCount();
}
