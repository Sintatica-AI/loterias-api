package com.gutotech.loteriasapi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import java.util.Collections;

@SpringBootApplication
public class LoteriasApiApplication {

  public static void main(String[] args) {
    SpringApplication app = new SpringApplication(LoteriasApiApplication.class);
    app.setDefaultProperties(Collections
        .singletonMap("server.port", "8084"));
    app.run(args);
  }

}
