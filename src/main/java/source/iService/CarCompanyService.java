package source.iService;

import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import source.entity.CarCompanyEntity;
import source.entity.OtoEntity;

import java.util.List;

public interface CarCompanyService {
    List<CarCompanyEntity> findByActiveFag(Pageable pageable);

    List<CarCompanyEntity> findByActiveFag();

    List<CarCompanyEntity> findByKeyword(String keyword, Pageable pageable);

    List<CarCompanyEntity> findByKeyword(String keyword);

    void save(CarCompanyEntity carCompanyEntity);

    List<CarCompanyEntity> findByCarCompany();

    CarCompanyEntity findById(Long id);
}
