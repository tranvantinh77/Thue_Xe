package source.DAO;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import source.entity.CarCompanyEntity;
import source.entity.CategoryEntity;

import java.util.List;

@Repository
public interface CategoryDAO extends JpaRepository<CategoryEntity,Long> {

    @Query(value = "select * from category where id =:id",nativeQuery = true)
    CategoryEntity findById1(@Param("id") Long id);

    @Query(value = "select * from category where active_fag = 0", nativeQuery = true)
    List<CategoryEntity> findByActiveFag(Pageable pageable);

    @Query(value = "select * from category where active_fag = 0", nativeQuery = true)
    List<CategoryEntity> findByActiveFag();

    @Query(value = "select * from category c where (c.active_fag=0) and (c.code like %:keyword% or c.name like %:keyword% )",nativeQuery = true)
    List<CategoryEntity> findByKeyword(@Param("keyword") String keyword, Pageable pageable);

    @Query(value = "select * from category c where (c.active_fag=0) and (c.code like %:keyword% or c.name like %:keyword% )",nativeQuery = true)
    List<CategoryEntity> findByKeyword(@Param("keyword") String keyword);
}
