package source.DAO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import source.entity.RoleEntity;

@Repository
public interface RoleDAO extends JpaRepository<RoleEntity, Long> {

    @Query(value = "select * from role where active_fag=0 and role_name ='ROLE_ADMIN'",nativeQuery = true)
    RoleEntity findByRoleAddmin();
}
