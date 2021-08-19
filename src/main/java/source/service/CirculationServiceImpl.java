package source.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import source.DAO.CirculationDAO;
import source.entity.CirculationEntity;
import source.iService.CirculationService;

import java.util.List;

@Service
public class CirculationServiceImpl implements CirculationService {

    @Autowired
    private CirculationDAO circulationDAO;

    @Override
    public List<CirculationEntity> findByActiveFag(Pageable pageable) {
        return circulationDAO.findByActiveFag(pageable);
    }

    @Override
    public List<CirculationEntity> findByActiveFag() {
        return circulationDAO.findByActiveFag();
    }

    @Override
    public List<CirculationEntity> findByKeyword(String keyword, Pageable pageable) {
        return circulationDAO.findByKeyword(keyword,pageable);
    }

    @Override
    public List<CirculationEntity> findByKeyword(String keyword) {
        return circulationDAO.findByKeyword(keyword);
    }

    @Override
    public void save(CirculationEntity circulationEntity) {
        circulationDAO.save(circulationEntity);
    }
}
