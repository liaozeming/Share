package com.lzm.controller;

import com.alibaba.fastjson.JSON;
import com.alipay.api.AlipayApiException;
import com.alipay.api.internal.util.AlipaySignature;
import com.lzm.service.OrderService;
import com.lzm.service.SupportService;
import com.lzm.utils.AlipayConfig;
import org.junit.platform.commons.logging.Logger;
import org.junit.platform.commons.logging.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * @author lzm
 * @create 2019- 07- 19- 17:45
 * 支付成功后的回调函数
 */
@Controller
public class AlipayCallbackController {
    @Autowired
    private OrderService orderService;
    @Autowired
    private SupportService supportService;

    private static Logger logger = LoggerFactory.getLogger(AlipayCallbackController.class);

    private ExecutorService executorService = Executors.newFixedThreadPool(20);

    /**
     * <pre>
     * 第一步:验证签名,签名通过后进行第二步
     * 第二步:按一下步骤进行验证
     * 1、商户需要验证该通知数据中的out_trade_no是否为商户系统中创建的订单号，
     * 2、判断total_amount是否确实为该订单的实际金额（即商户订单创建时的金额），
     * 3、校验通知中的seller_id（或者seller_email) 是否为out_trade_no这笔单据的对应的操作方（有的时候，一个商户可能有多个seller_id/seller_email），
     * 4、验证app_id是否为该商户本身。上述1、2、3、4有任何一个验证不通过，则表明本次通知是异常通知，务必忽略。
     * 在上述验证通过后商户必须根据支付宝不同类型的业务通知，正确的进行不同的业务处理，并且过滤重复的通知结果数据。
     * 在支付宝的业务通知中，只有交易通知状态为TRADE_SUCCESS或TRADE_FINISHED时，支付宝才会认定为买家付款成功。
     * </pre>
     *
     * @return
     */

    @RequestMapping("/alipay_callback.action")
    public String callback(HttpServletRequest request) {
        Map<String, String> params = convertRequestParamsToMap(request); // 将异步通知中收到的待验证所有参数都存放到map中
        String paramsJson = JSON.toJSONString(params);
        try {
            AlipayConfig alipayConfig = new AlipayConfig();// 支付宝配置
            // 调用SDK验证签名
            int i=1;
            boolean signVerified = AlipaySignature.rsaCheckV1(params, alipayConfig.alipay_public_key, alipayConfig.charset, alipayConfig.sign_type);
            if (signVerified) {
                //付款成功，将订单ispay设为1，并且在support表中添加记录
                //获取订单ID

                    String outTradeNo = params.get("out_trade_no");
                    orderService.uptateOrderByID(outTradeNo);
                    supportService.insertSupportByOrderID(outTradeNo);
                return "client/user-support";
            } else {
                return "/test/error";
            }
        } catch (AlipayApiException e) {
//            logger.error("支付宝回调签名认证失败,paramsJson:{},errorMsg:{}", paramsJson, e.getMessage());
            return "failure";
        }
    }

    // 将request中的参数转换成Map
    private static Map<String, String> convertRequestParamsToMap(HttpServletRequest request) {
        Map<String, String> retMap = new HashMap<String, String>();

        Set<Map.Entry<String, String[]>> entrySet = request.getParameterMap().entrySet();

        for (Map.Entry<String, String[]> entry : entrySet) {
            String name = entry.getKey();
            String[] values = entry.getValue();
            int valLen = values.length;

            if (valLen == 1) {
                retMap.put(name, values[0]);
            } else if (valLen > 1) {
                StringBuilder sb = new StringBuilder();
                for (String val : values) {
                    sb.append(",").append(val);
                }
                retMap.put(name, sb.toString().substring(1));
            } else {
                retMap.put(name, "");
            }
        }

        return retMap;
    }






}
