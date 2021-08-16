package source.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import source.DAO.BannerDAO;
import source.entity.BannerEntity;
import source.iService.BannerService;

import java.util.List;

 @Service
public class BannerServiceImpl implements BannerService {

    @Autowired
    public BannerDAO bannerDAO;

    @Override
    public List<BannerEntity> findByActiveFag(Pageable pageable) {
        return bannerDAO.findByActiveFag(pageable);
    }

    @Override
    public List<BannerEntity> findByActiveFag() {
        return bannerDAO.findByActiveFag();
    }

    @Override
    public List<BannerEntity> findByKeyword(String keyword, Pageable pageable) {
        return bannerDAO.findByKeyword(keyword, pageable);
    }

    @Override
    public List<BannerEntity> findByKeyword(String keyword) {
        return bannerDAO.findByKeyword(keyword);
    }

    @Override
    public void save(BannerEntity bannerEntity) {
        bannerDAO.save(bannerEntity);

    }

    @Override
    public BannerEntity findById(Long id) {
        return bannerDAO.findById1(id);
    }

     @Override
     public List<BannerEntity> findAll() {
         return bannerDAO.findAll();
     }
 }
