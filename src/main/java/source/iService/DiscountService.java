package source.iService;

import source.dto.DiscountDto;
import source.entity.DiscountEntity;

import java.util.List;

public interface DiscountService {
    List<DiscountEntity> findByActiveFag();

}
