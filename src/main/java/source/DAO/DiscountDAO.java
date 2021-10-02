package source.DAO;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import source.entity.CarCompanyEntity;
import source.entity.DiscountEntity;

import java.util.List;

@Repository
public interface DiscountDAO extends JpaRepository<DiscountEntity,Long> {

    @Query(value = "select * from discount where id =:id",nativeQuery = true)
    DiscountEntity findById1(@Param("id") Long id);

    @Query(value = "select * from discount where active_fag = 0", nativeQuery = true)
    List<DiscountEntity> findByActiveFag(Pageable pageable);

    @Query(value = "select * from discount where active_fag = 0", nativeQuery = true)
    List<DiscountEntity> findByActiveFag();

    @Query(value = "select * from discount dis where (dis.active_fag=0) and (dis.code like %:keyword% or dis.name like %:keyword% or dis.price_discount like %:keyword%)",nativeQuery = true)
    List<DiscountEntity> findByKeyword(@Param("keyword") String keyword, Pageable pageable);

    @Query(value = "select * from discount dis where (dis.active_fag=0) and (dis.code like %:keyword% or dis.name like %:keyword% or dis.price_discount like %:keyword%)",nativeQuery = true)
    List<DiscountEntity> findByKeyword(@Param("keyword") String keyword);

    @Query(value = "select * from discount where active_fag = 0 and status = 0", nativeQuery = true)
    List<DiscountEntity> findByDiscount();

}
