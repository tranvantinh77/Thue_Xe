package source.DAO;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import source.entity.CirculationEntity;

import java.util.List;

@Repository
public interface CirculationDAO extends JpaRepository<CirculationEntity, Long> {

    @Query(value = "select * from circulation where id =:id",nativeQuery = true)
    CirculationEntity findById1(@Param("id") Long id);

    @Query(value = "select * from circulation where active_fag = 0", nativeQuery = true)
    List<CirculationEntity> findByActiveFag(Pageable pageable);

    @Query(value = "select * from circulation where active_fag = 0", nativeQuery = true)
    List<CirculationEntity> findByActiveFag();

    @Query(value = "SELECT *\n" +
            "FROM circulation\n" +
            "JOIN oto\n" +
            "  ON circulation.oto_id_id = oto.id\n" +
            "JOIN category\n" +
            "  ON category.id = oto.category_id_id\n" +
            "JOIN user\n" +
            "  ON circulation.user_id_id = user.id\n" +
            "JOIN user_info\n" +
            "  ON user_info.id = user.user_info_id_id\n" +
            "WHERE circulation.active_fag =0 AND user_info.name LIKE %:keyword% OR category.name LIKE %:keyword% OR oto.name LIKE %:keyword%",nativeQuery = true)
    List<CirculationEntity> findByKeyword(@Param("keyword") String keyword, Pageable pageable);

    @Query(value = "SELECT *\n" +
            "FROM circulation\n" +
            "JOIN oto\n" +
            "  ON circulation.oto_id_id = oto.id\n" +
            "JOIN category\n" +
            "  ON category.id = oto.category_id_id\n" +
            "JOIN user\n" +
            "  ON circulation.user_id_id = user.id\n" +
            "JOIN user_info\n" +
            "  ON user_info.id = user.user_info_id_id\n" +
            "WHERE circulation.active_fag =0 AND user_info.name LIKE %:keyword% OR category.name LIKE %:keyword% OR oto.name LIKE %:keyword%",nativeQuery = true)
    List<CirculationEntity> findByKeyword(@Param("keyword") String keyword);

}
