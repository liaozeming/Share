package com.lzm.utils;

import org.springframework.stereotype.Controller;

import java.io.FileWriter;
import java.io.IOException;

/**
 * @author lzm
 * @create 2019- 07- 19- 10:29
 */
@Controller
public class AlipayConfig {

    //↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

    // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
    public static String app_id = "2016101000654237";

    // 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCQquXa8ZWaCHvQrIBwl3HGAxOTh34QSDZjb9/GGaImrcwaU3R+c4zkzacnBEv3HADDmqly7oNxk7BcwmDBctEw///jQ5sqTPYWXmmVztaI3O3HQ7AbYCB721/3gxImD5J206CXpWbyelst8/VKzCr5Hnn+1u6B1XnpjCfvZHZoURP+E4ZUPkPzM67h/uYJLAwHl9aupW7K4al0M+6YO1RF/Z18SkTY44sjEBUP/gqLn88d+ldBAr4/WiwdGSq/PT6Yunuq+smMVkap3YNP5ZwF/gH2eyoqiN8ZORBP8XFE/vlwvJZKfRD7FPpamTo41Rqz/PPz2i9eC6yEUGWITozbAgMBAAECggEBAIVeuIfPvu8BsTwhPEwQopg9j9eryyGxoUqtAe09BouIIKmIlNZbKuJpYheLU4leLKooNN27XDziPm5V2SOe+ZKmAD+BvVQTHbBjnA27YXdNznytP3cNeQUWqvOhx6KFKq8XzW7g0vbqrJLB3Tr23QtL+IZjmgDiUQFp8As4YB0sbkkBsyZbNxE9SpkIelD4En7Xoic1/YhYizD9+Hv2AbhHD6I+5BVw9qGHGg4Rt3xQJtLvMB1BhmBsMX27v00A7uu5tQHvwIelRc3D7xwAsv1nSKq5ANGvSeCtOnWBxCxSemn2jdXSlhIF06aTQN/L2NqJ4SpAVhp8E8XWeLp46XkCgYEA8TJlFn1jcodLo73Vm0KC3w82eaCv02R4l7rZNtGpMdxbZ6IdnI+QwSlZzcd62jLuVCs16ZuQF8dAjRwFTgND8V7HW26O3n3CVKlfSIjqzxz26VUd1XYw5d39KDN72BymLtBxDqbnVKZ8eTiwnwgQmG7gLP94enpzfj8uXRe9mP0CgYEAmYvd6I7AOFnVcYU4P1wEJM0v39um54a0ghSiD00gKaGj59M9iEHG5stA6/CJ+oF7HjPaXiDTGbWbeaaDZiB2r4LVUKIot1Zlr+7Z22AgHLcWnt17TCSFEyqruycUrS1ri8I+HbkiBYK703p1r7B0AGs53sVK+00y2H/OlNGN8LcCgYEAovqmi/fWRwFc/xu7Rto+jHM/IBiQNothYUWEmSI67dI0gWZuE+h+q8dBQ2dTgDWCDaXVHDFdwHOHDtKsUvap5mNg2ktuhrD7qzF3jQ/XenPb8/br3d2rVOgXtB51xKY3NNLsUjY9glmtKkxALHXKoPXqzP0jb79mYxxWO9la6BECgYBEPm36lrfIU+UR92vwfS06ThghHrcn4C8KQbFlq5nH5xe6SaDnlpSYr23Db71joXjfC5zaiSxKGPVpNCDimzsk9rlohSojkjrP3xDk9+xN1vIu2bGbPgAHbMe2/r+p2K4cB9Ej1MzSNjDU5XC5DWwBY6bs5DNXThBzORrP+fNkMQKBgHgDj5YiZLtybYuT+UrLisuhhzOzkSBtFbX5d1cj079oe3F7tKoMk4MguTUpsGgJkVq+jEv/euKCd1kvMyuXVsLrnpPAy8SaVduJIizaWDQwR3VQHBXXCSs4Acc3qq1zz52DVIOl7lYaIbd0Li3627C4NUo0aPvOGbhs+TiIR8dW";

    // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAik6rnRbRNKU1RxZ2qjc26qlxmhqOqcUbuWpvgXMoAGQQ1BHnrAHTKCsaPRs3g6FebkV4THPh7+0HAjBy7Z70HrM4jxsJkGhNy1yIk3hAVKUyZ8LGY9YiDWFnKIBVgK1VdCZp8jta3J1dmIJ9+Q+sDnDVdxAIE0lKhH/EHCvGHdeCSBCjgkinly3rRrQXqr3e4dD7RPLUNpkqeUoCSUPauEXaOM4I1G1hcJ/0fnYKqKK5tc6F1ypLUxYK4Uxv11oGfH1FXf7JizU++aHjj+6QQ6nKg4Oy9XAIfKuDPA/tUz5T9GiD83lVA2ZH4LCvuS76Ej3LEw+L1/fqxAAO9BSrpQIDAQAB";

    // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String notify_url = "http://www.liaozeming.cn:8080/Share/alipay_callback.action";

//    public static String notify_url = "http://localhost:8080/Share/alipay_callback.action";

    // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String return_url = "http://www.liaozeming.cn:8080/Share/alipay_callback.action";

//    public static String return_url = "http://localhost:8080/Share/alipay_callback.action";
    // 签名方式
    public static String sign_type = "RSA2";

    // 字符编码格式
    public static String charset = "utf-8";

    // 支付宝网关
    public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

    // 支付宝网关
    public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /**
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
