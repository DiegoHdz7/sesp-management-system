package sesp.server.sespbackend.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import sesp.server.sespbackend.model.ManagementUser;


@Repository
public interface ManagementUsersRepository extends CrudRepository<ManagementUser, Integer> {
}