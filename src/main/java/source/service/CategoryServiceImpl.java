package source.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import source.DAO.CategoryDAO;
import source.entity.CategoryEntity;
import source.iService.CategoryService;

import java.util.List;

@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryDAO categoryDAO;

    @Override
    public List<CategoryEntity> findByActiveFag() {
        return categoryDAO.findByActiveFag();
    }
}
