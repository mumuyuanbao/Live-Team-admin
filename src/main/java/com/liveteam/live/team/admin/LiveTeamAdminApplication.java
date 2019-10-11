package com.liveteam.live.team.admin;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages = {"com.liveteam.live.team.admin.mapper"})
public class LiveTeamAdminApplication {

    public static void main(String[] args) {
        SpringApplication.run(LiveTeamAdminApplication.class, args);
    }

}
