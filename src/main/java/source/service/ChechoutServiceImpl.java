package source.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import source.DAO.CheckoutDAO;
import source.entity.CheckoutEntity;
import source.iService.CheckoutService;

import java.util.List;

@Service
public class ChechoutServiceImpl implements CheckoutService {

    @Autowired
    private CheckoutDAO checkoutDAO;

    @Override
    public List<CheckoutEntity> findByActiveFag(Pageable pageable) {
        return checkoutDAO.findByActiveFag(pageable);
    }

    @Override
    public List<CheckoutEntity> findByActiveFag() {
        return checkoutDAO.findByActiveFag();
    }

    @Override
    public List<CheckoutEntity> findByKeyword(String keyword, Pageable pageable) {
        return checkoutDAO.findByKeyword(keyword,pageable);
    }

    @Override
    public List<CheckoutEntity> findByKeyword(String keyword) {
        return checkoutDAO.findByKeyword(keyword);
    }

    @Override
    public void save(CheckoutEntity checkoutEntity) {
        checkoutDAO.save(checkoutEntity);
    }

    @Override
    public CheckoutEntity findById(Long id) {
        return checkoutDAO.findById1(id);
    }

    @Override
    public List<CheckoutEntity> findByStatus() {
        return checkoutDAO.findByStatus();
    }
}
