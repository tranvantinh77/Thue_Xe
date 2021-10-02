package source.DAO;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import source.entity.BannerEntity;
import source.entity.CarCompanyEntity;
import source.entity.DiscountEntity;
import source.entity.OtoEntity;

import java.util.List;

@Repository
public interface CarCompanyDAO extends JpaRepository<CarCompanyEntity, Long> {
    @Query(value = "select * from car_company where id =:id",nativeQuery = true)
    CarCompanyEntity findById1(@Param("id") Long id);

    @Query(value = "select * from car_company where active_fag = 0", nativeQuery = true)
    List<CarCompanyEntity> findByActiveFag(Pageable pageable);

    @Query(value = "select * from car_company where active_fag = 0", nativeQuery = true)
    List<CarCompanyEntity> findByActiveFag();

    @Query(value = "select * from car_company carCom where (carCom.active_fag=0) and (carCom.code like %:keyword% or carCom.name like %:keyword% )",nativeQuery = true)
    List<CarCompanyEntity> findByKeyword(@Param("keyword") String keyword, Pageable pageable);

    @Query(value = "select * from car_company carCom where (carCom.active_fag=0) and (carCom.code like %:keyword% or carCom.name like %:keyword% )",nativeQuery = true)
    List<CarCompanyEntity> findByKeyword(@Param("keyword") String keyword);

    @Query(value = "select * from car_company where active_fag = 0 and status = 0", nativeQuery = true)
    List<CarCompanyEntity> findByCarCompany();
}
