package source.iService;

import org.springframework.data.domain.Pageable;
import source.entity.OtoEntity;

import java.util.List;

public interface OtoService {

    List<OtoEntity> findByActiveFag(Pageable pageable);

    List<OtoEntity> findByActiveFag();

    List<OtoEntity> findAll();

    List<OtoEntity> findByKeyword(String keyword, Pageable pageable);

    List<OtoEntity> findByKeyword(String keyword);

    void save(OtoEntity otoEntity);

    OtoEntity findById(Long id);
}
