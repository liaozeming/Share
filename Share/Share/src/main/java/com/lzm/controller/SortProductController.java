package com.lzm.controller;

import com.lzm.pojo.Project;
import com.lzm.service.ProjectService;
import com.lzm.utils.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.ws.rs.POST;
import java.util.List;

/**
 * @author lzm
 * @create 2019- 07- 15- 8:57
 */
@Controller
public class SortProductController {

    @Autowired
    private  ProjectService projectService;

    //综合排序
    @RequestMapping(value="/SortProductByAll.action",method = RequestMethod.POST)
    @ResponseBody
    public PageResult<List<Project>> SortProductByAll(int page , int limit,int compositor,int condition) {
        List<Project> projectList = null;
        int count = 0;
        //会自动传入limit和page
        System.out.println("11111111111111111111111111111111111111111111111111");
        System.out.println(page);
        System.out.println(limit);
//        根据status来判断排序的种类
        switch (compositor)
        {
            case 1:
                switch (condition)
                {
                    case 1:
                        //综合排序
                        //     分页查询，需要参数code（要为0，不然数据表格数据显示不出）,msg（返回的消息），data(表格显示的数据)，totals(查询到数据的总记录数)，
                        projectList = projectService.sortProductByAll(page, limit);
                        //返回的总记录数
                        count = projectService.findProjectPageCount();
                        break;
                    case 2:
                        //综合排序+众筹中
                        //     分页查询，需要参数code（要为0，不然数据表格数据显示不出）,msg（返回的消息），data(表格显示的数据)，totals(查询到数据的总记录数)，
                        projectList = projectService.sortProductingByAll(page, limit);
                        //返回众筹中的总记录数
                        count = projectService.findProjectingPageCount();
                        break;
                    case 3:
                        //综合排序 即将开始
                        //     分页查询，需要参数code（要为0，不然数据表格数据显示不出）,msg（返回的消息），data(表格显示的数据)，totals(查询到数据的总记录数)，
                        projectList = projectService.sortProductWaitByAll(page, limit);
                        //返回的即将开始总记录数
                        count = projectService.findProjectWaitPageCount();
                        break;
                    case 4:
                        //综合排序 众筹完成
                        //     分页查询，需要参数code（要为0，不然数据表格数据显示不出）,msg（返回的消息），data(表格显示的数据)，totals(查询到数据的总记录数)，
                        projectList = projectService.sortProductENdByAll(page, limit);
                        //返回的众筹完成总记录数
                        count = projectService.findProjectEndPageCount();
                        break;
                        default:break;
                }
             break;

            case 2:
                switch (condition)
                {
                    //最新上线
                    case 1:
                        //最新上线
                        projectList = projectService.sortProductByDay(page, limit);
                        //返回的总记录数
                        count = projectService.findProjectPageCount();
                        break;
                        //最新上线+众筹中
                    case 2:
                        projectList = projectService.sortProductingByDay(page, limit);
                        //返回众筹中的总记录数
                        count = projectService.findProjectingPageCount();
                        break;
                    //最新上线+即将开始
                    case 3:
                        projectList = projectService.sortProductWaitByDay(page, limit);
                        count = projectService.findProjectWaitPageCount();
                        break;
                    //最新上线+完成
                    case 4:
                        projectList = projectService.sortProductENdByDay(page, limit);
                        count = projectService.findProjectEndPageCount();
                        break;
                        default:break;
                }
            break;


            case 3:

                switch (condition)
                {
                    //根据最高金额排序
                    case 1:
                        //根据最高金额排序
                        projectList = projectService.sortProductByMoney(page, limit);
                        //返回的总记录数
                        count = projectService.findProjectPageCount();
                        break;
                    //根据最高金额排序+众筹中
                    case 2:
                        projectList = projectService.sortProductingByMoney(page, limit);
                        count = projectService.findProjectingPageCount();
                        break;
                    //根据最高金额排序+即将开始
                    case 3:
                        projectList = projectService.sortProductWaitByMoney(page, limit);
                        count = projectService.findProjectWaitPageCount();
                        break;
                    //根据最高金额排序+完成
                    case 4:
                        projectList = projectService.sortProductENdByMoney(page, limit);
                        count = projectService.findProjectEndPageCount();
                        break;
                    default:break;
                }

            break;

            case 4:
                switch (condition)
                {
                    //根据 //最多支持
                    case 1:
                        //最多支持
                        projectList = projectService.sortProductBySup(page, limit);
                        //返回的总记录数
                        count = projectService.findProjectPageCount();
                        break;
                     //最多支持+众筹中
                    case 2:
                        projectList = projectService.sortProductingBySup(page, limit);
                        count = projectService.findProjectingPageCount();
                        break;
                    //最多支持+即将开始
                    case 3:
                        projectList = projectService.sortProductWaitBySup(page, limit);
                        count = projectService.findProjectWaitPageCount();
                        break;
                    //最多支持+完成
                    case 4:
                        projectList = projectService.sortProductENdBySup(page, limit);
                        count = projectService.findProjectEndPageCount();
                        break;
                    default:break;
                }
            break;

           default:break;
        }

        PageResult<List<Project>> listPageResult = new PageResult<List<Project>>("", projectList, 0, count);
        return listPageResult;
    }
}
