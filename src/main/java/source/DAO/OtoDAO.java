package source.DAO;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import source.entity.OtoEntity;

import java.util.List;

@Repository
public interface OtoDAO extends JpaRepository<OtoEntity, Long> {

    @Query(value = "select * from oto where id =:id",nativeQuery = true)
    OtoEntity findById1(@Param("id") Long id);

    @Query(value = "select * from oto where active_fag = 0", nativeQuery = true)
    List<OtoEntity> findByActiveFag(Pageable pageable);

    @Query(value = "select * from oto where active_fag = 0", nativeQuery = true)
    List<OtoEntity> findByActiveFag();

    @Query(value = "SELECT *\n" +
            "FROM oto oto\n" +
            "INNER JOIN car_company car_company ON oto.car_company_id_id = car_company.id\n" +
            "INNER JOIN category category ON oto.category_id_id = category.id\n" +
            "WHERE oto.active_fag=0 AND  oto.name LIKE %:keyword% OR oto.name like %:keyword% OR oto.price like %:keyword% OR oto.license_plates like %:keyword% " +
            "OR car_company.name like %:keyword% OR category.name like %:keyword%",nativeQuery = true)
    List<OtoEntity> findByKeyword(@Param("keyword") String keyword, Pageable pageable);

    @Query(value = "SELECT *\n" +
            "FROM oto oto\n" +
            "INNER JOIN car_company car_company ON oto.car_company_id_id = car_company.id\n" +
            "INNER JOIN category category ON oto.category_id_id = category.id\n" +
            "WHERE oto.active_fag=0 AND  oto.name LIKE %:keyword% OR oto.name like %:keyword% OR oto.price like %:keyword% OR oto.license_plates like %:keyword% " +
            "OR car_company.name like %:keyword% OR category.name like %:keyword%",nativeQuery = true)
    List<OtoEntity> findByKeyword(@Param("keyword") String keyword);

    @Query(value = "select * from oto where active_fag = 0 and car_company_id_id =:carCompany", nativeQuery = true)
    List<OtoEntity> findByCarCompany(int carCompany);

    @Query(value = "select * from oto where active_fag = 0 and category_id_id =:category", nativeQuery = true)
    List<OtoEntity> findByCategory(int category);
}
