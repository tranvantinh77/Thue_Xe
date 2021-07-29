package source.DAO;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import source.entity.UserInfoEntity;

import java.util.List;

@Repository
public interface UserInfoDAO extends JpaRepository<UserInfoEntity, Long> {

    @Query(value = "select * from user_info where active_fag = 0", nativeQuery = true)
    List<UserInfoEntity> findByActiveFag(Pageable pageable);

    @Query(value = "select * from user_info where active_fag = 0", nativeQuery = true)
    List<UserInfoEntity> findByActiveFag();

    @Query(value = "select * from user_info us where (us.active_fag=0) and (us.code like %:keyword% or us.name like %:keyword% or us.price_uscount like %:keyword%)",nativeQuery = true)
    List<UserInfoEntity> findByKeyword(@Param("keyword") String keyword, Pageable pageable);

    @Query(value = "select * from user_info us where (us.active_fag=0) and (us.code like %:keyword% or us.name like %:keyword% or us.price_uscount like %:keyword%)",nativeQuery = true)
    List<UserInfoEntity> findByKeyword(@Param("keyword") String keyword);

    @Query(value = "select * from user_info where active_fag=0 and email =:email",nativeQuery = true)
    UserInfoEntity findByEmail(@Param("email") String email);

    @Query(value = "select * from user_info where active_fag=0 and id =:id",nativeQuery = true)
    UserInfoEntity findById1 (@Param("id") Long id);
}
