package com.example.demo.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DemoController {
    
    @Autowired
    public DemoController() {
    }

    @GetMapping("/ping")
    public String ping() {
        return "pong";
    }

}
