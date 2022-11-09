package bd.gov.barcapps.cms.controller;

import bd.gov.barcapps.cms.model.UsersInfo;
import bd.gov.barcapps.cms.service.impl.UsersInfoServiceImpl;
import lombok.RequiredArgsConstructor;
import org.apache.catalina.User;
import org.springframework.web.bind.annotation.*;

import java.math.BigInteger;
import java.util.List;

@RestController
@RequestMapping("/api/v1")
@RequiredArgsConstructor
public class TestController {

    private final UsersInfoServiceImpl usersInfoServiceImpl;

    @GetMapping("/test/{name}")
    public String getTestResponse(@PathVariable("name") String name){
        return "Hello " + name +" Spring";
    }

    @GetMapping("/getUserById/{id}")
    public UsersInfo getUserById(@PathVariable("id")BigInteger id){
        return usersInfoServiceImpl.getUserById(id);
    }

    @PostMapping("/addUser")
    public String addUser(@RequestBody UsersInfo usersInfo){

        return usersInfoServiceImpl.adduser(usersInfo);
    }

    @PostMapping("/addMultipleUsers")
    public String addMultipleUsers(@RequestBody List<UsersInfo> usersInfoList){
        return usersInfoServiceImpl.addMultipleUsers(usersInfoList);
    }
}
