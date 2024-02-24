package sesp.server.sespbackend.service;

import org.springframework.stereotype.Service;
import sesp.server.sespbackend.model.ManagementUser;

@Service
public class ManagementUserService implements ManagementUserInterface {
    @Override
    public Iterable<ManagementUser> getManagementUsers() {
        return null;
    }
}
