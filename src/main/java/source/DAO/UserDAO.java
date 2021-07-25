package source.DAO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import source.entity.UserEntity;

import java.util.List;

@Repository
public interface UserDAO extends JpaRepository<UserEntity,Long> {

    @Query(value = "select * from user where active_fag=0 order by status asc",nativeQuery = true)
    List<UserEntity> findByActiveFag();

    @Query(value = "select * from user where active_fag=0 and status=0 and user_name =:user_name",nativeQuery = true)
    UserEntity findByUserName(@Param("user_name") String user_name);

    @Query(value = "select * from user where active_fag=0 and id =:id",nativeQuery = true)
    UserEntity findById1 (@Param("id") Long id);

    @Query(value = "SELECT *\n" +
            "FROM user_infos us\n" +
            "WHERE (us.active_fag=0) AND  (us.full_name LIKE %:keyword% OR us.email LIKE %:keyword% OR us.phone LIKE %:keyword%)",nativeQuery = true)
    List<UserEntity> findByKeyword(@Param("keyword") String keyword);

    @Query(value = "select * from user where user_name =:user_name and password =:password",nativeQuery = true)
    UserEntity findByUserNameAndPassword(@Param("user_name") String user_name,
                                @Param("password") String password);
}
