package source.DAO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import source.entity.DiscountEntity;

import java.util.List;

@Repository
public interface DiscountDAO extends JpaRepository<DiscountEntity,Long> {

    @Query(value = "select * from discount where active_fag = 0", nativeQuery = true)
    List<DiscountEntity> findByActiveFag();

}
