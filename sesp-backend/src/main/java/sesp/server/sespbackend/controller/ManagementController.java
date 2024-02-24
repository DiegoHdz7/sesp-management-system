package sesp.server.sespbackend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import sesp.server.sespbackend.model.ManagementUser;
import sesp.server.sespbackend.service.ManagementUserService;

@RestController
public class ManagementController {

    @Autowired
    ManagementUserService managementUserService;


    @RequestMapping(value = "/management-users", method = RequestMethod.GET)
    public Iterable<ManagementUser> getBloodBanks() {
        return managementUserService.getManagementUsers();
    }
}
