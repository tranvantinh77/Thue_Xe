package source.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import source.DAO.UserDAO;
import source.entity.UserEntity;
import source.entity.UserInfoEntity;
import source.iService.UserService;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserDAO userDAO;

    @Override
    public void save(UserEntity userEntity) {
        userDAO.save(userEntity);
    }

    @Override
    public UserEntity findByUserName(String user_name) {
        return userDAO.findByUserName(user_name);
    }

    @Override
    public UserEntity findById(long id) {
        return userDAO.findById1(id);
    }

    @Override
    public UserEntity findByUserInfoId(long user_info_id) {
        return userDAO.findByUserInfoId(user_info_id);
    }

    @Override
    public UserEntity findByUserNameAndPassword(String user_name, String password) {
        return userDAO.findByUserNameAndPassword(user_name,password);
    }

    @Override
    public List<UserEntity> findByActiveFag(Pageable pageable) {
        return userDAO.findByActiveFag(pageable);
    }

    @Override
    public List<UserEntity> findByActiveFag() {
        return userDAO.findByActiveFag();
    }

    @Override
    public List<UserEntity> findByKeyword(String keyword, Pageable pageable) {
        return userDAO.findByKeyword(keyword,pageable);
    }

    @Override
    public List<UserEntity> findByKeyword(String keyword) {
        return userDAO.findByKeyword(keyword);
    }

    @Override
    public List<UserEntity> findByUser(int user_info) {
        return userDAO.findByUser(user_info);
    }


}
