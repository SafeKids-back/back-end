package com.safekid.userservice;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
@RestController
public class UserController {
    // test end-point delete it later
    @GetMapping("/ping")
    public String ping(){
        return "<h1>Back-end SafeKid project</h1>";
    }
}
