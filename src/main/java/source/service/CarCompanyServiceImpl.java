package source.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import source.DAO.CarCompanyDAO;
import source.entity.CarCompanyEntity;
import source.entity.OtoEntity;
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

        return carCompanyDAO.findByKeyword(keyword);
    }

    @Override
    public void save(CarCompanyEntity carCompanyEntity) {
        carCompanyDAO.save(carCompanyEntity);

    }

    @Override
    public List<CarCompanyEntity> findByCarCompany() {
        return carCompanyDAO.findByCarCompany();
    }

//    @Override
//    public List<CarCompanyEntity> findAll() {
//        return carCompanyDAO.findAll();
//    }

    @Override
    public CarCompanyEntity findById(Long id) {

        return carCompanyDAO.findById1(id);
    }
}
