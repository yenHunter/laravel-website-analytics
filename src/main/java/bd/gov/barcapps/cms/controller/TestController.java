package bd.gov.barcapps.cms.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1")
public class TestController {

    @GetMapping("/test/{name}")
    public String getTestResponse(@PathVariable("name") String name){
        return "Hello " + name +" Spring";
    }
}
