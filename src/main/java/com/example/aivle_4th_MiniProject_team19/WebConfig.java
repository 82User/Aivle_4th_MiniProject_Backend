package com.example.aivle_4th_MiniProject_team19;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {

    @Value("${image.upload-dir}")
    private String uploadDir;

    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**")                                      // 모든 API 경로
                .allowedOrigins(                                        // 허용할 출처 (URL)
                        "http://localhost:3000",
                        "http://localhost:5173",
                        "http://a086131-front-website.s3-website-ap-southeast-1.amazonaws.com"
                )
                .allowedMethods("GET", "POST", "PUT","PATCH", "DELETE") // HTTP 메서드 허용
                .allowedHeaders("*")                                    // 모든 헤더 허용
                .allowCredentials(false);                                // 쿠키 인증 요청 허용
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {

        registry.addResourceHandler("/images/**")
                .addResourceLocations("file:" + uploadDir + "/");
    }
}
