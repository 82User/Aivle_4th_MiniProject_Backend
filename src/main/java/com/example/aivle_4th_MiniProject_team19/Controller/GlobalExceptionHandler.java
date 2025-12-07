package com.example.aivle_4th_MiniProject_team19.Controller;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(IllegalArgumentException.class)
    public ApiResponse<?> handleIllegalArgument(IllegalArgumentException e) {
        return ApiResponse.of(HttpStatus.BAD_REQUEST, e.getMessage(), null);

    }
}
