package source.iService;

import org.springframework.data.domain.Pageable;
import source.entity.UserEntity;

import java.util.List;

public interface UserService {

    void save(UserEntity userEntity);

    UserEntity findByUserName(String user_name);

    UserEntity findById(long id);

    UserEntity findByUserInfoId(long user_info_id);

    UserEntity findByUserNameAndPassword(String user_name, String password);

    List<UserEntity> findByActiveFag(Pageable pageable);

    List<UserEntity> findByActiveFag();

    List<UserEntity> findByKeyword(String keyword, Pageable pageable);

    List<UserEntity> findByKeyword(String keyword);

    List<UserEntity> findByUser(int user_info);
}
