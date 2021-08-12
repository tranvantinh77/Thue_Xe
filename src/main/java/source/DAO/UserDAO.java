package source.DAO;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import source.entity.UserEntity;
import source.entity.UserEntity;
import source.entity.UserInfoEntity;

import java.util.List;

@Repository
public interface UserDAO extends JpaRepository<UserEntity,Long> {

    @Query(value = "select * from user where active_fag=0",nativeQuery = true)
    List<UserEntity> findByActiveFag(Pageable pageable);

    @Query(value = "select * from user where active_fag=0",nativeQuery = true)
    List<UserEntity> findByActiveFag();

    @Query(value = "SELECT *\n" +
            "FROM user u\n" +
            "INNER JOIN user_info us ON u.user_info_id_id = us.id\n" +
            "WHERE u.active_fag=0 AND  us.email LIKE %:keyword% OR us.name LIKE %:keyword%",nativeQuery = true)
    List<UserEntity> findByKeyword(@Param("keyword") String keyword, Pageable pageable);

    @Query(value = "SELECT *\n" +
            "FROM user u\n" +
            "INNER JOIN user_info us ON u.user_info_id_id = us.id\n" +
            "WHERE u.active_fag=0 AND  us.email LIKE %:keyword% OR us.name LIKE %:keyword%",nativeQuery = true)
    List<UserEntity> findByKeyword(@Param("keyword") String keyword);

    @Query(value = "select * from user where active_fag=0 and status=0 and user_name =:user_name",nativeQuery = true)
    UserEntity findByUserName(@Param("user_name") String user_name);

    @Query(value = "select * from user where active_fag=0 and id =:id",nativeQuery = true)
    UserEntity findById1 (@Param("id") Long id);

    @Query(value = "select * from user where user_name =:user_name and password =:password",nativeQuery = true)
    UserEntity findByUserNameAndPassword(@Param("user_name") String user_name,
                                @Param("password") String password);

    @Query(value = "select * from user where active_fag=0 and user_info_id_id =:user_info_id",nativeQuery = true)
    UserEntity findByUserInfoId (@Param("user_info_id") Long user_info_id);
}
