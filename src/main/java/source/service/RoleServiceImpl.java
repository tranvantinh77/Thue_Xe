package source.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import source.DAO.RoleDAO;
import source.entity.RoleEntity;
import source.iService.RoleService;

@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleDAO roleDAO;

    @Override
    public RoleEntity findByRoleAddmin() {
        return roleDAO.findByRoleAddmin();
    }
}
