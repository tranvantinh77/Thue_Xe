package source.DAO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import source.entity.CategoryEntity;

import java.util.List;

@Repository
public interface CategoryDAO extends JpaRepository<CategoryEntity,Long> {

    @Query(value = "select * from category where active_fag = 0", nativeQuery = true)
    List<CategoryEntity> findByActiveFag();
}
