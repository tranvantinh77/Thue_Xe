package source.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import source.DAO.OtoDAO;
import source.entity.OtoEntity;
import source.iService.OtoService;

import java.util.List;

@Service
public class OtoServiceImpl implements OtoService {

    @Autowired
    private OtoDAO otoDAO;

    @Override
    public List<OtoEntity> findByActiveFag(Pageable pageable) {
        return otoDAO.findByActiveFag(pageable);
    }

    @Override
    public List<OtoEntity> findByActiveFag() {
        return otoDAO.findByActiveFag();
    }

    @Override
    public List<OtoEntity> findAll() {
        return otoDAO.findAll();
    }

    @Override
    public List<OtoEntity> findByKeyword(String keyword, Pageable pageable) {
        return otoDAO.findByKeyword(keyword,pageable);
    }

    @Override
    public List<OtoEntity> findByKeyword(String keyword) {
        return otoDAO.findByKeyword(keyword);
    }

    @Override
    public void save(OtoEntity otoEntity) {
        otoDAO.save(otoEntity);
    }

    @Override
    public OtoEntity findById(Long id) {
        return otoDAO.findById1(id);
    }
}
