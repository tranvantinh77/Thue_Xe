package source.DAO;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import source.entity.CheckoutEntity;
import source.entity.OtoEntity;

import java.util.List;

@Repository
public interface CheckoutDAO extends JpaRepository<CheckoutEntity, Long> {

    @Query(value = "select * from checkout where id =:id",nativeQuery = true)
    CheckoutEntity findById1(@Param("id") Long id);

    @Query(value = "select * from checkout where active_fag = 0", nativeQuery = true)
    List<CheckoutEntity> findByActiveFag(Pageable pageable);

    @Query(value = "select * from checkout where active_fag = 0", nativeQuery = true)
    List<CheckoutEntity> findByActiveFag();

    @Query(value = "SELECT *\n" +
            "FROM checkout\n" +
            "JOIN oto\n" +
            "  ON checkout.oto_id_id = oto.id\n" +
            "JOIN category\n" +
            "  ON category.id = oto.category_id_id\n" +
            "JOIN user\n" +
            "  ON checkout.user_id_id = user.id\n" +
            "JOIN user_info\n" +
            "  ON user_info.id = user.user_info_id_id\n" +
            "WHERE checkout.active_fag =0 AND user_info.name LIKE %:keyword% OR category.name LIKE %:keyword% OR oto.name LIKE %:keyword%",nativeQuery = true)
    List<CheckoutEntity> findByKeyword(@Param("keyword") String keyword, Pageable pageable);

    @Query(value = "SELECT *\n" +
            "FROM checkout\n" +
            "JOIN oto\n" +
            "  ON checkout.oto_id_id = oto.id\n" +
            "JOIN category\n" +
            "  ON category.id = oto.category_id_id\n" +
            "JOIN user\n" +
            "  ON checkout.user_id_id = user.id\n" +
            "JOIN user_info\n" +
            "  ON user_info.id = user.user_info_id_id\n" +
            "WHERE checkout.active_fag =0 AND user_info.name LIKE %:keyword% OR category.name LIKE %:keyword% OR oto.name LIKE %:keyword%",nativeQuery = true)
    List<CheckoutEntity> findByKeyword(@Param("keyword") String keyword);

    @Query(value = "select * from checkout where active_fag=0 and status > 0",nativeQuery = true)
    List<CheckoutEntity> findByStatus();

    @Query(value = "select * from checkout where active_fag = 0 and oto_id_id =:oto", nativeQuery = true)
    List<CheckoutEntity> findByCheckout(int oto);
}
