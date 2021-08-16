package source.iService;

import org.springframework.data.domain.Pageable;
import source.entity.BannerEntity;
import source.entity.CarCompanyEntity;

import java.util.List;

public interface BannerService {
    List<BannerEntity> findByActiveFag(Pageable pageable);

    List<BannerEntity> findByActiveFag();

    List<BannerEntity> findByKeyword(String keyword, Pageable pageable);

    List<BannerEntity> findByKeyword(String keyword);

    void save(BannerEntity bannerEntity);

    BannerEntity findById(Long id);

    List<BannerEntity> findAll();
}
