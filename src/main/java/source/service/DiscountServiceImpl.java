package source.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import source.DAO.DiscountDAO;
import source.converter.DiscountConverter;
import source.dto.DiscountDto;
import source.entity.DiscountEntity;
import source.iService.DiscountService;

import java.util.List;

@Service
public class DiscountServiceImpl implements DiscountService {

    @Autowired
    private DiscountDAO discountDAO;

    @Override
    public List<DiscountEntity> findByActiveFag() {
        return discountDAO.findByActiveFag();
    }

}
