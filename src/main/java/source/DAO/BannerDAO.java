package source.DAO;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import source.entity.BannerEntity;

import java.util.List;

@Repository
public interface BannerDAO extends JpaRepository<BannerEntity, Long> {

    @Query(value = "select * from banner where id =:id",nativeQuery = true)
    BannerEntity findById1(@Param("id") Long id);

    @Query(value = "select * from banner where active_fag = 0", nativeQuery = true)
    List<BannerEntity> findByActiveFag(Pageable pageable);

    @Query(value = "select * from banner where active_fag = 0", nativeQuery = true)
    List<BannerEntity> findByActiveFag();

    @Query(value = "select * from banner carCom where (carCom.active_fag=0) and (carCom.code like %:keyword% or carCom.name like %:keyword% )",nativeQuery = true)
    List<BannerEntity> findByKeyword(@Param("keyword") String keyword, Pageable pageable);

    @Query(value = "select * from banner carCom where (carCom.active_fag=0) and (carCom.code like %:keyword% or carCom.name like %:keyword% )",nativeQuery = true)
    List<BannerEntity> findByKeyword(@Param("keyword") String keyword);
}
