package source.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import source.DAO.DiscountDAO;
import source.entity.DiscountEntity;
import source.iService.DiscountService;

import java.util.List;

@Service
public class DiscountServiceImpl implements DiscountService {

    @Autowired
    private DiscountDAO discountDAO;

    @Override
    public List<DiscountEntity> findByActiveFag(Pageable pageable) {
        return discountDAO.findByActiveFag(pageable);
    }

    @Override
    public List<DiscountEntity> findByActiveFag() {
        return discountDAO.findByActiveFag();
    }

    @Override
    public List<DiscountEntity> findByKeyword(String keyword, Pageable pageable) {
        return discountDAO.findByKeyword(keyword,pageable);
    }

    @Override
    public List<DiscountEntity> findByKeyword(String keyword) {
        return discountDAO.findByKeyword(keyword);
    }

    @Override
    public void save(DiscountEntity discountEntity) {
        discountDAO.save(discountEntity);
    }

    @Override
    public DiscountEntity findById(Long id) {
        return discountDAO.findById1(id);
    }
}
