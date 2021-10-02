package source.iService;

import org.springframework.data.domain.Pageable;
import source.entity.CheckoutEntity;

import java.util.List;

public interface CheckoutService {

    List<CheckoutEntity> findByActiveFag(Pageable pageable);

    List<CheckoutEntity> findByActiveFag();

    List<CheckoutEntity> findByKeyword(String keyword, Pageable pageable);

    List<CheckoutEntity> findByKeyword(String keyword);

    void save(CheckoutEntity checkoutEntity);

    CheckoutEntity findById(Long id);

    List<CheckoutEntity> findByStatus();

    List<CheckoutEntity> findByCheckout(int oto);
}
