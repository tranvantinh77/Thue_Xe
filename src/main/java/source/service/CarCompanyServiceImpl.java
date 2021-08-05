package source.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import source.DAO.CarCompanyDAO;
import source.entity.CarCompanyEntity;
import source.iService.CarCompanyService;

import java.util.List;

@Service
public class CarCompanyServiceImpl implements CarCompanyService {
    @Autowired
    private CarCompanyDAO carCompanyDAO;

    @Override
    public List<CarCompanyEntity> findByActiveFag(Pageable pageable) {
        return carCompanyDAO.findByActiveFag(pageable);
    }

    @Override
    public List<CarCompanyEntity> findByActiveFag() {
        return carCompanyDAO.findByActiveFag();
    }

    @Override
    public List<CarCompanyEntity> findByKeyword(String keyword, Pageable pageable) {
        return carCompanyDAO.findByKeyword(keyword, pageable);
    }

    @Override
    public List<CarCompanyEntity> findByKeyword(String keyword) {
        return findByKeyword(keyword);
    }

    @Override
    public void save(CarCompanyEntity carCompanyEntity) {
        carCompanyDAO.save(carCompanyEntity);

    }

    @Override
    public CarCompanyEntity findById(Long id) {
        return carCompanyDAO.findById1(id);
    }
}
