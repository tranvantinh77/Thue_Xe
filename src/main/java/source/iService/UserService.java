package source.iService;

import source.entity.UserEntity;

import java.util.List;

public interface UserService {

    List<UserEntity> finAll();

    void save(UserEntity userEntity);

    UserEntity findByUserName(String user_name);

    UserEntity findById(long id);

    UserEntity findByUserNameAndPassword(String user_name, String password);

    List<UserEntity> findAllByActiveFag();

    List<UserEntity> findByKeyword(String keyword);
}
