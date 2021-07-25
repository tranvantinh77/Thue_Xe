package source.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import source.DAO.UserDAO;
import source.entity.UserEntity;
import source.iService.UserService;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserDAO userDAO;


    @Override
    public List<UserEntity> finAll() {
        return userDAO.findAll();
    }

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
    public UserEntity findByUserNameAndPassword(String user_name, String password) {
        return userDAO.findByUserNameAndPassword(user_name,password);
    }

    @Override
    public List<UserEntity> findAllByActiveFag() {
        return userDAO.findByActiveFag();
    }

    @Override
    public List<UserEntity> findByKeyword(String keyword) {
        return userDAO.findByKeyword(keyword);
    }
}
