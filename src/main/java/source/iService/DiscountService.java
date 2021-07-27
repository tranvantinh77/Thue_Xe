package source.iService;

import org.springframework.data.domain.Pageable;
import source.entity.DiscountEntity;

import java.util.List;

public interface DiscountService {

    List<DiscountEntity> findByActiveFag(Pageable pageable);

    List<DiscountEntity> findByActiveFag();

    List<DiscountEntity> findByKeyword(String keyword, Pageable pageable);

    List<DiscountEntity> findByKeyword(String keyword);

}
