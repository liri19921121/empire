package com;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.SpringBootConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.scheduling.annotation.EnableScheduling;


@SpringBootApplication
//启用定时任务的配置

@EnableScheduling
//@SpringBootConfiguration继承自@Configuration，二者功能也一致，标注当前类是配置类
//并会将当前类内声明的一个或多个以@Bean注解标记的方法的实例纳入到srping容器中，并且实例名就是方法名。
//当需要用到测试用例的时候必须要有这个
@SpringBootConfiguration

//为了让@Async注解能够生效，还需要在Spring Boot的主程序中配置@EnableAsync
@EnableAsync
public class Application {

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
}
