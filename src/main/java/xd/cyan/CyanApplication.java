package xd.cyan;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.WebApplicationType;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * @copyright Copyright (c) 2020
 * @description core启动类
 * @email zzmaolin@gmail.com
 * @author  maolin
 * @date  2020/4/15 18:29
 */
@EnableAsync
@SpringBootApplication
@EnableTransactionManagement
@MapperScan(value = "xd.cyan.core.*.mapper")
public class CyanApplication {

    public static void main(String[] args) {
        new SpringApplicationBuilder(CyanApplication.class)
                .web(WebApplicationType.SERVLET)
                .run(args);
    }
}
