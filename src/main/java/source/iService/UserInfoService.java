package source.iService;

import org.springframework.data.domain.Pageable;
import source.entity.OtoEntity;
import source.entity.UserInfoEntity;

import java.util.List;

public interface UserInfoService {
    List<UserInfoEntity> findByActiveFag(Pageable pageable);

    List<UserInfoEntity> findByActiveFag();

    List<UserInfoEntity> findByKeyword(String keyword, Pageable pageable);

    List<UserInfoEntity> findByKeyword(String keyword);

    void save(UserInfoEntity userInfoEntity);

    UserInfoEntity findById(Long id);

    UserInfoEntity findByEmail(String email);

    List<UserInfoEntity> findAll();
}
