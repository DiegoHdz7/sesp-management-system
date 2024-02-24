package sesp.server.sespbackend.service;

import sesp.server.sespbackend.model.ManagementUser;

public interface ManagementUserInterface {
     Iterable<ManagementUser> getManagementUsers();
}
