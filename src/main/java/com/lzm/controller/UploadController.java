package com.lzm.controller;

import com.lzm.pojo.ImgResult;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/**
 * @author lzm
 * @create 2019- 07- 11- 23:19
 */
@Controller
public class UploadController {
    //    上传图片
    @RequestMapping(value = "/picture/upload.action",method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> fileupload(@RequestParam("file") MultipartFile file) throws IOException {
        Map<String, Object> map = new HashMap<>();
        map.put("code", 1);
        if (file != null && file.getOriginalFilename() != null && file.getOriginalFilename().length() > 0) {
            String filepath="D:\\upload\\";
            //服务器上路径
//               String filepath="/upload/";
            String originalFilename = file.getOriginalFilename();
            //扩展名
            String extendName = originalFilename.substring(originalFilename.indexOf("."));
            String newfilename = UUID.randomUUID().toString() + extendName;
            File uploadfile = new File(filepath + newfilename);
            file.transferTo(uploadfile);
            map.put("data", newfilename);
            map.put("code", 0);
        }
        return map;
    }


//多图片上传
    @SuppressWarnings("deprecation")
    @RequestMapping("/MultipleUpload.action")
    @ResponseBody
    public ImgResult uplpad(MultipartFile file, HttpServletRequest request) {
        String desFilePath = "";
        String oriName = "";
        ImgResult result = new ImgResult();
        Map<String, String> dataMap = new HashMap<>();
        ImgResult imgResult = new ImgResult();
        try {
            // 1.获取原文件名
            oriName = file.getOriginalFilename();
            // 2.获取原文件图片后缀，以最后的.作为截取(.jpg)
            String extName = oriName.substring(oriName.lastIndexOf("."));
            // 3.生成自定义的新文件名，这里以UUID.jpg|png|xxx作为格式（可选操作，也可以不自定义新文件名）
            String uuid = UUID.randomUUID().toString();
            String newName = uuid + extName;
            // 4.获取要保存的路径文件夹
           String realPath="D:\\upload\\";
//           String realPath="/upload/";
            // 5.保存
            desFilePath = realPath + "\\" + newName;
            File desFile = new File(desFilePath);
            file.transferTo(desFile);
            System.out.println(desFilePath);
            // 6.返回保存结果信息
            result.setCode(0);
            dataMap = new HashMap<>();
            dataMap.put("src", newName);
            result.setData(dataMap);
            result.setMsg(oriName + "上传成功！");
            return result;
        } catch (IllegalStateException e) {
            imgResult.setCode(1);
            System.out.println(desFilePath + "图片保存失败");
            return imgResult;
        } catch (IOException e) {
            imgResult.setCode(1);
            System.out.println(desFilePath + "图片保存失败--IO异常");
            return imgResult;
        }
    }
}
