package source.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import source.DAO.UserInfoDAO;
import source.entity.UserInfoEntity;
import source.iService.UserInfoService;

import java.util.List;
import java.util.Optional;

@Service
public class UserInfoServiceImpl implements UserInfoService {

    @Autowired
    private UserInfoDAO userInfoDAO;

    @Override
    public List<UserInfoEntity> findByActiveFag(Pageable pageable) {
        return userInfoDAO.findByActiveFag(pageable);
    }

    @Override
    public List<UserInfoEntity> findByActiveFag() {
        return userInfoDAO.findByActiveFag();
    }

    @Override
    public List<UserInfoEntity> findByKeyword(String keyword, Pageable pageable) {
        return userInfoDAO.findByKeyword(keyword,pageable);
    }

    @Override
    public List<UserInfoEntity> findByKeyword(String keyword) {
        return userInfoDAO.findByKeyword(keyword);
    }

    @Override
    public void save(UserInfoEntity userInfoEntity) {
        userInfoDAO.save(userInfoEntity);
    }

    @Override
    public UserInfoEntity findById(Long id) {
        Optional<UserInfoEntity> optional = userInfoDAO.findById(id);
        UserInfoEntity userInfoEntity = null;
        if (optional.isPresent()) {
            userInfoEntity = optional.get();
        }else {
            throw new RuntimeException("UserInfo not found id:"+id);
        }
        return userInfoEntity;
    }

    @Override
    public UserInfoEntity findByEmail(String email) {
        return userInfoDAO.findByEmail(email);
    }
}
