package source.iService;

import org.springframework.data.domain.Pageable;
import source.entity.CirculationEntity;

import java.util.List;

public interface CirculationService {

    List<CirculationEntity> findByActiveFag(Pageable pageable);

    List<CirculationEntity> findByActiveFag();

    List<CirculationEntity> findByKeyword(String keyword, Pageable pageable);

    List<CirculationEntity> findByKeyword(String keyword);

    void save(CirculationEntity checkoutEntity);

}
